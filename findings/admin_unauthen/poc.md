Title: Authorization bypass — admin page accessible without privilege
Severity: High
Summary:
  The admin dashboard appears accessible (or returns non-blocking response) when visited while unauthenticated or as a non-admin user.

Safe steps to reproduce:
  1. While logged out, visit /admin/dashboard. Save screenshot: screenshots/admin_unauth_anon.png and proxy saved request/response: evidence/admin_unauth_anon.req / evidence/admin_unauth_anon.resp.
  2. Log in as a regular user and attempt the same URL. Save evidence: screenshots/admin_unauth_user.png and evidence/admin_unauth_user.req / resp.

Evidence:
  - screenshots/admin_unauth_anon.png
  - screenshots/admin_unauth_user.png
  - evidence/admin_unauth_anon.req
  - evidence/admin_unauth_user.req

Impact:
  Unauthorized access to admin functions can lead to privilege escalation, data disclosure, or application configuration changes.

Remediation:
  Enforce server-side RBAC for all admin endpoints, validate roles on each request, and apply deny-by-default policies. Add logging and alerting for unauthorized access attempts.
