# ChloKat FrikShun

Public-facing searchable Chloe Katastrophe archive, latest-news hub, and superfan discovery surface for `chlokat.frikshun.com`.

This app should be the fan experience: search artifacts, browse public fragments, find Chloe news, explore releases, and move deeper into the reconstruction.

The private content transformation and publishing engine lives separately in `../creator_frikshun`.

## Local Database

Both apps connect to the shared Postgres container defined in:

`../frikshun_dev_stack/docker-compose.yml`

Start it with:

```sh
cd ../frikshun_dev_stack
docker compose up -d
```

Then configure this app from `.env.example` or export the same variables in your shell.

Default development database:

`frikshun_content_development`

## Boundary

Rails owns the public archive and should be the first owner of durable schema migrations for artifacts, releases, public posts, searchable content, and fan-safe archive data.

The creator tool may write to the same database, but it should treat the shared schema as a contract and avoid uncoordinated table changes.
