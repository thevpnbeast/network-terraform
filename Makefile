backend_file := $(shell find . -type f -iname *.tfbackend)

# assumes that we have already a profile named thevpnbeast-root in AWS CLI config
export AWS_PROFILE := thevpnbeast-root

init: $(backend_file)
	terraform init -input=false -backend-config=$(backend_file)

.PHONY: plan
plan: init
	terraform plan -input=false

.PHONY: apply
apply: plan
	terraform apply -input=false -auto-approve

.PHONY: destroy
destroy: plan
	terraform destroy -auto-approve

.PHONY: validate
validate:
	terraform validate

.PHONY: fmt
fmt:
	terraform fmt -check -diff -recursive .

.PHONY: tflint-version
tflint-version:
	tflint --version

.PHONY: tflint-init
tflint-init:
	tflint --init

.PHONY: tflint-run
tflint-run:
	tflint -f compact
