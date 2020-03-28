resource "google_dns_record_set" "a" {
  name         = google_dns_managed_zone.sentrei.dns_name
  managed_zone = google_dns_managed_zone.sentrei.name
  type         = "A"
  ttl          = 300

  rrdatas = ["8.8.8.8"]
}
