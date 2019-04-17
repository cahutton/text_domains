# text_domains
A PostgreSQL extension defining custom text domains

## Getting Started

### Prerequisites

This extension was developed using PostgreSQL 10, but should work for all recent versions.

### Installation

Copy `text_domains.control` and `text_domains--1.0.sql` into the `SHAREDIR/extension` directory. Alternatively, run the `Makefile`:

```
make install
```

Then, use `CREATE EXTENSION` to install:

```
CREATE EXTENSION text_domains;
```

## License

Licensed under the MIT License (see [LICENSE.md](LICENSE.md)).
