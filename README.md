# SauceDemo Test Automation Suite

UI test automation suite for [SauceDemo](https://www.saucedemo.com/) using Robot Framework and SeleniumLibrary, structured around the Page Object Model (POM) pattern.

---

Project Structure

```text
saucedemo-automation/
├── resources/
│   ├── common.resource                 # Browser setup & global settings
│   └── page_objects/
│       ├── login_page.resource         # Login locators and keywords
│       ├── inventory_page.resource     # Inventory and cart keywords
│       └── checkout_page.resource      # Checkout form and completion keywords
├── tests/
│   ├── login_test.robot                # Authentication tests
│   ├── inventory_test.robot            # Cart badge tests
│   └── checkout_test.robot             # End-to-end checkout test
├── results/                            # Test logs and HTML reports
├── .gitignore
└── README.md
```
