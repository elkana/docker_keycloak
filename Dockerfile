# Untested 20250517
# Use the official Keycloak image as a base image
FROM quay.io/keycloak/keycloak:latest

# Set environment variables for Keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_DB=postgres
ENV KC_DB_URL_HOST=postgres
ENV KC_DB_URL_PORT=5432
ENV KC_DB_SCHEMA=public
ENV KC_DB_USERNAME=keycloak
ENV KC_DB_PASSWORD=password
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Expose the default Keycloak port
EXPOSE 8080

# Start Keycloak with the development profile
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]

