# accelerator-base-containers

Base containers for various heterogeneous accelerators and their respective runtimes

## Overview

This project aims to provide a range of multi-arch base containers that support pre-configured runtimes for various
heterogeneous accelerators.

Containers are published on Docker Hub under the `acceleratorbase` namespace:

| Image | Path | Architecture(s) | Description |
|-------|------|-----------------|-------------|
| `acceleratorbase/ncs2-rpi` | [intel-ncs2/ncs2-rpi] | arm64 | OpenVINO runtime for the Intel Neural Compute Stick 2 running on a Raspberry Pi 3 or 4 (raspbian) |
| `acceleratorbase/edgetpu-std` | [edgetpu/edgetpu-std] | amd64, arm64 | EdgeTPU runtime running at standard clock speed |
| `acceleratorbase/edgetpu-max` | [edgetpu/edgetpu-max] | amd64, arm64 | EdgeTPU runtime running at maximum clock speed |

[intel-ncs2/ncs2-rpi]: https://github.com/adaptant-labs/accelerator-base-containers/tree/master/intel-ncs2/ncs2-rpi
[edgetpu/edgetpu-std]: https://github.com/adaptant-labs/accelerator-base-containers/tree/master/edgetpu/edgetpu-std
[edgetpu/edgetpu-max]: https://github.com/adaptant-labs/accelerator-base-containers/tree/master/edgetpu/edgetpu-max

## Features and bugs

Please file feature requests (including support for additional target architectures) and bugs in the [issue tracker][tracker].

## Acknowledgements

This project has received funding from the European Union’s Horizon 2020 research and innovation programme under grant
agreement No 825480 ([SODALITE]).

## License

Licensed under the terms of the Apache 2.0 license, the full version of which
can be found in the LICENSE file included in the distribution.

[tracker]: https://github.com/adaptant-labs/accelerator-base-containers/issues
[SODALITE]: https://www.sodalite.eu
