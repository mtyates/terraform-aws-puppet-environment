docker run -it -e "AWS_ACCESS_KEY_ID=AKIAJWEOPNHBF4C5GBKQ" -e "AWS_SECRET_ACCESS_KEY=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" -v $(pwd):/app/ -w /app/ hashicorp/terraform:light validate --var-file=tommy.varfile