#!/bin/bash

mod=

# input files
vcf=
gff=
fasta=
bam=  # set to 0 if no BAM required

hive_root_dir=

# location for files generated by pipeline
pipeline_base_dir=

pipeline_host=
pipeline_user=
pipeline_port=

lsf_queue=

# location of the software
vep_dir=

bgzip -c $fasta > $fasta.gz

grep -v '^#' $gff | sort -k1,1 -k4,4n -k5,5n -t$'\t' | bgzip -c > $mod.gff.gz

tabix -p gff $mod.gff.gz

init_pipeline.pl ModVep::ModVep_conf -mod $mod -vcf $vcf -gff $mod.gff.gz -fasta $fasta.gz -bam $bam -hive_root_dir $hive_root_dir -pipeline_base_dir $pipeline_base_dir -pipeline_host $pipeline_host -pipeline_user $pipeline_user -pipeline_port $pipeline_port -lsf_queue $lsf_queue -vep_dir $vep_dir -password $1
