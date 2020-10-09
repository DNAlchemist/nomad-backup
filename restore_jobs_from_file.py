
from nomad_job_manager import restore
import os
import sys

restore(os.environ.get('NOMAD_URL'), sys.argv[1])
