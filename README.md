Currently there is no way to natively set up journald so
that logs are pruned based on boots. For example, you may
only want to keep journals for boot -1 and -2, not caring
about logs for older boots. This is an issue orthogonal to
time-based pruning since uptime can have various lengths.

This small package simply runs a quick script on boot to
delete journal files that hold logs for boots older than a
predefined limit (MAX_BOOTS in the script).

I also logged an RFE in upstream systemd for this:

https://github.com/systemd/systemd/issues/2070
