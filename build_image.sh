s2i build . registry.access.redhat.com/rhscl/python-36-rhel7 django-s2i-image
docker run --rm --name django-s2i-container -p 8080:8080 django-s2i-image
