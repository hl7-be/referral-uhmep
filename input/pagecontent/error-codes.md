The eReferral **error-code catalogue** is maintained as an Excel workbook published with this Implementation Guide. Error rows are not duplicated on this page or on individual operation pages because multiple copies could become inconsistent.

[Download the eReferral API Error Codes workbook (Excel)](UHMEP_API_ErrorCodes_20260723.xlsx)

### Workbook Contents

| Sheet | Purpose |
|----|----|
| `README_PUBLIC` | Explains the workbook structure, intended audiences, filters, and columns. |
| `ErrorCodes` | Complete list of every error code and its details. |
| `Business Operations` | Pivoted view by business process. Recommended when starting from an operation in this IG. |
| `API endpoint(s)` | Pivoted view by HTTP method and endpoint. Recommended for technical integration and API error handling. |
| `Version History` | Workbook version, status, date, authors, and modification history. |

### Finding Errors for an Operation

1. Open the `Business Operations` sheet when starting from a workflow or operation name.
2. Open the `API endpoint(s)` sheet when starting from an HTTP method and path.
3. Use the filter in the first column to select the relevant operation or endpoint.
4. Review the matching eReferral code, original API message, FHIR issue code, HTTP status, business description, and available frontend messages.
5. Use the `ErrorCodes` sheet when a complete master view is needed.

### OperationOutcome

eReferral returns errors as FHIR `OperationOutcome` resources. See [API Integration – Error Responses](api-integration.html#error-responses) for the response structure. Use the workbook to determine which eReferral codes can be returned for a specific business  operation or API endpoint.
