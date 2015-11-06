# XMPP stats (for prosody)

Collects stats from a [prosody](http://prosody.im) XMPP server with installed [mod_http_user_count module](http://modules.prosody.im/mod_http_user_count.html).

## Installation

```
git clone git@github.com:benzimmer/xmpp_stats.git
cd xmpp_stats
bundle install
```

## Usage

```
$ bin/xmpp_stats [server_address] [output_format]

# Examples:
$ bin/xmpp_stats http://einfachjabber.de:5280
Users online: 42

$ bin/xmpp_stats http://einfachjabber.de:5280 log
2015-11-06 21:41:49 +0100;42

# Write result to log file:
$ bin/xmpp_stats http://einfachjabber.de:5280 log >> xmpp_stats.log
```
