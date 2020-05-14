# PILON
## PILON: Automatically improve draft assemblies and find variation among strains

The current build is based on the bioconda distribution of the Broad Institute Pilon v.1.23.

Several evidences (e.g. https://github.com/rrwick/Unicycler/issues/147; https://github.com/broadinstitute/pilon/issues/26) show that the regular java release (https://github.com/broadinstitute/pilon/releases) could not be suited for large genomes/files, due to a memory issue.

With this Docker you can tweak pilon to use the ammount of memory that best fits your system, editing the MINMEM and MAXMEM values, which are now set to 1g and 100g respectively.
