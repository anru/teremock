.PHONY: ts
ts:
	rm -r dist || true
	cp -r src dist
	yarn pnpify tsc


.PHONY: prepare
prepare: ts
	yarn prettier --write src/**/*.ts
	yarn jest
	yarn jest --config __tests__/jest.playwright.config.js
