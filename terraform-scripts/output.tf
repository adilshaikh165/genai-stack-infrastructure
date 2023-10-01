output "vm_ip" {
  description = "The IP address of the deployed VM"
  value       = google_compute_instance.terraform-vm.network_interface[0].access_config[0].nat_ip
}

output "vm_instance_id" {
  description = "The instance ID of the deployed VM"
  value = google_compute_instance.terraform-vm.id
}
