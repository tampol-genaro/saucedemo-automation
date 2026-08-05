# SauceDemo Test Automation Suite

UI test automation suite for [SauceDemo](https://www.saucedemo.com/) using Robot Framework and SeleniumLibrary, structured around the Page Object Model (POM) pattern.

---

Project Structure

```text
saucedemo-automation/
├── resources/
│   ├── common.resource              # Browser setup & global settings
│   └── page_objects/
│       ├── login_page.resource      # Login locators and keywords
│       ├── inventory_page.resource  # Inventory and cart keywords
│       └── checkout_page.resource   # Checkout form and completion keywords
├── tests/
│   ├── login_test.robot             # Valid login + invalid password error handling
│   └── checkout_test.robot          # Full purchase flow + missing field validation
├── results/                         # Test logs and HTML reports
├── .gitignore
└── README.md
```
