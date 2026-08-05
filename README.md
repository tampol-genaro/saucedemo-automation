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
---

## Setup

1. Clone the repository: `git clone https://github.com/tampol-genaro/saucedemo-automation.git && cd saucedemo-automation`
2. Create and activate a virtual environment: `python3 -m venv venv && source venv/bin/activate`
3. Install dependencies: `pip install robotframework robotframework-seleniumlibrary`

## Running the Tests

Run all tests: `robot tests/`
Run a specific file: `robot tests/login_test.robot` or `robot tests/checkout_test.robot`

Test results (log, report, output) are generated automatically after each run.

## Test Coverage

- Login: valid credentials, invalid password (error handling)
- Checkout: full purchase flow, missing required field (form validation)
