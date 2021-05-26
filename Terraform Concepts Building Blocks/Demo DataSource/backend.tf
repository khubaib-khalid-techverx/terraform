terraform {
    backend "s3" {
        bucket = "tf-state-1122"
        region = "ap-south-1"
    }
}