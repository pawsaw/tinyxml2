TinyXML-2
=========


```sh
docker run --rm -v $(pwd):/workspace -v /tmp/build_output:/tmp/build_output tinyxml2-bazel --output_user_root=/tmp/build_output build //:all --config=linux --config=gcc
```