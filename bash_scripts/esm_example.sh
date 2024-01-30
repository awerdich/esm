#!/bin/bash

#SBATCH -c 4                    # Cores
#SBATCH -t 0-00:30              # Runtime in D-HH:MM format
#SBATCH -p gpu_ccb              # Partition to run in
#SBATCH --mem=32G               # Memory total in MiB (for all cores)
#SBATCH -account=gentleman_rcg7_contrib
#SBATCH -o /n/data1/hms/ccb/projects/esm/log/esm_%j.out     # File to which STDOUT will be written, including job ID (%j)
#SBATCH -e /n/data1/hms/ccb/projects/esm/log/esm_%j.err     # File to which STDERR will be written, including job ID (%j)

# parser.add_argument('-a', '--app', default='evolution', required=True, help='module name')
# parser.add_argument('-s', '--sequence', default=testsequence, help='protein sequence')
# parser.add_argument('-o', '--output_file', default='output.csv', help='path to output csv file')


# Commands to run the model
while getopts "a:s:o:" opt
do
  case "$opt" in
    a) app=${OPTARG} ;;
    s) sequence=${OPTARG} ;;
    o) output_file=${OPTARG} ;;
    *) echo "Usage: $0 [-a app] [-s sequence] [-o output file]" >&2
       exit 1 ;;
  esac
done

echo "APP $app $sequence $output_file"
echo "SEQ $sequence"
echo "OUT $output_file"