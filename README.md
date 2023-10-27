i5 / run-20231008-first-run
=========================
plain SSD RAID0 (mdraid)

tps: [eps](i5/run-20231008-first-run/tps.eps) [svg](i5/run-20231008-first-run/tps.svg)
![i5 / run-20231008-first-run](i5/run-20231008-first-run/tps.svg)

latencies: [eps](i5/run-20231008-first-run/latencies.eps) [svg](i5/run-20231008-first-run/latencies.svg)
![i5 / run-20231008-first-run](i5/run-20231008-first-run/latencies.svg)

| | btrfs | btrfs-no-compress | ext4 | xfs | zfs | zfs-no-compress | zfs-no-fpw |
|---|---|---|---|---|---|---|---|
|tps| [eps](i5/run-20231008-first-run/tps-btrfs.eps) [svg](i5/run-20231008-first-run/tps-btrfs.svg) | [eps](i5/run-20231008-first-run/tps-btrfs-no-compress.eps) [svg](i5/run-20231008-first-run/tps-btrfs-no-compress.svg) | [eps](i5/run-20231008-first-run/tps-ext4.eps) [svg](i5/run-20231008-first-run/tps-ext4.svg) | [eps](i5/run-20231008-first-run/tps-xfs.eps) [svg](i5/run-20231008-first-run/tps-xfs.svg) | [eps](i5/run-20231008-first-run/tps-zfs.eps) [svg](i5/run-20231008-first-run/tps-zfs.svg) | [eps](i5/run-20231008-first-run/tps-zfs-no-compress.eps) [svg](i5/run-20231008-first-run/tps-zfs-no-compress.svg) | [eps](i5/run-20231008-first-run/tps-zfs-no-fpw.eps) [svg](i5/run-20231008-first-run/tps-zfs-no-fpw.svg) |
|latency| [eps](i5/run-20231008-first-run/latencies-btrfs.eps) [svg](i5/run-20231008-first-run/latencies-btrfs.svg) | [eps](i5/run-20231008-first-run/latencies-btrfs-no-compress.eps) [svg](i5/run-20231008-first-run/latencies-btrfs-no-compress.svg) | [eps](i5/run-20231008-first-run/latencies-ext4.eps) [svg](i5/run-20231008-first-run/latencies-ext4.svg) | [eps](i5/run-20231008-first-run/latencies-xfs.eps) [svg](i5/run-20231008-first-run/latencies-xfs.svg) | [eps](i5/run-20231008-first-run/latencies-zfs.eps) [svg](i5/run-20231008-first-run/latencies-zfs.svg) | [eps](i5/run-20231008-first-run/latencies-zfs-no-compress.eps) [svg](i5/run-20231008-first-run/latencies-zfs-no-compress.svg) | [eps](i5/run-20231008-first-run/latencies-zfs-no-fpw.eps) [svg](i5/run-20231008-first-run/latencies-zfs-no-fpw.svg) |

i5 / run-20231011-lvm
=========================
SSD RAID0 (mdraid) + LVM

tps: [eps](i5/run-20231011-lvm/tps.eps) [svg](i5/run-20231011-lvm/tps.svg)
![i5 / run-20231011-lvm](i5/run-20231011-lvm/tps.svg)

latencies: [eps](i5/run-20231011-lvm/latencies.eps) [svg](i5/run-20231011-lvm/latencies.svg)
![i5 / run-20231011-lvm](i5/run-20231011-lvm/latencies.svg)

| | ext4 | xfs |
|---|---|---|
|tps| [eps](i5/run-20231011-lvm/tps-ext4.eps) [svg](i5/run-20231011-lvm/tps-ext4.svg) | [eps](i5/run-20231011-lvm/tps-xfs.eps) [svg](i5/run-20231011-lvm/tps-xfs.svg) |
|latency| [eps](i5/run-20231011-lvm/latencies-ext4.eps) [svg](i5/run-20231011-lvm/latencies-ext4.svg) | [eps](i5/run-20231011-lvm/latencies-xfs.eps) [svg](i5/run-20231011-lvm/latencies-xfs.svg) |

i5 / run-20231012-lvm-snap
=========================
SSD RAID0 (mdraid) + LVM + snapshots

tps: [eps](i5/run-20231012-lvm-snap/tps.eps) [svg](i5/run-20231012-lvm-snap/tps.svg)
![i5 / run-20231012-lvm-snap](i5/run-20231012-lvm-snap/tps.svg)

latencies: [eps](i5/run-20231012-lvm-snap/latencies.eps) [svg](i5/run-20231012-lvm-snap/latencies.svg)
![i5 / run-20231012-lvm-snap](i5/run-20231012-lvm-snap/latencies.svg)

| | btrfs | btrfs-no-compress | ext4 | xfs |
|---|---|---|---|---|
|tps| [eps](i5/run-20231012-lvm-snap/tps-btrfs.eps) [svg](i5/run-20231012-lvm-snap/tps-btrfs.svg) | [eps](i5/run-20231012-lvm-snap/tps-btrfs-no-compress.eps) [svg](i5/run-20231012-lvm-snap/tps-btrfs-no-compress.svg) | [eps](i5/run-20231012-lvm-snap/tps-ext4.eps) [svg](i5/run-20231012-lvm-snap/tps-ext4.svg) | [eps](i5/run-20231012-lvm-snap/tps-xfs.eps) [svg](i5/run-20231012-lvm-snap/tps-xfs.svg) |
|latency| [eps](i5/run-20231012-lvm-snap/latencies-btrfs.eps) [svg](i5/run-20231012-lvm-snap/latencies-btrfs.svg) | [eps](i5/run-20231012-lvm-snap/latencies-btrfs-no-compress.eps) [svg](i5/run-20231012-lvm-snap/latencies-btrfs-no-compress.svg) | [eps](i5/run-20231012-lvm-snap/latencies-ext4.eps) [svg](i5/run-20231012-lvm-snap/latencies-ext4.svg) | [eps](i5/run-20231012-lvm-snap/latencies-xfs.eps) [svg](i5/run-20231012-lvm-snap/latencies-xfs.svg) |

i5 / run-20231013-btrfs-snap
=========================
SSD RAID0 (mdraid) + btrfs + native snapshots

tps: [eps](i5/run-20231013-btrfs-snap/tps.eps) [svg](i5/run-20231013-btrfs-snap/tps.svg)
![i5 / run-20231013-btrfs-snap](i5/run-20231013-btrfs-snap/tps.svg)

latencies: [eps](i5/run-20231013-btrfs-snap/latencies.eps) [svg](i5/run-20231013-btrfs-snap/latencies.svg)
![i5 / run-20231013-btrfs-snap](i5/run-20231013-btrfs-snap/latencies.svg)

| | btrfs | btrfs-no-compress |
|---|---|---|
|tps| [eps](i5/run-20231013-btrfs-snap/tps-btrfs.eps) [svg](i5/run-20231013-btrfs-snap/tps-btrfs.svg) | [eps](i5/run-20231013-btrfs-snap/tps-btrfs-no-compress.eps) [svg](i5/run-20231013-btrfs-snap/tps-btrfs-no-compress.svg) |
|latency| [eps](i5/run-20231013-btrfs-snap/latencies-btrfs.eps) [svg](i5/run-20231013-btrfs-snap/latencies-btrfs.svg) | [eps](i5/run-20231013-btrfs-snap/latencies-btrfs-no-compress.eps) [svg](i5/run-20231013-btrfs-snap/latencies-btrfs-no-compress.svg) |

i5 / run-20231014-zfs-snap
=========================
SSD RAID0 (mdraid) + zfs + native snapshots

tps: [eps](i5/run-20231014-zfs-snap/tps.eps) [svg](i5/run-20231014-zfs-snap/tps.svg)
![i5 / run-20231014-zfs-snap](i5/run-20231014-zfs-snap/tps.svg)

latencies: [eps](i5/run-20231014-zfs-snap/latencies.eps) [svg](i5/run-20231014-zfs-snap/latencies.svg)
![i5 / run-20231014-zfs-snap](i5/run-20231014-zfs-snap/latencies.svg)

| | zfs | zfs-no-compress | zfs-no-fpw |
|---|---|---|---|
|tps| [eps](i5/run-20231014-zfs-snap/tps-zfs.eps) [svg](i5/run-20231014-zfs-snap/tps-zfs.svg) | [eps](i5/run-20231014-zfs-snap/tps-zfs-no-compress.eps) [svg](i5/run-20231014-zfs-snap/tps-zfs-no-compress.svg) | [eps](i5/run-20231014-zfs-snap/tps-zfs-no-fpw.eps) [svg](i5/run-20231014-zfs-snap/tps-zfs-no-fpw.svg) |
|latency| [eps](i5/run-20231014-zfs-snap/latencies-zfs.eps) [svg](i5/run-20231014-zfs-snap/latencies-zfs.svg) | [eps](i5/run-20231014-zfs-snap/latencies-zfs-no-compress.eps) [svg](i5/run-20231014-zfs-snap/latencies-zfs-no-compress.svg) | [eps](i5/run-20231014-zfs-snap/latencies-zfs-no-fpw.eps) [svg](i5/run-20231014-zfs-snap/latencies-zfs-no-fpw.svg) |

i5 / run-20231015-btrfs-native
=========================
btrfs + native raid0

tps: [eps](i5/run-20231015-btrfs-native/tps.eps) [svg](i5/run-20231015-btrfs-native/tps.svg)
![i5 / run-20231015-btrfs-native](i5/run-20231015-btrfs-native/tps.svg)

latencies: [eps](i5/run-20231015-btrfs-native/latencies.eps) [svg](i5/run-20231015-btrfs-native/latencies.svg)
![i5 / run-20231015-btrfs-native](i5/run-20231015-btrfs-native/latencies.svg)

| | btrfs | btrfs-no-compress |
|---|---|---|
|tps| [eps](i5/run-20231015-btrfs-native/tps-btrfs.eps) [svg](i5/run-20231015-btrfs-native/tps-btrfs.svg) | [eps](i5/run-20231015-btrfs-native/tps-btrfs-no-compress.eps) [svg](i5/run-20231015-btrfs-native/tps-btrfs-no-compress.svg) |
|latency| [eps](i5/run-20231015-btrfs-native/latencies-btrfs.eps) [svg](i5/run-20231015-btrfs-native/latencies-btrfs.svg) | [eps](i5/run-20231015-btrfs-native/latencies-btrfs-no-compress.eps) [svg](i5/run-20231015-btrfs-native/latencies-btrfs-no-compress.svg) |

i5 / run-20231016-zfs-native-snap
=========================
zfs + native raid0 + snapshots

tps: [eps](i5/run-20231016-zfs-native-snap/tps.eps) [svg](i5/run-20231016-zfs-native-snap/tps.svg)
![i5 / run-20231016-zfs-native-snap](i5/run-20231016-zfs-native-snap/tps.svg)

latencies: [eps](i5/run-20231016-zfs-native-snap/latencies.eps) [svg](i5/run-20231016-zfs-native-snap/latencies.svg)
![i5 / run-20231016-zfs-native-snap](i5/run-20231016-zfs-native-snap/latencies.svg)

| | zfs | zfs-no-compress | zfs-no-fpw |
|---|---|---|---|
|tps| [eps](i5/run-20231016-zfs-native-snap/tps-zfs.eps) [svg](i5/run-20231016-zfs-native-snap/tps-zfs.svg) | [eps](i5/run-20231016-zfs-native-snap/tps-zfs-no-compress.eps) [svg](i5/run-20231016-zfs-native-snap/tps-zfs-no-compress.svg) | [eps](i5/run-20231016-zfs-native-snap/tps-zfs-no-fpw.eps) [svg](i5/run-20231016-zfs-native-snap/tps-zfs-no-fpw.svg) |
|latency| [eps](i5/run-20231016-zfs-native-snap/latencies-zfs.eps) [svg](i5/run-20231016-zfs-native-snap/latencies-zfs.svg) | [eps](i5/run-20231016-zfs-native-snap/latencies-zfs-no-compress.eps) [svg](i5/run-20231016-zfs-native-snap/latencies-zfs-no-compress.svg) | [eps](i5/run-20231016-zfs-native-snap/latencies-zfs-no-fpw.eps) [svg](i5/run-20231016-zfs-native-snap/latencies-zfs-no-fpw.svg) |

i5 / run-20231017-btrfs-native-snap
=========================
btrfs + native raid0 + snapshots

tps: [eps](i5/run-20231017-btrfs-native-snap/tps.eps) [svg](i5/run-20231017-btrfs-native-snap/tps.svg)
![i5 / run-20231017-btrfs-native-snap](i5/run-20231017-btrfs-native-snap/tps.svg)

latencies: [eps](i5/run-20231017-btrfs-native-snap/latencies.eps) [svg](i5/run-20231017-btrfs-native-snap/latencies.svg)
![i5 / run-20231017-btrfs-native-snap](i5/run-20231017-btrfs-native-snap/latencies.svg)

| | btrfs | btrfs-no-compress |
|---|---|---|
|tps| [eps](i5/run-20231017-btrfs-native-snap/tps-btrfs.eps) [svg](i5/run-20231017-btrfs-native-snap/tps-btrfs.svg) | [eps](i5/run-20231017-btrfs-native-snap/tps-btrfs-no-compress.eps) [svg](i5/run-20231017-btrfs-native-snap/tps-btrfs-no-compress.svg) |
|latency| [eps](i5/run-20231017-btrfs-native-snap/latencies-btrfs.eps) [svg](i5/run-20231017-btrfs-native-snap/latencies-btrfs.svg) | [eps](i5/run-20231017-btrfs-native-snap/latencies-btrfs-no-compress.eps) [svg](i5/run-20231017-btrfs-native-snap/latencies-btrfs-no-compress.svg) |

i5 / run-20231018-zfs-native
=========================
zfs + native raid0

tps: [eps](i5/run-20231018-zfs-native/tps.eps) [svg](i5/run-20231018-zfs-native/tps.svg)
![i5 / run-20231018-zfs-native](i5/run-20231018-zfs-native/tps.svg)

latencies: [eps](i5/run-20231018-zfs-native/latencies.eps) [svg](i5/run-20231018-zfs-native/latencies.svg)
![i5 / run-20231018-zfs-native](i5/run-20231018-zfs-native/latencies.svg)

| | zfs | zfs-no-compress | zfs-no-fpw |
|---|---|---|---|
|tps| [eps](i5/run-20231018-zfs-native/tps-zfs.eps) [svg](i5/run-20231018-zfs-native/tps-zfs.svg) | [eps](i5/run-20231018-zfs-native/tps-zfs-no-compress.eps) [svg](i5/run-20231018-zfs-native/tps-zfs-no-compress.svg) | [eps](i5/run-20231018-zfs-native/tps-zfs-no-fpw.eps) [svg](i5/run-20231018-zfs-native/tps-zfs-no-fpw.svg) |
|latency| [eps](i5/run-20231018-zfs-native/latencies-zfs.eps) [svg](i5/run-20231018-zfs-native/latencies-zfs.svg) | [eps](i5/run-20231018-zfs-native/latencies-zfs-no-compress.eps) [svg](i5/run-20231018-zfs-native/latencies-zfs-no-compress.svg) | [eps](i5/run-20231018-zfs-native/latencies-zfs-no-fpw.eps) [svg](i5/run-20231018-zfs-native/latencies-zfs-no-fpw.svg) |

i5 / run-20231024-throttled
=========================
plain SSD RAID0 (mdraid) + throttled to 90%

tps: [eps](i5/run-20231024-throttled/tps.eps) [svg](i5/run-20231024-throttled/tps.svg)
![i5 / run-20231024-throttled](i5/run-20231024-throttled/tps.svg)

latencies: [eps](i5/run-20231024-throttled/latencies.eps) [svg](i5/run-20231024-throttled/latencies.svg)
![i5 / run-20231024-throttled](i5/run-20231024-throttled/latencies.svg)

| | btrfs | ext4 | xfs | zfs |
|---|---|---|---|---|
|tps| [eps](i5/run-20231024-throttled/tps-btrfs.eps) [svg](i5/run-20231024-throttled/tps-btrfs.svg) | [eps](i5/run-20231024-throttled/tps-ext4.eps) [svg](i5/run-20231024-throttled/tps-ext4.svg) | [eps](i5/run-20231024-throttled/tps-xfs.eps) [svg](i5/run-20231024-throttled/tps-xfs.svg) | [eps](i5/run-20231024-throttled/tps-zfs.eps) [svg](i5/run-20231024-throttled/tps-zfs.svg) |
|latency| [eps](i5/run-20231024-throttled/latencies-btrfs.eps) [svg](i5/run-20231024-throttled/latencies-btrfs.svg) | [eps](i5/run-20231024-throttled/latencies-ext4.eps) [svg](i5/run-20231024-throttled/latencies-ext4.svg) | [eps](i5/run-20231024-throttled/latencies-xfs.eps) [svg](i5/run-20231024-throttled/latencies-xfs.svg) | [eps](i5/run-20231024-throttled/latencies-zfs.eps) [svg](i5/run-20231024-throttled/latencies-zfs.svg) |

i5 / run-20231025-lvm-snap-throttled
=========================
SSD RAID0 (mdraid) + LVM + snapshots + throttled to 90%

tps: [eps](i5/run-20231025-lvm-snap-throttled/tps.eps) [svg](i5/run-20231025-lvm-snap-throttled/tps.svg)
![i5 / run-20231025-lvm-snap-throttled](i5/run-20231025-lvm-snap-throttled/tps.svg)

latencies: [eps](i5/run-20231025-lvm-snap-throttled/latencies.eps) [svg](i5/run-20231025-lvm-snap-throttled/latencies.svg)
![i5 / run-20231025-lvm-snap-throttled](i5/run-20231025-lvm-snap-throttled/latencies.svg)

| | btrfs | ext4 | xfs |
|---|---|---|---|
|tps| [eps](i5/run-20231025-lvm-snap-throttled/tps-btrfs.eps) [svg](i5/run-20231025-lvm-snap-throttled/tps-btrfs.svg) | [eps](i5/run-20231025-lvm-snap-throttled/tps-ext4.eps) [svg](i5/run-20231025-lvm-snap-throttled/tps-ext4.svg) | [eps](i5/run-20231025-lvm-snap-throttled/tps-xfs.eps) [svg](i5/run-20231025-lvm-snap-throttled/tps-xfs.svg) |
|latency| [eps](i5/run-20231025-lvm-snap-throttled/latencies-btrfs.eps) [svg](i5/run-20231025-lvm-snap-throttled/latencies-btrfs.svg) | [eps](i5/run-20231025-lvm-snap-throttled/latencies-ext4.eps) [svg](i5/run-20231025-lvm-snap-throttled/latencies-ext4.svg) | [eps](i5/run-20231025-lvm-snap-throttled/latencies-xfs.eps) [svg](i5/run-20231025-lvm-snap-throttled/latencies-xfs.svg) |

xeon / run-20231008-first-run
=========================
nvme (WDC SN640 960 GB)

tps: [eps](xeon/run-20231008-first-run/tps.eps) [svg](xeon/run-20231008-first-run/tps.svg)
![xeon / run-20231008-first-run](xeon/run-20231008-first-run/tps.svg)

latencies: [eps](xeon/run-20231008-first-run/latencies.eps) [svg](xeon/run-20231008-first-run/latencies.svg)
![xeon / run-20231008-first-run](xeon/run-20231008-first-run/latencies.svg)

| | btrfs | btrfs-no-compress | ext4 | xfs | zfs | zfs-no-compress | zfs-no-fpw |
|---|---|---|---|---|---|---|---|
|tps| [eps](xeon/run-20231008-first-run/tps-btrfs.eps) [svg](xeon/run-20231008-first-run/tps-btrfs.svg) | [eps](xeon/run-20231008-first-run/tps-btrfs-no-compress.eps) [svg](xeon/run-20231008-first-run/tps-btrfs-no-compress.svg) | [eps](xeon/run-20231008-first-run/tps-ext4.eps) [svg](xeon/run-20231008-first-run/tps-ext4.svg) | [eps](xeon/run-20231008-first-run/tps-xfs.eps) [svg](xeon/run-20231008-first-run/tps-xfs.svg) | [eps](xeon/run-20231008-first-run/tps-zfs.eps) [svg](xeon/run-20231008-first-run/tps-zfs.svg) | [eps](xeon/run-20231008-first-run/tps-zfs-no-compress.eps) [svg](xeon/run-20231008-first-run/tps-zfs-no-compress.svg) | [eps](xeon/run-20231008-first-run/tps-zfs-no-fpw.eps) [svg](xeon/run-20231008-first-run/tps-zfs-no-fpw.svg) |
|latency| [eps](xeon/run-20231008-first-run/latencies-btrfs.eps) [svg](xeon/run-20231008-first-run/latencies-btrfs.svg) | [eps](xeon/run-20231008-first-run/latencies-btrfs-no-compress.eps) [svg](xeon/run-20231008-first-run/latencies-btrfs-no-compress.svg) | [eps](xeon/run-20231008-first-run/latencies-ext4.eps) [svg](xeon/run-20231008-first-run/latencies-ext4.svg) | [eps](xeon/run-20231008-first-run/latencies-xfs.eps) [svg](xeon/run-20231008-first-run/latencies-xfs.svg) | [eps](xeon/run-20231008-first-run/latencies-zfs.eps) [svg](xeon/run-20231008-first-run/latencies-zfs.svg) | [eps](xeon/run-20231008-first-run/latencies-zfs-no-compress.eps) [svg](xeon/run-20231008-first-run/latencies-zfs-no-compress.svg) | [eps](xeon/run-20231008-first-run/latencies-zfs-no-fpw.eps) [svg](xeon/run-20231008-first-run/latencies-zfs-no-fpw.svg) |

xeon / run-20231011-lvm-noflush
=========================
nvme (WDC SN640 960 GB) + LVM + no kernel flushing

tps: [eps](xeon/run-20231011-lvm-noflush/tps.eps) [svg](xeon/run-20231011-lvm-noflush/tps.svg)
![xeon / run-20231011-lvm-noflush](xeon/run-20231011-lvm-noflush/tps.svg)

latencies: [eps](xeon/run-20231011-lvm-noflush/latencies.eps) [svg](xeon/run-20231011-lvm-noflush/latencies.svg)
![xeon / run-20231011-lvm-noflush](xeon/run-20231011-lvm-noflush/latencies.svg)

| | ext4 | xfs |
|---|---|---|
|tps| [eps](xeon/run-20231011-lvm-noflush/tps-ext4.eps) [svg](xeon/run-20231011-lvm-noflush/tps-ext4.svg) | [eps](xeon/run-20231011-lvm-noflush/tps-xfs.eps) [svg](xeon/run-20231011-lvm-noflush/tps-xfs.svg) |
|latency| [eps](xeon/run-20231011-lvm-noflush/latencies-ext4.eps) [svg](xeon/run-20231011-lvm-noflush/latencies-ext4.svg) | [eps](xeon/run-20231011-lvm-noflush/latencies-xfs.eps) [svg](xeon/run-20231011-lvm-noflush/latencies-xfs.svg) |

xeon / run-20231012-lvm
=========================
nvme (WDC SN640 960 GB) + LVM

tps: [eps](xeon/run-20231012-lvm/tps.eps) [svg](xeon/run-20231012-lvm/tps.svg)
![xeon / run-20231012-lvm](xeon/run-20231012-lvm/tps.svg)

latencies: [eps](xeon/run-20231012-lvm/latencies.eps) [svg](xeon/run-20231012-lvm/latencies.svg)
![xeon / run-20231012-lvm](xeon/run-20231012-lvm/latencies.svg)

| | btrfs | btrfs-no-compress | ext4 | xfs |
|---|---|---|---|---|
|tps| [eps](xeon/run-20231012-lvm/tps-btrfs.eps) [svg](xeon/run-20231012-lvm/tps-btrfs.svg) | [eps](xeon/run-20231012-lvm/tps-btrfs-no-compress.eps) [svg](xeon/run-20231012-lvm/tps-btrfs-no-compress.svg) | [eps](xeon/run-20231012-lvm/tps-ext4.eps) [svg](xeon/run-20231012-lvm/tps-ext4.svg) | [eps](xeon/run-20231012-lvm/tps-xfs.eps) [svg](xeon/run-20231012-lvm/tps-xfs.svg) |
|latency| [eps](xeon/run-20231012-lvm/latencies-btrfs.eps) [svg](xeon/run-20231012-lvm/latencies-btrfs.svg) | [eps](xeon/run-20231012-lvm/latencies-btrfs-no-compress.eps) [svg](xeon/run-20231012-lvm/latencies-btrfs-no-compress.svg) | [eps](xeon/run-20231012-lvm/latencies-ext4.eps) [svg](xeon/run-20231012-lvm/latencies-ext4.svg) | [eps](xeon/run-20231012-lvm/latencies-xfs.eps) [svg](xeon/run-20231012-lvm/latencies-xfs.svg) |

xeon / run-20231014-lvm-snap
=========================
nvme (WDC SN640 960 GB) + LVM + snapshots

tps: [eps](xeon/run-20231014-lvm-snap/tps.eps) [svg](xeon/run-20231014-lvm-snap/tps.svg)
![xeon / run-20231014-lvm-snap](xeon/run-20231014-lvm-snap/tps.svg)

latencies: [eps](xeon/run-20231014-lvm-snap/latencies.eps) [svg](xeon/run-20231014-lvm-snap/latencies.svg)
![xeon / run-20231014-lvm-snap](xeon/run-20231014-lvm-snap/latencies.svg)

| | btrfs | btrfs-no-compress | ext4 | xfs |
|---|---|---|---|---|
|tps| [eps](xeon/run-20231014-lvm-snap/tps-btrfs.eps) [svg](xeon/run-20231014-lvm-snap/tps-btrfs.svg) | [eps](xeon/run-20231014-lvm-snap/tps-btrfs-no-compress.eps) [svg](xeon/run-20231014-lvm-snap/tps-btrfs-no-compress.svg) | [eps](xeon/run-20231014-lvm-snap/tps-ext4.eps) [svg](xeon/run-20231014-lvm-snap/tps-ext4.svg) | [eps](xeon/run-20231014-lvm-snap/tps-xfs.eps) [svg](xeon/run-20231014-lvm-snap/tps-xfs.svg) |
|latency| [eps](xeon/run-20231014-lvm-snap/latencies-btrfs.eps) [svg](xeon/run-20231014-lvm-snap/latencies-btrfs.svg) | [eps](xeon/run-20231014-lvm-snap/latencies-btrfs-no-compress.eps) [svg](xeon/run-20231014-lvm-snap/latencies-btrfs-no-compress.svg) | [eps](xeon/run-20231014-lvm-snap/latencies-ext4.eps) [svg](xeon/run-20231014-lvm-snap/latencies-ext4.svg) | [eps](xeon/run-20231014-lvm-snap/latencies-xfs.eps) [svg](xeon/run-20231014-lvm-snap/latencies-xfs.svg) |

xeon / run-20231015-btrfs
=========================
nvme (WDC SN640 960 GB) + btrfs + snapshots

tps: [eps](xeon/run-20231015-btrfs/tps.eps) [svg](xeon/run-20231015-btrfs/tps.svg)
![xeon / run-20231015-btrfs](xeon/run-20231015-btrfs/tps.svg)

latencies: [eps](xeon/run-20231015-btrfs/latencies.eps) [svg](xeon/run-20231015-btrfs/latencies.svg)
![xeon / run-20231015-btrfs](xeon/run-20231015-btrfs/latencies.svg)

| | btrfs | btrfs-no-compress |
|---|---|---|
|tps| [eps](xeon/run-20231015-btrfs/tps-btrfs.eps) [svg](xeon/run-20231015-btrfs/tps-btrfs.svg) | [eps](xeon/run-20231015-btrfs/tps-btrfs-no-compress.eps) [svg](xeon/run-20231015-btrfs/tps-btrfs-no-compress.svg) |
|latency| [eps](xeon/run-20231015-btrfs/latencies-btrfs.eps) [svg](xeon/run-20231015-btrfs/latencies-btrfs.svg) | [eps](xeon/run-20231015-btrfs/latencies-btrfs-no-compress.eps) [svg](xeon/run-20231015-btrfs/latencies-btrfs-no-compress.svg) |

xeon / run-20231016-zfs
=========================
nvme (WDC SN640 960 GB) + zfs + snapshots

tps: [eps](xeon/run-20231016-zfs/tps.eps) [svg](xeon/run-20231016-zfs/tps.svg)
![xeon / run-20231016-zfs](xeon/run-20231016-zfs/tps.svg)

latencies: [eps](xeon/run-20231016-zfs/latencies.eps) [svg](xeon/run-20231016-zfs/latencies.svg)
![xeon / run-20231016-zfs](xeon/run-20231016-zfs/latencies.svg)

| | zfs | zfs-no-compress | zfs-no-fpw |
|---|---|---|---|
|tps| [eps](xeon/run-20231016-zfs/tps-zfs.eps) [svg](xeon/run-20231016-zfs/tps-zfs.svg) | [eps](xeon/run-20231016-zfs/tps-zfs-no-compress.eps) [svg](xeon/run-20231016-zfs/tps-zfs-no-compress.svg) | [eps](xeon/run-20231016-zfs/tps-zfs-no-fpw.eps) [svg](xeon/run-20231016-zfs/tps-zfs-no-fpw.svg) |
|latency| [eps](xeon/run-20231016-zfs/latencies-zfs.eps) [svg](xeon/run-20231016-zfs/latencies-zfs.svg) | [eps](xeon/run-20231016-zfs/latencies-zfs-no-compress.eps) [svg](xeon/run-20231016-zfs/latencies-zfs-no-compress.svg) | [eps](xeon/run-20231016-zfs/latencies-zfs-no-fpw.eps) [svg](xeon/run-20231016-zfs/latencies-zfs-no-fpw.svg) |

xeon / run-20231017-kingston-first-run
=========================
nvme (Kingston DC1500M)

tps: [eps](xeon/run-20231017-kingston-first-run/tps.eps) [svg](xeon/run-20231017-kingston-first-run/tps.svg)
![xeon / run-20231017-kingston-first-run](xeon/run-20231017-kingston-first-run/tps.svg)

latencies: [eps](xeon/run-20231017-kingston-first-run/latencies.eps) [svg](xeon/run-20231017-kingston-first-run/latencies.svg)
![xeon / run-20231017-kingston-first-run](xeon/run-20231017-kingston-first-run/latencies.svg)

| | btrfs | btrfs-no-compress | ext4 | xfs | zfs | zfs-no-compress | zfs-no-fpw |
|---|---|---|---|---|---|---|---|
|tps| [eps](xeon/run-20231017-kingston-first-run/tps-btrfs.eps) [svg](xeon/run-20231017-kingston-first-run/tps-btrfs.svg) | [eps](xeon/run-20231017-kingston-first-run/tps-btrfs-no-compress.eps) [svg](xeon/run-20231017-kingston-first-run/tps-btrfs-no-compress.svg) | [eps](xeon/run-20231017-kingston-first-run/tps-ext4.eps) [svg](xeon/run-20231017-kingston-first-run/tps-ext4.svg) | [eps](xeon/run-20231017-kingston-first-run/tps-xfs.eps) [svg](xeon/run-20231017-kingston-first-run/tps-xfs.svg) | [eps](xeon/run-20231017-kingston-first-run/tps-zfs.eps) [svg](xeon/run-20231017-kingston-first-run/tps-zfs.svg) | [eps](xeon/run-20231017-kingston-first-run/tps-zfs-no-compress.eps) [svg](xeon/run-20231017-kingston-first-run/tps-zfs-no-compress.svg) | [eps](xeon/run-20231017-kingston-first-run/tps-zfs-no-fpw.eps) [svg](xeon/run-20231017-kingston-first-run/tps-zfs-no-fpw.svg) |
|latency| [eps](xeon/run-20231017-kingston-first-run/latencies-btrfs.eps) [svg](xeon/run-20231017-kingston-first-run/latencies-btrfs.svg) | [eps](xeon/run-20231017-kingston-first-run/latencies-btrfs-no-compress.eps) [svg](xeon/run-20231017-kingston-first-run/latencies-btrfs-no-compress.svg) | [eps](xeon/run-20231017-kingston-first-run/latencies-ext4.eps) [svg](xeon/run-20231017-kingston-first-run/latencies-ext4.svg) | [eps](xeon/run-20231017-kingston-first-run/latencies-xfs.eps) [svg](xeon/run-20231017-kingston-first-run/latencies-xfs.svg) | [eps](xeon/run-20231017-kingston-first-run/latencies-zfs.eps) [svg](xeon/run-20231017-kingston-first-run/latencies-zfs.svg) | [eps](xeon/run-20231017-kingston-first-run/latencies-zfs-no-compress.eps) [svg](xeon/run-20231017-kingston-first-run/latencies-zfs-no-compress.svg) | [eps](xeon/run-20231017-kingston-first-run/latencies-zfs-no-fpw.eps) [svg](xeon/run-20231017-kingston-first-run/latencies-zfs-no-fpw.svg) |

xeon / run-20231024-throttled
=========================
nvme (WDC SN640 960 GB) + throttled to 90%

tps: [eps](xeon/run-20231024-throttled/tps.eps) [svg](xeon/run-20231024-throttled/tps.svg)
![xeon / run-20231024-throttled](xeon/run-20231024-throttled/tps.svg)

latencies: [eps](xeon/run-20231024-throttled/latencies.eps) [svg](xeon/run-20231024-throttled/latencies.svg)
![xeon / run-20231024-throttled](xeon/run-20231024-throttled/latencies.svg)

| | btrfs | ext4 | xfs | zfs |
|---|---|---|---|---|
|tps| [eps](xeon/run-20231024-throttled/tps-btrfs.eps) [svg](xeon/run-20231024-throttled/tps-btrfs.svg) | [eps](xeon/run-20231024-throttled/tps-ext4.eps) [svg](xeon/run-20231024-throttled/tps-ext4.svg) | [eps](xeon/run-20231024-throttled/tps-xfs.eps) [svg](xeon/run-20231024-throttled/tps-xfs.svg) | [eps](xeon/run-20231024-throttled/tps-zfs.eps) [svg](xeon/run-20231024-throttled/tps-zfs.svg) |
|latency| [eps](xeon/run-20231024-throttled/latencies-btrfs.eps) [svg](xeon/run-20231024-throttled/latencies-btrfs.svg) | [eps](xeon/run-20231024-throttled/latencies-ext4.eps) [svg](xeon/run-20231024-throttled/latencies-ext4.svg) | [eps](xeon/run-20231024-throttled/latencies-xfs.eps) [svg](xeon/run-20231024-throttled/latencies-xfs.svg) | [eps](xeon/run-20231024-throttled/latencies-zfs.eps) [svg](xeon/run-20231024-throttled/latencies-zfs.svg) |

xeon / run-20231025-lvm-snap-throttled
=========================
nvme (WDC SN640 960 GB) + LVM + snapshots + throttled to 90%

tps: [eps](xeon/run-20231025-lvm-snap-throttled/tps.eps) [svg](xeon/run-20231025-lvm-snap-throttled/tps.svg)
![xeon / run-20231025-lvm-snap-throttled](xeon/run-20231025-lvm-snap-throttled/tps.svg)

latencies: [eps](xeon/run-20231025-lvm-snap-throttled/latencies.eps) [svg](xeon/run-20231025-lvm-snap-throttled/latencies.svg)
![xeon / run-20231025-lvm-snap-throttled](xeon/run-20231025-lvm-snap-throttled/latencies.svg)

| | btrfs | ext4 | xfs |
|---|---|---|---|
|tps| [eps](xeon/run-20231025-lvm-snap-throttled/tps-btrfs.eps) [svg](xeon/run-20231025-lvm-snap-throttled/tps-btrfs.svg) | [eps](xeon/run-20231025-lvm-snap-throttled/tps-ext4.eps) [svg](xeon/run-20231025-lvm-snap-throttled/tps-ext4.svg) | [eps](xeon/run-20231025-lvm-snap-throttled/tps-xfs.eps) [svg](xeon/run-20231025-lvm-snap-throttled/tps-xfs.svg) |
|latency| [eps](xeon/run-20231025-lvm-snap-throttled/latencies-btrfs.eps) [svg](xeon/run-20231025-lvm-snap-throttled/latencies-btrfs.svg) | [eps](xeon/run-20231025-lvm-snap-throttled/latencies-ext4.eps) [svg](xeon/run-20231025-lvm-snap-throttled/latencies-ext4.svg) | [eps](xeon/run-20231025-lvm-snap-throttled/latencies-xfs.eps) [svg](xeon/run-20231025-lvm-snap-throttled/latencies-xfs.svg) |

