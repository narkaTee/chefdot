# How to use multiple chef servers?
Tested with:
* Berkshelf
* Kitchen
* knife

## Directory Structure

```
~/.chef
|- knife.rb
|- default
|  |- knife.rb
|  |- user.pem
|  |- org-validator.pem
|- server1
   |- knife.rb
   |- user.pem
   |- org-validator.pem
```

## How to use
Use `CHEF_ENV` to switch bewteen servers.

It's also possible to override the path of the knife.rb to be included with `CHEF_ENV_KNIFE`.
