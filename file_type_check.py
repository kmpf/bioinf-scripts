import itertools

def get_file_type(filename):
    filetypes = {BAM:['bam'], 
                 SAM:['sam'], 
                 FASTQ:['fastq'], 
                 GZIP:['gz'], 
                 BED:['bed'], 
                 BEDGRAPH:['bg', 'bedgraph'], 
                 BIGWIG:['bw','bigwig'], 
                 WIGGLE:['wig'], 
                 SRA:['sra']}
    
    filename_parts = filename.split('.')

    file_suffixes = list( itertools.chain(*filename_parts.values()) )
    file_type_suggestions = list()
    for part in filename_parts:
        if part in file_suffixes:
            file_type_suggestions.append()
            sam_index = basename.index('sam')
            basename = basename[:sam_index]
        elif 'bam' in basename:
            bam_index  = basename.index('bam')
            basename = basename[:bam_index]
