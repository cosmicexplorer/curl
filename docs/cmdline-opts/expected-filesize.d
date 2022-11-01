c: Copyright (C) 1998 - 2022, Daniel Stenberg, <daniel@haxx.se>, et al.
SPDX-License-Identifier: curl
Long: expected-filesize
Arg: <bytes>
Help: Expected download size when Content-Length is absent
Protocols: FTP HTTP MQTT
See-also: max-filesize ignore-content-length
Category: connection
Example: --expected-filesize 100K $URL
Added: 7.86.1
Multi: single
---
Specify the expected size (in bytes) of a file to download. If the response
provides no Content-Length, then this value will take the place of
Content-Length to enable estimation of %completion and remaining download
time. If the response does provide a Content-Length, and --ignore-content-length
is not specified, then curl will print a warning and ignore this value, using
the Content-Length from the response instead.

A size modifier may be used. For example, Appending 'k' or 'K' will count the
number as kilobytes, 'm' or 'M' makes it megabytes, while 'g' or 'G' makes it
gigabytes. Examples: 200K, 3m and 1G. (Added in 7.86.1)
