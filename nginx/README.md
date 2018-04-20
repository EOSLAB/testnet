# Configure SSL via Let's Encrypt

## Certbot

Install Certbot
```
sudo add-apt-repository ppa:certbot/certbot
```

Update
```
sudo apt-get update
```

Install Certbot's nginx package
```
sudo apt-get install python-certbot-nginx
```

## Nginx Configuration

Setup Nginx with the [configuration here](https://github.com/EOSoCal/testnet/blob/master/nginx/default.confn) (make sure to edit it where necessary)

## SSL Certificate

Obtain SSL Cert
```
sudo certbot --nginx -d example.com -d www.example.com
```

Check auto-renewal
```
sudo certbot renew --dry-run
```

If there are firewall issues, check UFW settings
```
sudo ufw status
```

Confirm that HTTPS Traffic is allowed with Nginx Full
```
Output
Status: active

To                         Action      From
--                         ------      ----
OpenSSH                    ALLOW       Anywhere
Nginx Full                 ALLOW       Anywhere
OpenSSH (v6)               ALLOW       Anywhere (v6)
Nginx Full (v6)            ALLOW       Anywhere (v6)
```

If Nginx Full is missing, add it via
```
sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'
```