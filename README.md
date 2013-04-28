# Locale configuration cookbook for Debian

Useful for generating custom locales during Chef run.

## Configuration

Configuration consists of two parts. Both available and default locales should
be specified. Here is an example:

    node['locale'] = {
      'available' => [
        'en_GB.UTF-8 UTF-8',
        'en_US.UTF-8 UTF-8',
        'pl_PL.UTF-8 UTF-8'
      ],
      'default' => 'en_GB.UTF-8'
    }

