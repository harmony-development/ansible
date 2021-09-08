# Using This

## Update Everything

```bash
ansible-playbook site.yml
```

## Only Update Legato

```bash
ansible-playbook legato.yml
```

## Only Update Scherzo

```bash
ansible-playbook scherzo.yml
```

## Using without root

```bash
ansible-playbook file.yml -Kb --become-user root -u username
```