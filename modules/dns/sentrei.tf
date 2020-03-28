resource "google_dns_record_set" "sentrei_com_TXT" {
  name         = google_dns_managed_zone.sentrei.dns_name
  managed_zone = google_dns_managed_zone.sentrei.name
  type         = "TXT"
  ttl          = 300

  rrdatas = ["google-site-verification=_SIRccUJfM_2d2h_pFobDrrPUlm-iNAbqHDYH3qPBxQ"]
}
