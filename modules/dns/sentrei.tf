resource "google_dns_record_set" "sentrei_com_A" {
  name         = google_dns_managed_zone.sentrei.dns_name
  managed_zone = google_dns_managed_zone.sentrei.name
  type         = "A"
  ttl          = 300

  rrdatas = ["151.101.1.195", "151.101.65.195"]
}

resource "google_dns_record_set" "sentrei_com_TXT" {
  name         = google_dns_managed_zone.sentrei.dns_name
  managed_zone = google_dns_managed_zone.sentrei.name
  type         = "TXT"
  ttl          = 300

  rrdatas = ["google-site-verification=_SIRccUJfM_2d2h_pFobDrrPUlm-iNAbqHDYH3qPBxQ"]
}
