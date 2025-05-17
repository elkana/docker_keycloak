


# To Tests on Local Machine
```sh
$ docker build -t mykeycloak .
$ docker run -p 7777:8080 mykeycloak
```

# To deploy on Render.com

must define following environment variables:
- KC_BOOTSTRAP_ADMIN_PASSWORD = <define>
- KC_HOSTNAME = https://<hostname>  misal https://docker-keycloak.onrender.com
- PORT = 8080


