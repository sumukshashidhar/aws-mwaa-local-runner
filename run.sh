# merge the custom requirements.txt with the base image's requirements.txt
cat ./requirements/custom.txt >> ./requirements/requirements.txt

# mwaa
./mwaa-local-env build-image # to build the image
./mwaa-local-env test-requirements # to test the requirements

# finally, run the image
./mwaa-local-env start