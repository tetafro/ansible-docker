.PHONY: lint
lint: yamllint ansible-lint

.PHONY: yamllint
yamllint:
	@echo "----------------"
	@echo "Running yamllint"
	@echo "----------------"
	@yamllint --format colored --strict ./*/*.yml && echo OK

.PHONY: ansible-lint
ansible-lint:
	@echo "--------------------"
	@echo "Running ansible-lint"
	@echo "--------------------"
	@ansible-lint ./*/*.yml && echo OK
