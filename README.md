# Hemul's esphome device configs

Secrets are encrypted, use `esphome.sh` which automatically decrypts, runs `esphome` and deletes decrypted secrets

```
./esphome.sh run config/ir-blaster-esphome-configuration.yaml
```

Or manually decrypt secrets into the `config` dir prior and run `esphome` manually:

```
sops -d config/secrets.sops.yaml > config/secrets.yaml
```
