# 🚀 InternQuest — AI Research Internship Portal

> College Project — ASP.NET Web Forms | Parul University, IMCA

## What It Does
A web portal where students apply for AI Research Internships. The form validates 
all inputs in real-time and automatically determines eligibility based on CGPA 
(minimum 7.0 required) using server-side logic in C#.

## Tech Stack
- ASP.NET Web Forms (.NET Framework 4.7.2)
- C# (Code-behind logic)
- HTML, CSS, JavaScript
- Bootstrap (UI styling)
- IIS Express (local server)

## Standard Controls Used
- TextBox — Name, Email, Confirm Email, CGPA
- DropDownList — Field of Interest
- CheckBoxList — Skills selection
- ListBox — Research Areas (multi-select)
- FileUpload — Resume (PDF only)
- Button — Submit, Reset
- Panel + Label — Eligibility result display

## Validation Controls Used
| Validator | Purpose |
|-----------|---------|
| RequiredFieldValidator | Ensures Name, Email, CGPA are filled |
| RangeValidator | CGPA must be between 0.0 and 10.0 |
| CompareValidator | Confirms Email and Confirm Email match |
| RegularExpressionValidator | Validates email format |
| CustomValidator | Ensures uploaded resume is a PDF file |
| ValidationSummary | Displays all errors in one place |

## How Eligibility Works
On submit, if all validators pass, the server checks:
- CGPA >= 7.0 → ✅ Eligible
- CGPA < 7.0 → ❌ Not Eligible

## Author
Gillbert Joshua — Parul University, IMCA (2025–2030)  
GitHub: [gillbert-joshua77](https://github.com/gillbert-joshua77)
