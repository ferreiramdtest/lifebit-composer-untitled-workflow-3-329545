nextflow.enable.dsl=2

include { gwas # 1 } from './modules/gwas # 1/module.nf'

workflow {
input1 = Channel.fromPath(params.input1).splitCsv()
input2 = Channel.fromPath(params.input2)
gwas # 1(input1, input2)
}
