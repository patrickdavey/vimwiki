Date: 31/12/2022
Symptom: SSL Cert expired
Cause: Didn't renew certificate
How found: Embarrassingly, an email to support told us it had expired
Fix: Issued a new certificate and installed it on server. Also setup monitoring on all properties to ensure that
ssl (TLS) certificate expiry is monitored. Datadog has a page -> https://docs.datadoghq.com/integrations/tls/?tab=host which can help. It's under http_days_left on our instance. Looks like these docs might be out of date.
Time taken to resolve bug: 10 minutes.
Lessons: Add monitoring, or, better still have this properly setup so that no manual intervention is required. Client doesn't want to use letsencrypt so this is a little tricker.

