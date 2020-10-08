job "nomad-backup" {
    datacenters = [ "shared-services"]
    type = "batch"
    periodic {
        cron = "0 */4 * * * "
    }
    group "nomad-backup" {
        task "nomad-backup" {

            env {
                NOMAD_URL = "http://nomad.service.consul:4646/"
                S3_BUCKET_NAME = "nomad-backup"
                S3_FOLDER = ""
                AWS_ACCESS_KEY_ID = ""
                AWS_SECRET_ACCESS_KEY = ""
                ENDPOINT_URL = "http://hb.bizmrg.com"
            }

            driver = "docker"
            config {
                image = "chest/nomad-backup"
                args = [
                    "python",
                    "backup_jobs.py"
                ]
            }
        }
    }
}
