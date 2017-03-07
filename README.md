# hubot-country [![Build Status](https://img.shields.io/travis/hashashin/hubot-country.svg?maxAge=2592000&style=flat-square)](https://travis-ci.org/hashashin/hubot-country) [![npm](https://img.shields.io/npm/v/hubot-country.svg?maxAge=2592000&style=flat-square)](https://www.npmjs.com/package/hubot-country)

Returns country data, ISO info and states/provinces within them. Using countryjs.

See [`src/country.coffee`](src/country.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-country --save`

Then add **hubot-country** to your `external-scripts.json`:

```json
["hubot-country"]
```

## Sample Interaction

```
user1>> hubot hello
hubot>> hello!
```

```
user1>> hubot orly
hubot>> yarly
```
