# Laravel Homestead Magento v2.4

Copy the file `magento24.sh` in your `Homestead/scripts/site-types` folder.

And in your Homestead.yml:

```yaml
  - map: project.dev
    to: /home/vagrant/code/project
    type: magento24
```
