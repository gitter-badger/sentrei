resource "google_dns_record_set" "beta_sentrei_com_A" {
  name         = "beta.${google_dns_managed_zone.sentrei.dns_name}"
  managed_zone = google_dns_managed_zone.sentrei.name
  type         = "A"
  ttl          = 300

  rrdatas = ["151.101.1.195", "151.101.65.195"]
}
