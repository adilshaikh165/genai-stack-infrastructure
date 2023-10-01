variable "project_id" {
  type = string
  description = "GCP project ID"
  default = ""
}

variable "region" {
  type = string  
  description = "GCP region"
  default = "us-central1"
}

variable "zone" {
  type = string  
  description = "GCP zone"
  default = "us-central1-a"
}

variable "machine_type" {
  type = string    
  description = "GCP VM type"
  default = "n1-standard-4"
}

variable "vm_name" {
  type = string  
  description = "GCP VM name"
  default = "vm-from-terraform"
}

variable "google_credentials_path" {
  description = "Path to the Google Cloud credentials JSON file."
  type        = string
  default     = "/path/to/your/google-credentials.json"
}