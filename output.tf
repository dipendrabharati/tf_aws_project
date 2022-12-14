output "instance_id" {
    description = "Instance id of the ec2 instance"
    # value = aws_instance.tf_gen_server3
    value = [for s in aws_instance.tf_gen_server3: s.tags]
}

output "s3_bucket_name"{
    description = " S3 bucket name"
    value = [for s in aws_s3_bucket.my_s3_bucket: s.bucket]
}