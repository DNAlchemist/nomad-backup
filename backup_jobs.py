
from nomad_job_manager import backup
import os

backup(
    os.environ.get('NOMAD_URL'),
    s3_backup=True,
    s3_bucket_name=os.environ.get('S3_BUCKET_NAME'),
    aws_access_key_id=os.environ.get('AWS_ACCESS_KEY_ID'),
    aws_secret_access_key=os.environ.get('AWS_SECRET_ACCESS_KEY'),
    endpoint_url=os.environ.get('ENDPOINT_URL'),
    s3_folder=os.environ.get('S3_FOLDER'),
)
