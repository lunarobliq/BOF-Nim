import beacon

proc go*(args: cstring, alen: cint) {.exportc: "go", extern: "go".} =
    BeaconPrintf(CALLBACK_OUTPUT, "Hello World: %s", args)
