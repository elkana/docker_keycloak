# Untested 20250517
# Use the official Keycloak image as a base image
FROM quay.io/keycloak/keycloak:latest

# Set environment variables for Keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
# ENV KC_DB=postgres
# ENV KC_DB_URL_HOST=postgres
# ENV KC_DB_URL_PORT=5432
# ENV KC_DB_SCHEMA=public
# ENV KC_DB_USERNAME=keycloak
# ENV KC_DB_PASSWORD=password
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin

# Expose the default Keycloak port
EXPOSE 8080

# Start Keycloak with the development profile
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-host=0.0.0.0"]

#Dockerfile contents START

# FROM quay.io/keycloak/keycloak:latest
 
# # Copy the contents from the "builder" stage to the current stage 

 
# COPY keycloak.crt /opt/keycloak/conf/keycloak.crt

# COPY keycloak.pem /opt/keycloak/conf/keycloak.pem

# COPY server.keystore /opt/keycloak/conf/server.keystore

 
# # Configure a database vendor

# ENV KC_DB=postgres

# ENV KC_DB_USERNAME=postgres

# ENV KC_DB_PASSWORD=password

# ENV KC_DB_URL=jdbc:postgresql://kc_pg_cont:5432/postgres

# ENV KEYCLOAK_ADMIN=admin

# ENV KEYCLOAK_ADMIN_PASSWORD=admin
 
# # Set the entry point for the container to "/opt/keycloak/bin/kc.sh"
# # 10.xx.yy.zz is IP of machine which is running the container
# # ENTRYPOINT should not have new lines in the command 
# # Just to maintain the readability I have inserted the new line in below
# # You will face the error with newlines 
# # : failed to solve: dockerfile parse error on line 32: unknown instruction: "--https-port=9443",
# ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start",\
# "--https-port=9443",\
# "--http-port=8095",\
# "--https-certificate-file=/opt/keycloak/conf/keycloak.crt",\
# "--https-certificate-key-file=/opt/keycloak/conf/keycloak.pem",\
# "--https-trust-store-file=/opt/keycloak/conf/server.keystore",\
# "--https-trust-store-password=12345678",\
# "--hostname=10.xx.yy.zz",\
# "--hostname-port=9443"]

# #Dockerfile contents END
