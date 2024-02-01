docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
    -i https://raw.githubusercontent.com/openai/openai-openapi/master/openapi.yaml \
    -g dart \
    -o local \
    --skip-validate-spec