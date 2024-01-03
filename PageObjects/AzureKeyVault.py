from azure.identity import ClientSecretCredential
from azure.keyvault.secrets import SecretClient
import yaml

def read_secret_from_keyvault(vault_url, client_id, client_secret, secret_name):
    # Create a ClientSecretCredential using App Registration credentials
    credential = ClientSecretCredential(
        tenant_id="ask the owner",
        client_id=client_id,
        client_secret=client_secret
    )

    # Create a SecretClient
    secret_client = SecretClient(vault_url=vault_url, credential=credential)

    try:
        # Get the secret by name
        secret = secret_client.get_secret(secret_name)
        return secret.value

    except Exception as e:
        print(f"Error reading secret '{secret_name}' from Azure Key Vault: {str(e)}")
        return None

if __name__ == "__main__":
    # Replace these values with your Azure Key Vault URL, App Registration client ID, client secret, and secret name
    keyvault_url = "https://rfusercredential.vault.azure.net/"
    app_client_id = "ask the owner"
    app_client_secret = "ask the owner"
    secret_name_username = "ecommerce-username"
    secret_name_password = "ecommerce-password"

    secret_value_username = read_secret_from_keyvault(keyvault_url, app_client_id, app_client_secret, secret_name_username)

   # if secret_value_username is not None:
    #    print(f"The value of secret '{secret_name_username}' is: {secret_value_username}")

    secret_value_password = read_secret_from_keyvault(keyvault_url, app_client_id, app_client_secret, secret_name_password)

  #  if secret_value_password is not None:
   #     print(f"The value of secret '{secret_name_password}' is: {secret_value_password}")

# Replace these values with your new credentials
new_credentials = {
    'username': secret_value_username,
    'password': secret_value_password
}

# Load existing YAML content
existing_yaml_file_path = './config/defaults.yaml'
with open(existing_yaml_file_path, 'r') as yaml_file:
    existing_data = yaml.safe_load(yaml_file)

# Update existing credentials with new credentials
existing_data['username'] = new_credentials['username']
existing_data['password'] = new_credentials['password']

# Save the updated content back to the YAML file
with open(existing_yaml_file_path, 'w') as yaml_file:
    yaml.dump(existing_data, yaml_file, default_flow_style=False)

#print(f"Credentials updated and saved to {existing_yaml_file_path}")
