resource "aws_s3_bucket" "b" {
  bucket = "autotag-buck1"

  tags = {
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "s3singleobject"{
  bucket = aws_s3_bucket.b.bucket
  key    = "tag.json"
  source = "C:\\Users\\Priyanka\\Desktop\\tag.json"

}
