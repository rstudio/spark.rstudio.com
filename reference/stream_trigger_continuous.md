# `stream_trigger_continuous`

Spark Stream Continuous Trigger


## Description

Creates a Spark structured streaming trigger to execute
 continuously. This mode is the most performant but not all operations
 are supported.


## Usage

```r
stream_trigger_continuous(checkpoint = 5000)
```


## Arguments

Argument      |Description
------------- |----------------
`checkpoint`     |     The checkpoint interval specified in milliseconds.


## Seealso

[`stream_trigger_interval`](#streamtriggerinterval)


