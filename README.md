# PHP FPM MySQL

Docker template for building PHP images with MySQL extesnion enabled. It has all necessary extensions for WordPress.

## Default build

To build the default image using `php:7.4.13-fpm-alpine`.

```bash
  docker build .
```

## Custom build

To build a custom image using a different PHP image you may provide the `PHP_IMAGE` argument.

```bash
  docker build --build-arg PHP_IMAGE="php:fpm-alpine" .
```
