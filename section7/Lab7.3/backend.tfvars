# Please use terraform v12.29 to start with for all labs, I will use terraform v13 and v14 from lab 7.5 onwards



resource_group_name  = "SkyeLab-rg"
storage_account_name = "skyeremotesa01"
container_name       = "tfstate"
key                  = "workspace.tfstate"
tenant_id = "641ce32b-a716-4d3c-b4ce-6b915e000714"

