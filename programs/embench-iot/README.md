# Embench&#x2122;: Open Benchmarks for Embedded Platforms

This repository contains the Embench&#x2122; free and open source benchmark
suite.  These benchmarks are designed to test the performance of deeply
embedded systems.  As such they assume the presence of no OS, minimal C
library support and in particular no output stream.

The rationale behind this benchmark is described in "Embench™: An Evolving
Benchmark Suite for Embedded IoT Computers from an Academic-Industrial
Cooperative: Towards the Long Overdue and Deserved Demise of Dhrystone" by David
Patterson, Jeremy Bennett, Palmer Dabbelt, Cesare Garlati, G. S. Madhusudan
and Trevor Mudge (see https://tmt.knect365.com/risc-v-workshop-zurich/agenda/2#software_embench-tm-a-free-benchmark-suite-for-embedded-computing-from-an-academic-industry-cooperative-towards-the-long-overdue-and-deserved-demise-of-dhrystone).

The benchmarks are largely derived from the Bristol/Embecosm Embedded
Benchmark Suite (BEEBS, see https://beebs.mageec.org/), which in turn draws
its material from various earlier projects.  A full description and user
manual is in the [`doc` directory](./doc/README.md).

## Licensing

Embench is licensed under the GNU General Public License version 3 (GPL3).
See the COPYING file for details.  Some individual benchmarks are also
available under different licenses.  See the comments in the individual source
files for details.

The code base is OpenChain compliant, with SPDX license identifiers provided
throughout.
