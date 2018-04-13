# Dockerized Dante SOCKS Server with PAM Authentication

Dockerized Lozy's danted with pam authentication

## Usage

```shell
docker run -d -p 27637:1080 -v /etc/sockd.passwd:/etc/danted/sockd.passwd --name dante davojan/dante-pam
```

``sockd.passwd`` can be managed via ``htpasswd`` command.

## Credits

https://github.com/Lozy/danted
