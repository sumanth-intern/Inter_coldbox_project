Title: Reflected input 
Severity: Medium
Summary:
  Input supplied to the `q` parameter of the search page is reflected verbatim in the response HTML.

Safe steps to reproduce:
  1. Navigate to /search in browser through ZAP/Burp.
  2. Enter a harmless marker: XSS_TEST_<sumanth> into the search box and submit.
  3. Observe the marker in the results page DOM. Save screenshot: screenshots/xss_reflection_search.png.
  4. Save the request/response from the proxy: evidence/xss_search.req / evidence/xss_search.resp.

Evidence:
  - screenshots/xss_reflection_search.png
  - evidence/xss_search.req
  - evidence/xss_search.resp

Impact:
  If output is not properly encoded, an attacker could craft input that executes JavaScript in another user's browser (reflected XSS), leading to session theft or UI manipulation.

Remediation:
  Apply context-aware output encoding on all reflected data, validate inputs server-side, and implement a Content-Security-Policy to reduce impact.
