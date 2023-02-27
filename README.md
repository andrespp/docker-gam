docker-gam
==========

[![Docker Image CI](https://github.com/andrespp/docker-gam/actions/workflows/docker-image.yml/badge.svg)](https://github.com/andrespp/docker-gam/actions/workflows/docker-image.yml)

Docker image for [GAM](https://github.com/GAM-team/GAM), a **command line tool
for Google Workspace admins** to manage domain and user settings quickly and
easily.

# Build Image

```
.
├── data
│   └── creds
│       ├── client_secrets.json
│       ├── oauth2service.json
│       └── oauth2.txt
├── Dockerfile
└── README.md
```

```bash
$ docker image build -t gam .
```

# Run Image

```bash
$ docker run -v $(pwd)/data:/mnt/data --rm -it gam
```

# GAM Commands

## Version

```bash
gam version
```

## User info

```bash
gam info user
```

## Domain info

```bash
gam info domain
```

## Retrieve all accounts

```bash
gam print users full > /mnt/data/accounts.csv
```

## Create new accounts

`create_accounts.csv`

```
email,nome,sobrenome,senha
aluno1@domain.com,Firstname,Lastname 1,password@2023
aluno2@domain.com,Firstname,Lastname 2,password@2023
aluno3@domain.com,Firstname,Lastname 3,password@2023
aluno4@domain.com,Firstname,Lastname 4,password@2023
```

```
gam csv create_accounts.csv gam create user ~email firstname ~nome lastname ~sobrenome password ~senha
```

## Remove Accounts

```
gam csv create_accounts.csv gam delete user ~email
```

# References

* [GAM Github](https://github.com/GAM-team/GAM)
* [GAMADV-XTD3 Github](https://github.com/taers232c/GAMADV-XTD3)
* [GAM Cheat Sheet](https://sites.google.com/jis.edu.bn/gam-commands/people/users#h.p_HzJY2UAsIZsi)
