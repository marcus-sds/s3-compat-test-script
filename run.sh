export S3TEST_CONF=site.conf
#./virtualenv/bin/nosetests -a '!fails_on_aws' &>result.log
./virtualenv/bin/nosetests s3tests.functional.test_s3 -v --collect-only -a '!fails_on_aws' &>result_s3_target.log
./virtualenv/bin/nosetests s3tests.functional.test_s3 -a '!fails_on_aws' &>result_s3.log
# ./virtualenv/bin/nosetests s3tests.functional.test_s3_website -v --collect-only -a '!fails_on_aws'
