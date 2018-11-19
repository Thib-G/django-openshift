export image_name=django-s2i-image
# export base_image=centos/python-36-centos7
export base_image=registry.access.redhat.com/rhscl/python-36-rhel7
s2i build . $base_image $image_name
docker run --rm -ti --name django-s2i-container -p 8080:8080 $image_name
docker rmi $image_name
# docker rmi $base_image
docker image prune --force
