# Dockerized Dante SOCKS Server with PAM Authentication

Dockerized Lozy's danted with pam authentication

## Usage

```shell
touch /etc/sockd.passwd

docker run -d --name dante --restart always \
  -p 1080:1080 -p 1080:1080/udp \
  -v /etc/sockd.passwd:/etc/danted/sockd.passwd \
  davojan/dante-pam
```

``sockd.passwd`` can be managed via ``htpasswd`` command:

```shell
htpasswd -bd /etc/sockd.passwd user password
```

Unfortunately this PAM config supports only CRYPT encryption of the password, so effectively only 8 characters will be used.

Container restart is not necessary after modifying the passwd-file.


## Credits

https://github.com/Lozy/danted
