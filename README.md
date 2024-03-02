# Typst Memo Format for BES

This is a memo format based on the [BES memo template[(https://employees.portland.gov/bes/resource-library/bes-forms-and-templates).

## Installing

```bash
quarto use template jasonelaw/bes-typst-memo
```

This will install the extension and create an example qmd file that you can use as a starting place for your document.

## Using

Specify the sender, receipient, subject, etc. using YAML options, then write the body of the letter. For example, the following qmd source:

```yaml
---
re: "Typst memo template"
sender: "Jason Law"
recipient: "Whomever it may concern"
date: today
date-format: long
format:
  memo-typst: default
---

This is a memo.

...
```
