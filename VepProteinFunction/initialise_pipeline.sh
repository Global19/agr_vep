#!/bin/bash

mod=
agr_fasta=
agr_gff=
agr_bam= # set to 0 if no BAM required

# location of your ensembl checkout, the hive looks here for SQL files etc.
hive_root_dir=

# location for files generated by pipeline
pipeline_base_dir=

pipeline_host=
pipeline_user=
pipeline_port=

lsf_queue=

# location of the software
sift_dir=
pph_dir=
pph_conf_dir=

# location of blastpgp etc.
ncbi_dir=

# location of protein database used to build alignments for SIFT
blastdb=

init_pipeline.pl VepProteinFunction::VepProteinFunction_conf -mod $mod -agr_fasta $agr_fasta -agr_gff $agr_gff -agr_bam $agr_bam -hive_root_dir $hive_root_dir -pipeline_base_dir $pipeline_base_dir -pipeline_host $pipeline_host -pipeline_user $pipeline_user -pipeline_port $pipeline_port -lsf_queue $lsf_queue -sift_dir $sift_dir -pph_dir $pph_dir -pph_conf_dir $pph_conf_dir -ncbi_dir $ncbi_dir -blast_db $blastdb -password $1 