# <%= name %> - <%= summary %>

<%= description %>

## Requirements

...

## Installation

You will have to build this gem yourself to install it as it is not yet on
Rubygems.Org. For this there is a rake task which makes this a one-liner:

```bash
rake install:local
```

## Transport parameters

| Option               | Explanation       | Default          |
| -------------------- | ----------------- | ---------------- |
| `host`               | IP or DNS name    | (required)       |

## Example use

```ruby
require "<%= name %>"
train  = Train.create("<%= name.split('-').last %>", {
            ...,
            logger:   Logger.new($stdout, level: :info)
         })
conn   = train.connection
result = conn.run_command(...)
conn.close
```
