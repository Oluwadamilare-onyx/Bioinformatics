#!/bin/bash
Task 1
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ pwd
/workspaces/Bioinformatics
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ echo Oluwadamilare
Oluwadamilare
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ mkdir Oluwadamilare
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ mkdir biocomputing
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ cd biocomputing/
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
--2025-08-30 11:22:04--  https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.109.133, 185.199.110.133, 185.199.111.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.109.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 200694 (196K) [text/plain]
Saving to: ‘wildtype.fna’

wildtype.fna           100%[===========================>] 195.99K  --.-KB/s    in 0.003s  

2025-08-30 11:22:04 (70.2 MB/s) - ‘wildtype.fna’ saved [200694/200694]

@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
--2025-08-30 11:22:16--  https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.108.133, 185.199.111.133, 185.199.110.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 399730 (390K) [text/plain]
Saving to: ‘wildtype.gbk’

wildtype.gbk           100%[===========================>] 390.36K  --.-KB/s    in 0.004s  

2025-08-30 11:22:16 (97.8 MB/s) - ‘wildtype.gbk’ saved [399730/399730]

@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
--2025-08-30 11:22:22--  https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.111.133, 185.199.109.133, 185.199.110.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.111.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 399730 (390K) [text/plain]
Saving to: ‘wildtype.gbk.1’

wildtype.gbk.1         100%[===========================>] 390.36K  --.-KB/s    in 0.005s  

2025-08-30 11:22:22 (79.3 MB/s) - ‘wildtype.gbk.1’ saved [399730/399730]

@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ cd ../
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ mv biocomputing/wildtype.fna Oluwadamilare/
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ cd biocomputing/
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ rm wildtype.gbk.1
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ cd ../
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ cd Oluwadamilare/
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/Oluwadamilare (main) $ grep "tatatata" wildtype.fna 
atccacagcacctactactattactaagaacttaaaacctatataattatatataaacga
aattacttgaatattattcataatatattaacaactttattatactgctctttatatata
actatatataagtaaaacaatgatggacaatgactgtgaaaaagtatgtgatagaaacgt
aaggtatatataagattaaacattttaccttagataaagaaaatggtgcattatttaatc
gtatatatatttgccacgattgcatgtggttgtagtgcgatactgcaaggtttagcgacg
attatatatatcaattagaacattgatggttgttattacaggggaaggctcaaggtagtc
attatgcaaggtttagaagcagattcagattactaatatatataaaatttgggagtgata
gaaaaatatatataagtcattaactgtctctgcaattgttgcaacggtatcattaagtgc
aatactatatatataataccaattttaatgaaaatttttaagggaggtaaataatggaaa
tagttgtcgcgcttatatatatcttcttcaaagtaatttttgataagcgaattaaagatg
aatcgcccgggacgtattttaataatttttcagcagttatatatataggtagaggtgttt
ctttatccataatgatagccccctatatatatctttatttacttataccctaacattatt
atctttagcggatattgaaatttttccacatcaacacgggttcaaaattatatataacag
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/Oluwadamilare (main) $ grep "tatatata" wildtype.fna > Mutant.txt
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/Oluwadamilare (main) $ cd ../
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ cd biocomputing/
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ awk 'NR>1' wildtype.gbk | wc -l
5749
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ grep "^LOCUS" wildtype.gbk | awk '{print $3}'
197394
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ grep "^SOURCE" wildtype.gbk | head -n 1 | awk '{$1="";
 print $0}'
 Staphylococcus aureus
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ grep '/gene="' wildtype.gbk | cut -d '"' -f2
dnaA
dnaN
recF
gyrB
gyrA
nnrD
hutH
serS
ygaZ
metX
gdpP
rplI
dnaC
purA
walR
walK
yycI
yycJ
mggB
rlmH
pre
ble
knt
ugpQ
paaZ
pbp
mecR1
mecI
nagC
pspE_1
pksB
pspE_2
csoR
cadA
cadC
xerD
hin
tnpR
mcrB
emrY
dus
recD
plc
btr
yxeP
norB_1
lctP
spa
sarS
yfhA
yfiZ
yfiY
sbnA
arcB
iucC_1
tetA
iucA
iucC_2
garL
btrK
butA
wbgU
tuaA
wbnH
rfbX
sodM
treR
deoD
norB_2
deoC1
deoB
phnE_1
phnE_2
glnQ
phnD
yfkN
adhE
cap8A
ywqD
ywqE
pglF
capD
wbjC
wbpI
maa
epsL
gnu
wecC
mnaA
isdI
ybaN
aldA
czcD
cmpD
cmpC
ssuC
srfAB
sfp
yagU
argB
argJ
argC
rocD2
brnQ
yecD
ipdC
ptsG
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ 
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics/biocomputing (main) $ cd ../
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ 
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ history
    1  pwd
    2  echo Oluwadamilare
    3  mkdir Oluwadamilare
    4  mkdir biocomputing
    5  ls -lh
    6  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
    7  https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
    8  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
    9  pwd
   10  echo Oluwadamilare
   11  mkdir Oluwadamilare
   12  mkdir biocomputing
   13  cd biocomputing/
   14  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
   15  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
   16  cd ../
   17  mv biocomputing/wildtype.fna Oluwadamilare/
   18  cd biocomputing/
   19  rm wildtype.gbk.1
   20  cd ../
   21  cd Oluwadamilare/
   22  grep "tatatata" wildtype.fna 
   23  grep "tatatata" wildtype.fna > Mutant.txt
   24  cd ../
   25  cd biocomputing/
   26  awk 'NR>1' wildtype.gbk | wc -l
   27  grep "^LOCUS" wildtype.gbk | awk '{print $3}'
   28  grep "^SOURCE" wildtype.gbk | head -n 1 | awk '{$1=""; print $0}'
   29  grep '/gene="' wildtype.gbk | cut -d '"' -f2
   30  cd ../
   31  history
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ ls -lh
total 8.0K
drwxrwxrwx+ 2 codespace codespace 4.0K Aug 30 11:25 Oluwadamilare
drwxrwxrwx+ 2 codespace codespace 4.0K Aug 30 11:23 biocomputing
@Oluwadamilare-onyx ➜ /workspaces/Bioinformatics (main) $ 

task 2
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env

  added / updated specs:
    - bwa


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    bwa-0.7.19                 |       h577a1d6_1         639 KB  bioconda
    libxcrypt-4.4.36           |       hd590300_1          98 KB  conda-forge
    perl-5.32.1                | 7_hd590300_perl5        12.7 MB  conda-forge
    ------------------------------------------------------------
                                           Total:        13.4 MB

The following NEW packages will be INSTALLED:

  _libgcc_mutex      conda-forge/linux-64::_libgcc_mutex-0.1-conda_forge 
  _openmp_mutex      conda-forge/linux-64::_openmp_mutex-4.5-2_gnu 
  bwa                bioconda/linux-64::bwa-0.7.19-h577a1d6_1 
  libgcc             conda-forge/linux-64::libgcc-15.1.0-h767d61c_4 
  libgcc-ng          conda-forge/linux-64::libgcc-ng-15.1.0-h69a702a_4 
  libgomp            conda-forge/linux-64::libgomp-15.1.0-h767d61c_4 
  libxcrypt          conda-forge/linux-64::libxcrypt-4.4.36-hd590300_1 
  libzlib            conda-forge/linux-64::libzlib-1.3.1-hb9d3cd8_2 
  perl               conda-forge/linux-64::perl-5.32.1-7_hd590300_perl5 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                      
Preparing transaction: done                                                                                           
Verifying transaction: done                                                                                           
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate Biocomputing_env
#
# To deactivate an active environment, use
#
#     $ conda deactivate

(funtools) blaqworkbs@cs-821307412311-default:~$ conda activate Biocomputing_env
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda info --envs

# conda environments:
#
base                   /home/blaqworkbs/miniconda3
Biocomputing_env     * /home/blaqworkbs/miniconda3/envs/Biocomputing_env
funtools               /home/blaqworkbs/miniconda3/envs/funtools

(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install blast
2 channel Terms of Service accepted
Channels:
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env

  added / updated specs:
    - blast


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    blast-2.17.0               |       h66d330f_0        80.9 MB  bioconda
    c-ares-1.34.5              |       hb9d3cd8_0         202 KB  conda-forge
    curl-8.14.1                |       h332b0f4_0         176 KB  conda-forge
    entrez-direct-24.0         |       he881be0_0        16.3 MB  bioconda
    keyutils-1.6.3             |       hb9d3cd8_0         131 KB  conda-forge
    krb5-1.21.3                |       h659f571_0         1.3 MB  conda-forge
    libasprintf-0.25.1         |       h3f43e3d_1          52 KB  conda-forge
    libcurl-8.14.1             |       h332b0f4_0         439 KB  conda-forge
    libedit-3.1.20250104       | pl5321h7949ede_0         132 KB  conda-forge
    libev-4.33                 |       hd590300_2         110 KB  conda-forge
    libgettextpo-0.25.1        |       h3f43e3d_1         184 KB  conda-forge
    libiconv-1.18              |       h3b78370_2         772 KB  conda-forge
    libidn2-2.3.8              |       ha4ef2c3_0         135 KB  conda-forge
    libnghttp2-1.64.0          |       h161d5f1_0         632 KB  conda-forge
    libssh2-1.11.1             |       hcf80075_0         298 KB  conda-forge
    libstdcxx-15.1.0           |       h8f9b012_4         3.7 MB  conda-forge
    libstdcxx-ng-15.1.0        |       h4852527_4          29 KB  conda-forge
    libunistring-0.9.10        |       h7f98852_0         1.4 MB  conda-forge
    ncbi-vdb-3.2.1             |       h9948957_0        10.6 MB  bioconda
    perl-archive-tar-3.04      | pl5321hdfd78af_0          34 KB  bioconda
    perl-carp-1.50             | pl5321hd8ed1ab_0          22 KB  conda-forge
    perl-common-sense-3.75     | pl5321hd8ed1ab_0          20 KB  conda-forge
    perl-compress-raw-bzip2-2.213| pl5321hda65f42_0          54 KB  conda-forge
    perl-compress-raw-zlib-2.213| pl5321h4dac143_0          79 KB  conda-forge
    perl-encode-3.21           | pl5321hb9d3cd8_1         1.7 MB  conda-forge
    perl-exporter-5.74         | pl5321hd8ed1ab_0          19 KB  conda-forge
    perl-exporter-tiny-1.002002| pl5321hd8ed1ab_0          28 KB  conda-forge
    perl-extutils-makemaker-7.70| pl5321hd8ed1ab_0         154 KB  conda-forge
    perl-io-compress-2.213     | pl5321h503566f_0          85 KB  bioconda
    perl-io-zlib-1.15          | pl5321hdfd78af_1          12 KB  bioconda
    perl-json-4.10             | pl5321hdfd78af_1          56 KB  bioconda
    perl-json-xs-4.03          | pl5321h9948957_4          73 KB  bioconda
    perl-list-moreutils-0.430  | pl5321hdfd78af_0          32 KB  bioconda
    perl-list-moreutils-xs-0.430| pl5321h7b50bb2_5          50 KB  bioconda
    perl-parent-0.243          | pl5321hd8ed1ab_0          14 KB  conda-forge
    perl-pathtools-3.75        | pl5321hb9d3cd8_2          49 KB  conda-forge
    perl-scalar-list-utils-1.70| pl5321hb03c661_0          51 KB  conda-forge
    perl-storable-3.15         | pl5321hb9d3cd8_2          70 KB  conda-forge
    perl-types-serialiser-1.01 | pl5321hdfd78af_0          13 KB  bioconda
    wget-1.21.4                |       hda4d442_0         752 KB  conda-forge
    zlib-1.3.1                 |       hb9d3cd8_2          90 KB  conda-forge
    zstd-1.5.7                 |       hb8e6e7a_2         554 KB  conda-forge
    ------------------------------------------------------------
                                           Total:       121.3 MB

The following NEW packages will be INSTALLED:

  blast              bioconda/linux-64::blast-2.17.0-h66d330f_0 
  bzip2              conda-forge/linux-64::bzip2-1.0.8-h4bc722e_7 
  c-ares             conda-forge/linux-64::c-ares-1.34.5-hb9d3cd8_0 
  ca-certificates    conda-forge/noarch::ca-certificates-2025.8.3-hbd8a1cb_0 
  curl               conda-forge/linux-64::curl-8.14.1-h332b0f4_0 
  entrez-direct      bioconda/linux-64::entrez-direct-24.0-he881be0_0 
  keyutils           conda-forge/linux-64::keyutils-1.6.3-hb9d3cd8_0 
  krb5               conda-forge/linux-64::krb5-1.21.3-h659f571_0 
  libasprintf        conda-forge/linux-64::libasprintf-0.25.1-h3f43e3d_1 
  libcurl            conda-forge/linux-64::libcurl-8.14.1-h332b0f4_0 
  libedit            conda-forge/linux-64::libedit-3.1.20250104-pl5321h7949ede_0 
  libev              conda-forge/linux-64::libev-4.33-hd590300_2 
  libgettextpo       conda-forge/linux-64::libgettextpo-0.25.1-h3f43e3d_1 
  libiconv           conda-forge/linux-64::libiconv-1.18-h3b78370_2 
  libidn2            conda-forge/linux-64::libidn2-2.3.8-ha4ef2c3_0 
  libnghttp2         conda-forge/linux-64::libnghttp2-1.64.0-h161d5f1_0 
  libsqlite          conda-forge/linux-64::libsqlite-3.50.4-h0c1763c_0 
  libssh2            conda-forge/linux-64::libssh2-1.11.1-hcf80075_0 
  libstdcxx          conda-forge/linux-64::libstdcxx-15.1.0-h8f9b012_4 
  libstdcxx-ng       conda-forge/linux-64::libstdcxx-ng-15.1.0-h4852527_4 
  libunistring       conda-forge/linux-64::libunistring-0.9.10-h7f98852_0 
  ncbi-vdb           bioconda/linux-64::ncbi-vdb-3.2.1-h9948957_0 
  ncurses            conda-forge/linux-64::ncurses-6.5-h2d0b736_3 
  openssl            conda-forge/linux-64::openssl-3.5.2-h26f9b46_0 
  perl-archive-tar   bioconda/noarch::perl-archive-tar-3.04-pl5321hdfd78af_0 
  perl-carp          conda-forge/noarch::perl-carp-1.50-pl5321hd8ed1ab_0 
  perl-common-sense  conda-forge/noarch::perl-common-sense-3.75-pl5321hd8ed1ab_0 
  perl-compress-raw~ conda-forge/linux-64::perl-compress-raw-bzip2-2.213-pl5321hda65f42_0 
  perl-compress-raw~ conda-forge/linux-64::perl-compress-raw-zlib-2.213-pl5321h4dac143_0 
  perl-encode        conda-forge/linux-64::perl-encode-3.21-pl5321hb9d3cd8_1 
  perl-exporter      conda-forge/noarch::perl-exporter-5.74-pl5321hd8ed1ab_0 
  perl-exporter-tiny conda-forge/noarch::perl-exporter-tiny-1.002002-pl5321hd8ed1ab_0 
  perl-extutils-mak~ conda-forge/noarch::perl-extutils-makemaker-7.70-pl5321hd8ed1ab_0 
  perl-io-compress   bioconda/linux-64::perl-io-compress-2.213-pl5321h503566f_0 
  perl-io-zlib       bioconda/noarch::perl-io-zlib-1.15-pl5321hdfd78af_1 
  perl-json          bioconda/noarch::perl-json-4.10-pl5321hdfd78af_1 
  perl-json-xs       bioconda/linux-64::perl-json-xs-4.03-pl5321h9948957_4 
  perl-list-moreuti~ bioconda/noarch::perl-list-moreutils-0.430-pl5321hdfd78af_0 
  perl-list-moreuti~ bioconda/linux-64::perl-list-moreutils-xs-0.430-pl5321h7b50bb2_5 
  perl-parent        conda-forge/noarch::perl-parent-0.243-pl5321hd8ed1ab_0 
  perl-pathtools     conda-forge/linux-64::perl-pathtools-3.75-pl5321hb9d3cd8_2 
  perl-scalar-list-~ conda-forge/linux-64::perl-scalar-list-utils-1.70-pl5321hb03c661_0 
  perl-storable      conda-forge/linux-64::perl-storable-3.15-pl5321hb9d3cd8_2 
  perl-types-serial~ bioconda/noarch::perl-types-serialiser-1.01-pl5321hdfd78af_0 
  wget               conda-forge/linux-64::wget-1.21.4-hda4d442_0 
  zlib               conda-forge/linux-64::zlib-1.3.1-hb9d3cd8_2 
  zstd               conda-forge/linux-64::zstd-1.5.7-hb8e6e7a_2 


Proceed ([y]/n)? n


CondaSystemExit: Exiting.

(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ bwa

Program: bwa (alignment via Burrows-Wheeler transformation)
Version: 0.7.19-r1273
Contact: Heng Li <hli@ds.dfci.harvard.edu>

Usage:   bwa <command> [options]

Command: index         index sequences in the FASTA format
         mem           BWA-MEM algorithm
         fastmap       identify super-maximal exact matches
         pemerge       merge overlapping paired ends (EXPERIMENTAL)
         aln           gapped/ungapped alignment
         samse         generate alignment (single ended)
         sampe         generate alignment (paired ended)
         bwasw         BWA-SW for long queries (DEPRECATED)

         shm           manage indices in shared memory
         fa2pac        convert FASTA to PAC format
         pac2bwt       generate BWT from PAC
         pac2bwtgen    alternative algorithm for generating BWT
         bwtupdate     update .bwt to the new format
         bwt2sa        generate SA from BWT and Occ

Note: To use BWA, you need to first index the genome with `bwa index'.
      There are three alignment algorithms in BWA: `mem', `bwasw', and
      `aln/samse/sampe'. If you are not sure which to use, try `bwa mem'
      first. Please `man ./bwa.1' for the manual.

(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install blast
2 channel Terms of Service accepted
Channels:
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env

  added / updated specs:
    - blast


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    blast-2.17.0               |       h66d330f_0        80.9 MB  bioconda
    c-ares-1.34.5              |       hb9d3cd8_0         202 KB  conda-forge
    curl-8.14.1                |       h332b0f4_0         176 KB  conda-forge
    entrez-direct-24.0         |       he881be0_0        16.3 MB  bioconda
    keyutils-1.6.3             |       hb9d3cd8_0         131 KB  conda-forge
    krb5-1.21.3                |       h659f571_0         1.3 MB  conda-forge
    libasprintf-0.25.1         |       h3f43e3d_1          52 KB  conda-forge
    libcurl-8.14.1             |       h332b0f4_0         439 KB  conda-forge
    libedit-3.1.20250104       | pl5321h7949ede_0         132 KB  conda-forge
    libev-4.33                 |       hd590300_2         110 KB  conda-forge
    libgettextpo-0.25.1        |       h3f43e3d_1         184 KB  conda-forge
    libiconv-1.18              |       h3b78370_2         772 KB  conda-forge
    libidn2-2.3.8              |       ha4ef2c3_0         135 KB  conda-forge
    libnghttp2-1.64.0          |       h161d5f1_0         632 KB  conda-forge
    libssh2-1.11.1             |       hcf80075_0         298 KB  conda-forge
    libstdcxx-15.1.0           |       h8f9b012_4         3.7 MB  conda-forge
    libstdcxx-ng-15.1.0        |       h4852527_4          29 KB  conda-forge
    libunistring-0.9.10        |       h7f98852_0         1.4 MB  conda-forge
    ncbi-vdb-3.2.1             |       h9948957_0        10.6 MB  bioconda
    perl-archive-tar-3.04      | pl5321hdfd78af_0          34 KB  bioconda
    perl-carp-1.50             | pl5321hd8ed1ab_0          22 KB  conda-forge
    perl-common-sense-3.75     | pl5321hd8ed1ab_0          20 KB  conda-forge
    perl-compress-raw-bzip2-2.213| pl5321hda65f42_0          54 KB  conda-forge
    perl-compress-raw-zlib-2.213| pl5321h4dac143_0          79 KB  conda-forge
    perl-encode-3.21           | pl5321hb9d3cd8_1         1.7 MB  conda-forge
    perl-exporter-5.74         | pl5321hd8ed1ab_0          19 KB  conda-forge
    perl-exporter-tiny-1.002002| pl5321hd8ed1ab_0          28 KB  conda-forge
    perl-extutils-makemaker-7.70| pl5321hd8ed1ab_0         154 KB  conda-forge
    perl-io-compress-2.213     | pl5321h503566f_0          85 KB  bioconda
    perl-io-zlib-1.15          | pl5321hdfd78af_1          12 KB  bioconda
    perl-json-4.10             | pl5321hdfd78af_1          56 KB  bioconda
    perl-json-xs-4.03          | pl5321h9948957_4          73 KB  bioconda
    perl-list-moreutils-0.430  | pl5321hdfd78af_0          32 KB  bioconda
    perl-list-moreutils-xs-0.430| pl5321h7b50bb2_5          50 KB  bioconda
    perl-parent-0.243          | pl5321hd8ed1ab_0          14 KB  conda-forge
    perl-pathtools-3.75        | pl5321hb9d3cd8_2          49 KB  conda-forge
    perl-scalar-list-utils-1.70| pl5321hb03c661_0          51 KB  conda-forge
    perl-storable-3.15         | pl5321hb9d3cd8_2          70 KB  conda-forge
    perl-types-serialiser-1.01 | pl5321hdfd78af_0          13 KB  bioconda
    wget-1.21.4                |       hda4d442_0         752 KB  conda-forge
    zlib-1.3.1                 |       hb9d3cd8_2          90 KB  conda-forge
    zstd-1.5.7                 |       hb8e6e7a_2         554 KB  conda-forge
    ------------------------------------------------------------
                                           Total:       121.3 MB

The following NEW packages will be INSTALLED:

  blast              bioconda/linux-64::blast-2.17.0-h66d330f_0 
  bzip2              conda-forge/linux-64::bzip2-1.0.8-h4bc722e_7 
  c-ares             conda-forge/linux-64::c-ares-1.34.5-hb9d3cd8_0 
  ca-certificates    conda-forge/noarch::ca-certificates-2025.8.3-hbd8a1cb_0 
  curl               conda-forge/linux-64::curl-8.14.1-h332b0f4_0 
  entrez-direct      bioconda/linux-64::entrez-direct-24.0-he881be0_0 
  keyutils           conda-forge/linux-64::keyutils-1.6.3-hb9d3cd8_0 
  krb5               conda-forge/linux-64::krb5-1.21.3-h659f571_0 
  libasprintf        conda-forge/linux-64::libasprintf-0.25.1-h3f43e3d_1 
  libcurl            conda-forge/linux-64::libcurl-8.14.1-h332b0f4_0 
  libedit            conda-forge/linux-64::libedit-3.1.20250104-pl5321h7949ede_0 
  libev              conda-forge/linux-64::libev-4.33-hd590300_2 
  libgettextpo       conda-forge/linux-64::libgettextpo-0.25.1-h3f43e3d_1 
  libiconv           conda-forge/linux-64::libiconv-1.18-h3b78370_2 
  libidn2            conda-forge/linux-64::libidn2-2.3.8-ha4ef2c3_0 
  libnghttp2         conda-forge/linux-64::libnghttp2-1.64.0-h161d5f1_0 
  libsqlite          conda-forge/linux-64::libsqlite-3.50.4-h0c1763c_0 
  libssh2            conda-forge/linux-64::libssh2-1.11.1-hcf80075_0 
  libstdcxx          conda-forge/linux-64::libstdcxx-15.1.0-h8f9b012_4 
  libstdcxx-ng       conda-forge/linux-64::libstdcxx-ng-15.1.0-h4852527_4 
  libunistring       conda-forge/linux-64::libunistring-0.9.10-h7f98852_0 
  ncbi-vdb           bioconda/linux-64::ncbi-vdb-3.2.1-h9948957_0 
  ncurses            conda-forge/linux-64::ncurses-6.5-h2d0b736_3 
  openssl            conda-forge/linux-64::openssl-3.5.2-h26f9b46_0 
  perl-archive-tar   bioconda/noarch::perl-archive-tar-3.04-pl5321hdfd78af_0 
  perl-carp          conda-forge/noarch::perl-carp-1.50-pl5321hd8ed1ab_0 
  perl-common-sense  conda-forge/noarch::perl-common-sense-3.75-pl5321hd8ed1ab_0 
  perl-compress-raw~ conda-forge/linux-64::perl-compress-raw-bzip2-2.213-pl5321hda65f42_0 
  perl-compress-raw~ conda-forge/linux-64::perl-compress-raw-zlib-2.213-pl5321h4dac143_0 
  perl-encode        conda-forge/linux-64::perl-encode-3.21-pl5321hb9d3cd8_1 
  perl-exporter      conda-forge/noarch::perl-exporter-5.74-pl5321hd8ed1ab_0 
  perl-exporter-tiny conda-forge/noarch::perl-exporter-tiny-1.002002-pl5321hd8ed1ab_0 
  perl-extutils-mak~ conda-forge/noarch::perl-extutils-makemaker-7.70-pl5321hd8ed1ab_0 
  perl-io-compress   bioconda/linux-64::perl-io-compress-2.213-pl5321h503566f_0 
  perl-io-zlib       bioconda/noarch::perl-io-zlib-1.15-pl5321hdfd78af_1 
  perl-json          bioconda/noarch::perl-json-4.10-pl5321hdfd78af_1 
  perl-json-xs       bioconda/linux-64::perl-json-xs-4.03-pl5321h9948957_4 
  perl-list-moreuti~ bioconda/noarch::perl-list-moreutils-0.430-pl5321hdfd78af_0 
  perl-list-moreuti~ bioconda/linux-64::perl-list-moreutils-xs-0.430-pl5321h7b50bb2_5 
  perl-parent        conda-forge/noarch::perl-parent-0.243-pl5321hd8ed1ab_0 
  perl-pathtools     conda-forge/linux-64::perl-pathtools-3.75-pl5321hb9d3cd8_2 
  perl-scalar-list-~ conda-forge/linux-64::perl-scalar-list-utils-1.70-pl5321hb03c661_0 
  perl-storable      conda-forge/linux-64::perl-storable-3.15-pl5321hb9d3cd8_2 
  perl-types-serial~ bioconda/noarch::perl-types-serialiser-1.01-pl5321hdfd78af_0 
  wget               conda-forge/linux-64::wget-1.21.4-hda4d442_0 
  zlib               conda-forge/linux-64::zlib-1.3.1-hb9d3cd8_2 
  zstd               conda-forge/linux-64::zstd-1.5.7-hb8e6e7a_2 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                      
Preparing transaction: done                                                                                           
Verifying transaction: done                                                                                           
Executing transaction: done                                                                                           
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ blastn -version                                              
blastn: 2.17.0+                                                                                                       
 Package: blast 2.17.0, build Aug 11 2025 09:46:06                                                                    
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install samtools
2 channel Terms of Service accepted                                                                                   
Channels:                                                                                                             
 - conda-forge                                                                                                        
 - bioconda                                                                                                           
 - defaults                                                                                                           
Platform: linux-64                                                                                                    
Collecting package metadata (repodata.json): done                                                                     
Solving environment: done                                                                                             
                                                                                                                      
## Package Plan ##                                                                                                    
                                                                                                                      
  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env                                             
                                                                                                                      
  added / updated specs:                                                                                              
    - samtools                                                                                                        
                                                                                                                      
                                                                                                                      
The following packages will be downloaded:                                                                            
                                                                                                                      
    package                    |            build
    ---------------------------|-----------------
    htslib-1.22.1              |       h566b1c6_0         3.1 MB  bioconda
    libdeflate-1.24            |       h86f0d12_0          71 KB  conda-forge
    samtools-1.22.1            |       h96c455f_0         488 KB  bioconda
    ------------------------------------------------------------
                                           Total:         3.7 MB

The following NEW packages will be INSTALLED:

  htslib             bioconda/linux-64::htslib-1.22.1-h566b1c6_0 
  libdeflate         conda-forge/linux-64::libdeflate-1.24-h86f0d12_0 
  liblzma            conda-forge/linux-64::liblzma-5.8.1-hb9d3cd8_2 
  samtools           bioconda/linux-64::samtools-1.22.1-h96c455f_0 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                      
Preparing transaction: done                                                                                           
Verifying transaction: done                                                                                           
Executing transaction: done
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ samtools --version
samtools 1.22.1
Using htslib 1.22.1
Copyright (C) 2025 Genome Research Ltd.

Samtools compilation details:
    Features:       build=configure curses=yes 
    CC:             /opt/conda/conda-bld/samtools_1752528053426/_build_env/bin/x86_64-conda-linux-gnu-cc
    CPPFLAGS:       -DNDEBUG -D_FORTIFY_SOURCE=2 -O2 -isystem /home/blaqworkbs/miniconda3/envs/Biocomputing_env/include
    CFLAGS:         -Wall -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /home/blaqworkbs/miniconda3/envs/Biocomputing_env/include -fdebug-prefix-map=/opt/conda/conda-bld/samtools_1752528053426/work=/usr/local/src/conda/samtools-1.22.1 -fdebug-prefix-map=/home/blaqworkbs/miniconda3/envs/Biocomputing_env=/usr/local/src/conda-prefix
    LDFLAGS:        -Wl,-O2 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags -Wl,--gc-sections -Wl,--allow-shlib-undefined -Wl,-rpath,/home/blaqworkbs/miniconda3/envs/Biocomputing_env/lib -Wl,-rpath-link,/home/blaqworkbs/miniconda3/envs/Biocomputing_env/lib -L/home/blaqworkbs/miniconda3/envs/Biocomputing_env/lib
    HTSDIR:         
    LIBS:           
    CURSES_LIB:     -ltinfow -lncursesw

HTSlib compilation details:
    Features:       build=configure libcurl=yes S3=yes GCS=yes libdeflate=yes lzma=yes bzip2=yes plugins=yes plugin-path=/home/blaqworkbs/miniconda3/envs/Biocomputing_env/libexec/htslib htscodecs=1.6.4
    CC:             /opt/conda/conda-bld/htslib_1752522550715/_build_env/bin/x86_64-conda-linux-gnu-cc
    CPPFLAGS:       -DNDEBUG -D_FORTIFY_SOURCE=2 -O2 -isystem /home/blaqworkbs/miniconda3/envs/Biocomputing_env/include
    CFLAGS:         -Wall -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /home/blaqworkbs/miniconda3/envs/Biocomputing_env/include -fdebug-prefix-map=/opt/conda/conda-bld/htslib_1752522550715/work=/usr/local/src/conda/htslib-1.22.1 -fdebug-prefix-map=/home/blaqworkbs/miniconda3/envs/Biocomputing_env=/usr/local/src/conda-prefix -fvisibility=hidden
    LDFLAGS:        -Wl,-O2 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags -Wl,--gc-sections -Wl,--allow-shlib-undefined -Wl,-rpath,/home/blaqworkbs/miniconda3/envs/Biocomputing_env/lib -Wl,-rpath-link,/home/blaqworkbs/miniconda3/envs/Biocomputing_env/lib -L/home/blaqworkbs/miniconda3/envs/Biocomputing_env/lib -fvisibility=hidden -rdynamic

HTSlib URL scheme handlers present:
    built-in:    file, preload, data
    Google Cloud Storage:        gs+http, gs+https, gs
    S3 Multipart Upload:         s3w+https, s3w+http, s3w
    libcurl:     gophers, smtp, wss, smb, rtsp, tftp, pop3, smbs, imaps, pop3s, ws, ftps, ftp, gopher, imap, http, https, sftp, smtps, scp, dict, mqtt, telnet
    Amazon S3:   s3+https, s3, s3+http
    crypt4gh-needed:     crypt4gh
    mem:         mem
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install bedtools
2 channel Terms of Service accepted
Channels:
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env

  added / updated specs:
    - bedtools


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    bedtools-2.31.1            |       h13024bc_3         1.5 MB  bioconda
    ------------------------------------------------------------
                                           Total:         1.5 MB

The following NEW packages will be INSTALLED:

  bedtools           bioconda/linux-64::bedtools-2.31.1-h13024bc_3 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                      
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ bedtools --version
bedtools v2.31.1
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install spades.py
2 channel Terms of Service accepted
Channels:
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: failed

PackagesNotFoundError: The following packages are not available from current channels:

  - spades.py

Current channels:

  - https://conda.anaconda.org/conda-forge
  - https://conda.anaconda.org/bioconda
  - defaults

To search for alternate channels that may provide the conda package you're
looking for, navigate to

    https://anaconda.org

and use the search bar at the top of the page.


(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ spades.py --version
-bash: spades.py: command not found
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install spades
2 channel Terms of Service accepted
Channels:
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env

  added / updated specs:
    - spades


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    libgfortran-15.1.0         |       h69a702a_4          29 KB  conda-forge
    libgfortran-ng-15.1.0      |       h69a702a_4          29 KB  conda-forge
    libgfortran5-15.1.0        |       hcea5267_4         1.5 MB  conda-forge
    mpi-1.0                    |          openmpi           4 KB  conda-forge
    openmpi-4.1.6              |     hc5af2df_101         3.9 MB  conda-forge
    spades-4.2.0               |       h8d6e82b_1        32.6 MB  bioconda
    ------------------------------------------------------------
                                           Total:        38.0 MB

The following NEW packages will be INSTALLED:

  ld_impl_linux-64   conda-forge/linux-64::ld_impl_linux-64-2.44-h1423503_1 
  libexpat           conda-forge/linux-64::libexpat-2.7.1-hecca717_0 
  libffi             conda-forge/linux-64::libffi-3.4.6-h2dba641_1 
  libgfortran        conda-forge/linux-64::libgfortran-15.1.0-h69a702a_4 
  libgfortran-ng     conda-forge/linux-64::libgfortran-ng-15.1.0-h69a702a_4 
  libgfortran5       conda-forge/linux-64::libgfortran5-15.1.0-hcea5267_4 
  libmpdec           conda-forge/linux-64::libmpdec-4.0.0-hb9d3cd8_0 
  libuuid            conda-forge/linux-64::libuuid-2.38.1-h0b41bf4_0 
  mpi                conda-forge/linux-64::mpi-1.0-openmpi 
  openmpi            conda-forge/linux-64::openmpi-4.1.6-hc5af2df_101 
  pip                conda-forge/noarch::pip-25.2-pyh145f28c_0 
  python             conda-forge/linux-64::python-3.13.5-hec9711d_102_cp313 
  python_abi         conda-forge/noarch::python_abi-3.13-8_cp313 
  readline           conda-forge/linux-64::readline-8.2-h8c095d6_2 
  spades             bioconda/linux-64::spades-4.2.0-h8d6e82b_1 
  tk                 conda-forge/linux-64::tk-8.6.13-noxft_hd72426e_102 
  tzdata             conda-forge/noarch::tzdata-2025b-h78e105d_0 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                      
Preparing transaction: done                                                                                           
Verifying transaction: done                                                                                           
Executing transaction: /                                                                                              
For Linux 64, Open MPI is built with CUDA awareness but this support is disabled by default.                          
To enable it, please set the environment variable OMPI_MCA_opal_cuda_support=true before                              
launching your MPI processes. Equivalently, you can set the MCA parameter in the command line:
mpiexec --mca opal_cuda_support 1 ...
 
In addition, the UCX support is also built but disabled by default.
To enable it, first install UCX (conda install -c conda-forge ucx). Then, set the environment
variables OMPI_MCA_pml="ucx" OMPI_MCA_osc="ucx" before launching your MPI processes.
Equivalently, you can set the MCA parameters in the command line:
mpiexec --mca pml ucx --mca osc ucx ...
Note that you might also need to set UCX_MEMTYPE_CACHE=n for CUDA awareness via UCX.
Please consult UCX's documentation for detail.
 

done
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ spades.py --version
SPAdes genome assembler v4.2.0
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install bcftools
2 channel Terms of Service accepted
Channels:
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env

  added / updated specs:
    - bcftools


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    bcftools-1.22              |       h3a4d415_1         1.0 MB  bioconda
    gsl-2.7                    |       he838d99_0         3.2 MB  conda-forge
    libblas-3.9.0              |34_h59b9bed_openblas          19 KB  conda-forge
    libcblas-3.9.0             |34_he106b2a_openblas          19 KB  conda-forge
    libopenblas-0.3.30         |pthreads_h94d23a6_2         5.7 MB  conda-forge
    ------------------------------------------------------------
                                           Total:        10.0 MB

The following NEW packages will be INSTALLED:

  bcftools           bioconda/linux-64::bcftools-1.22-h3a4d415_1 
  gsl                conda-forge/linux-64::gsl-2.7-he838d99_0 
  libblas            conda-forge/linux-64::libblas-3.9.0-34_h59b9bed_openblas 
  libcblas           conda-forge/linux-64::libcblas-3.9.0-34_he106b2a_openblas 
  libopenblas        conda-forge/linux-64::libopenblas-0.3.30-pthreads_h94d23a6_2 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                      
Preparing transaction: done                                                                                           
Verifying transaction: done                                                                                           
Executing transaction: done                                                                                           
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ bcftools --version
bcftools 1.22
Using htslib 1.22.1
Copyright (C) 2025 Genome Research Ltd.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda install multiqc
2 channel Terms of Service accepted
Channels:
 - conda-forge
 - bioconda
 - defaults
Platform: linux-64
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /home/blaqworkbs/miniconda3/envs/Biocomputing_env

  added / updated specs:
    - multiqc


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    _python_abi3_support-1.0   |       hd8ed1ab_2           8 KB  conda-forge
    annotated-types-0.7.0      |     pyhd8ed1ab_1          18 KB  conda-forge
    attrs-25.3.0               |     pyh71513ae_0          56 KB  conda-forge
    brotli-python-1.1.0        |  py313h46c70d0_3         342 KB  conda-forge
    certifi-2025.8.3           |     pyhd8ed1ab_0         155 KB  conda-forge
    cffi-1.17.1                |  py313hfab6e84_0         289 KB  conda-forge
    charset-normalizer-3.4.3   |     pyhd8ed1ab_0          50 KB  conda-forge
    click-8.2.1                |     pyh707e725_0          86 KB  conda-forge
    colorama-0.4.6             |     pyhd8ed1ab_1          26 KB  conda-forge
    coloredlogs-15.0.1         |     pyhd8ed1ab_4          43 KB  conda-forge
    colormath-3.0.0            |     pyhd8ed1ab_4          38 KB  conda-forge
    cpython-3.13.5             |py313hd8ed1ab_102          46 KB  conda-forge
    expat-2.7.1                |       hecca717_0         138 KB  conda-forge
    font-ttf-dejavu-sans-mono-2.37|       hab24e00_0         388 KB  conda-forge
    font-ttf-inconsolata-3.000 |       h77eed37_0          94 KB  conda-forge
    font-ttf-source-code-pro-2.038|       h77eed37_0         684 KB  conda-forge
    font-ttf-ubuntu-0.83       |       h77eed37_3         1.5 MB  conda-forge
    fontconfig-2.15.0          |       h7e30c49_1         259 KB  conda-forge
    fonts-conda-forge-1        |                0           4 KB  conda-forge
    freetype-2.13.3            |       ha770c72_1         168 KB  conda-forge
    h2-4.3.0                   |     pyhcf101f3_0          94 KB  conda-forge
    hpack-4.1.0                |     pyhd8ed1ab_0          30 KB  conda-forge
    humanfriendly-10.0         |     pyh707e725_8          72 KB  conda-forge
    humanize-4.13.0            |     pyhd8ed1ab_0          66 KB  conda-forge
    hyperframe-6.1.0           |     pyhd8ed1ab_0          17 KB  conda-forge
    idna-3.10                  |     pyhd8ed1ab_1          49 KB  conda-forge
    importlib-metadata-8.7.0   |     pyhe01879c_1          34 KB  conda-forge
    jinja2-3.1.6               |     pyhd8ed1ab_0         110 KB  conda-forge
    jsonschema-4.25.1          |     pyhe01879c_0          80 KB  conda-forge
    jsonschema-specifications-2025.4.1|     pyh29332c3_0          19 KB  conda-forge
    kaleido-core-0.2.1         |       h3644ca4_0        59.2 MB  conda-forge
    lcms2-2.17                 |       h717163a_0         242 KB  conda-forge
    lerc-4.0.0                 |       h0aef613_1         258 KB  conda-forge
    libfreetype-2.13.3         |       ha770c72_1           8 KB  conda-forge
    libfreetype6-2.13.3        |       h48d6fc4_1         371 KB  conda-forge
    libjpeg-turbo-3.1.0        |       hb9d3cd8_0         614 KB  conda-forge
    liblapack-3.9.0            |34_h7ac8fdf_openblas          19 KB  conda-forge
    libpng-1.6.50              |       h421ea60_1         310 KB  conda-forge
    libtiff-4.7.0              |       h8261f1e_6         423 KB  conda-forge
    libwebp-base-1.6.0         |       hd42ef1d_0         419 KB  conda-forge
    libxcb-1.17.0              |       h8a09558_0         387 KB  conda-forge
    markdown-3.8.2             |     pyhd8ed1ab_0          78 KB  conda-forge
    markdown-it-py-4.0.0       |     pyhd8ed1ab_0          63 KB  conda-forge
    markupsafe-3.0.2           |  py313h8060acc_1          24 KB  conda-forge
    mathjax-2.7.7              |       ha770c72_3        21.2 MB  conda-forge
    mdurl-0.1.2                |     pyhd8ed1ab_1          14 KB  conda-forge
    multiqc-1.30               |     pyhdfd78af_1         3.4 MB  bioconda
    narwhals-2.2.0             |     pyhcf101f3_0         243 KB  conda-forge
    natsort-8.4.0              |     pyh29332c3_1          38 KB  conda-forge
    networkx-3.5               |     pyhe01879c_0         1.5 MB  conda-forge
    nspr-4.37                  |       h29cc59b_0         226 KB  conda-forge
    nss-3.115                  |       hc3c8bcf_0         1.9 MB  conda-forge
    numpy-2.3.2                |  py313hf6604e3_2         8.5 MB  conda-forge
    openjpeg-2.5.3             |       h55fea9a_1         349 KB  conda-forge
    packaging-25.0             |     pyh29332c3_1          61 KB  conda-forge
    pillow-11.3.0              |  py313h8db990d_0        40.7 MB  conda-forge
    plotly-6.3.0               |     pyhd8ed1ab_0         4.7 MB  conda-forge
    polars-lts-cpu-1.32.3      |   py39h5734d0f_0        30.0 MB  conda-forge
    pthread-stubs-0.4          |    hb9d3cd8_1002           8 KB  conda-forge
    pyaml-env-1.2.2            |     pyhd8ed1ab_0          14 KB  conda-forge
    pycparser-2.22             |     pyh29332c3_1         108 KB  conda-forge
    pydantic-2.11.7            |     pyh3cfb1c2_0         300 KB  conda-forge
    pydantic-core-2.33.2       |  py313h4b2b08d_0         1.8 MB  conda-forge
    pygments-2.19.2            |     pyhd8ed1ab_0         868 KB  conda-forge
    pysocks-1.7.1              |     pyha55dd90_7          21 KB  conda-forge
    python-dotenv-1.1.1        |     pyhe01879c_0          25 KB  conda-forge
    python-gil-3.13.5          |     h4df99d1_102          46 KB  conda-forge
    python-kaleido-0.2.1       |     pyhd8ed1ab_0          18 KB  conda-forge
    pyyaml-6.0.2               |  py313h8060acc_2         201 KB  conda-forge
    referencing-0.36.2         |     pyh29332c3_0          50 KB  conda-forge
    regex-2025.7.34            |  py313h07c4f96_0         399 KB  conda-forge
    requests-2.32.5            |     pyhd8ed1ab_0          58 KB  conda-forge
    rich-14.1.0                |     pyhe01879c_0         196 KB  conda-forge
    rich-click-1.8.9           |     pyhd8ed1ab_0          34 KB  conda-forge
    rpds-py-0.27.1             |  py313h843e2db_0         380 KB  conda-forge
    spectra-0.0.11             |     pyhd8ed1ab_2          22 KB  conda-forge
    sqlite-3.50.4              |       hbc0de68_0         162 KB  conda-forge
    tiktoken-0.9.0             |  py313h3f234b3_0         946 KB  conda-forge
    tqdm-4.67.1                |     pyhd8ed1ab_1          87 KB  conda-forge
    typeguard-4.4.4            |     pyhd8ed1ab_0          34 KB  conda-forge
    typing-extensions-4.15.0   |       h396c80c_0          89 KB  conda-forge
    typing-inspection-0.4.1    |     pyhd8ed1ab_0          18 KB  conda-forge
    typing_extensions-4.15.0   |     pyhcf101f3_0          50 KB  conda-forge
    urllib3-2.5.0              |     pyhd8ed1ab_0          99 KB  conda-forge
    xorg-libxau-1.0.12         |       hb9d3cd8_0          14 KB  conda-forge
    xorg-libxdmcp-1.1.5        |       hb9d3cd8_0          19 KB  conda-forge
    yaml-0.2.5                 |       h280c20c_3          83 KB  conda-forge
    zipp-3.23.0                |     pyhd8ed1ab_0          22 KB  conda-forge
    zstandard-0.23.0           |  py313h07c4f96_3         481 KB  conda-forge
    ------------------------------------------------------------
                                           Total:       186.7 MB

The following NEW packages will be INSTALLED:

  _python_abi3_supp~ conda-forge/noarch::_python_abi3_support-1.0-hd8ed1ab_2 
  annotated-types    conda-forge/noarch::annotated-types-0.7.0-pyhd8ed1ab_1 
  attrs              conda-forge/noarch::attrs-25.3.0-pyh71513ae_0 
  brotli-python      conda-forge/linux-64::brotli-python-1.1.0-py313h46c70d0_3 
  certifi            conda-forge/noarch::certifi-2025.8.3-pyhd8ed1ab_0 
  cffi               conda-forge/linux-64::cffi-1.17.1-py313hfab6e84_0 
  charset-normalizer conda-forge/noarch::charset-normalizer-3.4.3-pyhd8ed1ab_0 
  click              conda-forge/noarch::click-8.2.1-pyh707e725_0 
  colorama           conda-forge/noarch::colorama-0.4.6-pyhd8ed1ab_1 
  coloredlogs        conda-forge/noarch::coloredlogs-15.0.1-pyhd8ed1ab_4 
  colormath          conda-forge/noarch::colormath-3.0.0-pyhd8ed1ab_4 
  cpython            conda-forge/noarch::cpython-3.13.5-py313hd8ed1ab_102 
  expat              conda-forge/linux-64::expat-2.7.1-hecca717_0 
  font-ttf-dejavu-s~ conda-forge/noarch::font-ttf-dejavu-sans-mono-2.37-hab24e00_0 
  font-ttf-inconsol~ conda-forge/noarch::font-ttf-inconsolata-3.000-h77eed37_0 
  font-ttf-source-c~ conda-forge/noarch::font-ttf-source-code-pro-2.038-h77eed37_0 
  font-ttf-ubuntu    conda-forge/noarch::font-ttf-ubuntu-0.83-h77eed37_3 
  fontconfig         conda-forge/linux-64::fontconfig-2.15.0-h7e30c49_1 
  fonts-conda-forge  conda-forge/noarch::fonts-conda-forge-1-0 
  freetype           conda-forge/linux-64::freetype-2.13.3-ha770c72_1 
  h2                 conda-forge/noarch::h2-4.3.0-pyhcf101f3_0 
  hpack              conda-forge/noarch::hpack-4.1.0-pyhd8ed1ab_0 
  humanfriendly      conda-forge/noarch::humanfriendly-10.0-pyh707e725_8 
  humanize           conda-forge/noarch::humanize-4.13.0-pyhd8ed1ab_0 
  hyperframe         conda-forge/noarch::hyperframe-6.1.0-pyhd8ed1ab_0 
  idna               conda-forge/noarch::idna-3.10-pyhd8ed1ab_1 
  importlib-metadata conda-forge/noarch::importlib-metadata-8.7.0-pyhe01879c_1 
  jinja2             conda-forge/noarch::jinja2-3.1.6-pyhd8ed1ab_0 
  jsonschema         conda-forge/noarch::jsonschema-4.25.1-pyhe01879c_0 
  jsonschema-specif~ conda-forge/noarch::jsonschema-specifications-2025.4.1-pyh29332c3_0 
  kaleido-core       conda-forge/linux-64::kaleido-core-0.2.1-h3644ca4_0 
  lcms2              conda-forge/linux-64::lcms2-2.17-h717163a_0 
  lerc               conda-forge/linux-64::lerc-4.0.0-h0aef613_1 
  libfreetype        conda-forge/linux-64::libfreetype-2.13.3-ha770c72_1 
  libfreetype6       conda-forge/linux-64::libfreetype6-2.13.3-h48d6fc4_1 
  libjpeg-turbo      conda-forge/linux-64::libjpeg-turbo-3.1.0-hb9d3cd8_0 
  liblapack          conda-forge/linux-64::liblapack-3.9.0-34_h7ac8fdf_openblas 
  libpng             conda-forge/linux-64::libpng-1.6.50-h421ea60_1 
  libtiff            conda-forge/linux-64::libtiff-4.7.0-h8261f1e_6 
  libwebp-base       conda-forge/linux-64::libwebp-base-1.6.0-hd42ef1d_0 
  libxcb             conda-forge/linux-64::libxcb-1.17.0-h8a09558_0 
  markdown           conda-forge/noarch::markdown-3.8.2-pyhd8ed1ab_0 
  markdown-it-py     conda-forge/noarch::markdown-it-py-4.0.0-pyhd8ed1ab_0 
  markupsafe         conda-forge/linux-64::markupsafe-3.0.2-py313h8060acc_1 
  mathjax            conda-forge/linux-64::mathjax-2.7.7-ha770c72_3 
  mdurl              conda-forge/noarch::mdurl-0.1.2-pyhd8ed1ab_1 
  multiqc            bioconda/noarch::multiqc-1.30-pyhdfd78af_1 
  narwhals           conda-forge/noarch::narwhals-2.2.0-pyhcf101f3_0 
  natsort            conda-forge/noarch::natsort-8.4.0-pyh29332c3_1 
  networkx           conda-forge/noarch::networkx-3.5-pyhe01879c_0 
  nspr               conda-forge/linux-64::nspr-4.37-h29cc59b_0 
  nss                conda-forge/linux-64::nss-3.115-hc3c8bcf_0 
  numpy              conda-forge/linux-64::numpy-2.3.2-py313hf6604e3_2 
  openjpeg           conda-forge/linux-64::openjpeg-2.5.3-h55fea9a_1 
  packaging          conda-forge/noarch::packaging-25.0-pyh29332c3_1 
  pillow             conda-forge/linux-64::pillow-11.3.0-py313h8db990d_0 
  plotly             conda-forge/noarch::plotly-6.3.0-pyhd8ed1ab_0 
  polars-lts-cpu     conda-forge/linux-64::polars-lts-cpu-1.32.3-py39h5734d0f_0 
  pthread-stubs      conda-forge/linux-64::pthread-stubs-0.4-hb9d3cd8_1002 
  pyaml-env          conda-forge/noarch::pyaml-env-1.2.2-pyhd8ed1ab_0 
  pycparser          conda-forge/noarch::pycparser-2.22-pyh29332c3_1 
  pydantic           conda-forge/noarch::pydantic-2.11.7-pyh3cfb1c2_0 
  pydantic-core      conda-forge/linux-64::pydantic-core-2.33.2-py313h4b2b08d_0 
  pygments           conda-forge/noarch::pygments-2.19.2-pyhd8ed1ab_0 
  pysocks            conda-forge/noarch::pysocks-1.7.1-pyha55dd90_7 
  python-dotenv      conda-forge/noarch::python-dotenv-1.1.1-pyhe01879c_0 
  python-gil         conda-forge/noarch::python-gil-3.13.5-h4df99d1_102 
  python-kaleido     conda-forge/noarch::python-kaleido-0.2.1-pyhd8ed1ab_0 
  pyyaml             conda-forge/linux-64::pyyaml-6.0.2-py313h8060acc_2 
  referencing        conda-forge/noarch::referencing-0.36.2-pyh29332c3_0 
  regex              conda-forge/linux-64::regex-2025.7.34-py313h07c4f96_0 
  requests           conda-forge/noarch::requests-2.32.5-pyhd8ed1ab_0 
  rich               conda-forge/noarch::rich-14.1.0-pyhe01879c_0 
  rich-click         conda-forge/noarch::rich-click-1.8.9-pyhd8ed1ab_0 
  rpds-py            conda-forge/linux-64::rpds-py-0.27.1-py313h843e2db_0 
  spectra            conda-forge/noarch::spectra-0.0.11-pyhd8ed1ab_2 
  sqlite             conda-forge/linux-64::sqlite-3.50.4-hbc0de68_0 
  tiktoken           conda-forge/linux-64::tiktoken-0.9.0-py313h3f234b3_0 
  tqdm               conda-forge/noarch::tqdm-4.67.1-pyhd8ed1ab_1 
  typeguard          conda-forge/noarch::typeguard-4.4.4-pyhd8ed1ab_0 
  typing-extensions  conda-forge/noarch::typing-extensions-4.15.0-h396c80c_0 
  typing-inspection  conda-forge/noarch::typing-inspection-0.4.1-pyhd8ed1ab_0 
  typing_extensions  conda-forge/noarch::typing_extensions-4.15.0-pyhcf101f3_0 
  urllib3            conda-forge/noarch::urllib3-2.5.0-pyhd8ed1ab_0 
  xorg-libxau        conda-forge/linux-64::xorg-libxau-1.0.12-hb9d3cd8_0 
  xorg-libxdmcp      conda-forge/linux-64::xorg-libxdmcp-1.1.5-hb9d3cd8_0 
  yaml               conda-forge/linux-64::yaml-0.2.5-h280c20c_3 
  zipp               conda-forge/noarch::zipp-3.23.0-pyhd8ed1ab_0 
  zstandard          conda-forge/linux-64::zstandard-0.23.0-py313h07c4f96_3 


Proceed ([y]/n)? y


Downloading and Extracting Packages:
                                                                                                                      
Preparing transaction: done                                                                                           
Verifying transaction: done                                                                                           
Executing transaction: done                                                                                           
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ multiqc --version
multiqc, version 1.30                                                                                                 
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$ conda list                                                   
# packages in environment at /home/blaqworkbs/miniconda3/envs/Biocomputing_env:                                       
#                                                                                                                     
# Name                       Version          Build                 Channel                                           
_libgcc_mutex                0.1              conda_forge           conda-forge                                       
_openmp_mutex                4.5              2_gnu                 conda-forge                                       
_python_abi3_support         1.0              hd8ed1ab_2            conda-forge                                       
annotated-types              0.7.0            pyhd8ed1ab_1          conda-forge                                       
attrs                        25.3.0           pyh71513ae_0          conda-forge                                       
bcftools                     1.22             h3a4d415_1            bioconda                                          
bedtools                     2.31.1           h13024bc_3            bioconda                                          
blast                        2.17.0           h66d330f_0            bioconda                                          
brotli-python                1.1.0            py313h46c70d0_3       conda-forge                                       
bwa                          0.7.19           h577a1d6_1            bioconda                                          
bzip2                        1.0.8            h4bc722e_7            conda-forge                                       
c-ares                       1.34.5           hb9d3cd8_0            conda-forge                                       
ca-certificates              2025.8.3         hbd8a1cb_0            conda-forge                                       
certifi                      2025.8.3         pyhd8ed1ab_0          conda-forge                                       
cffi                         1.17.1           py313hfab6e84_0       conda-forge                                       
charset-normalizer           3.4.3            pyhd8ed1ab_0          conda-forge                                       
click                        8.2.1            pyh707e725_0          conda-forge                                       
colorama                     0.4.6            pyhd8ed1ab_1          conda-forge
coloredlogs                  15.0.1           pyhd8ed1ab_4          conda-forge
colormath                    3.0.0            pyhd8ed1ab_4          conda-forge
cpython                      3.13.5           py313hd8ed1ab_102     conda-forge
curl                         8.14.1           h332b0f4_0            conda-forge
entrez-direct                24.0             he881be0_0            bioconda
expat                        2.7.1            hecca717_0            conda-forge
font-ttf-dejavu-sans-mono    2.37             hab24e00_0            conda-forge
font-ttf-inconsolata         3.000            h77eed37_0            conda-forge
font-ttf-source-code-pro     2.038            h77eed37_0            conda-forge
font-ttf-ubuntu              0.83             h77eed37_3            conda-forge
fontconfig                   2.15.0           h7e30c49_1            conda-forge
fonts-conda-forge            1                0                     conda-forge
freetype                     2.13.3           ha770c72_1            conda-forge
gsl                          2.7              he838d99_0            conda-forge
h2                           4.3.0            pyhcf101f3_0          conda-forge
hpack                        4.1.0            pyhd8ed1ab_0          conda-forge
htslib                       1.22.1           h566b1c6_0            bioconda
humanfriendly                10.0             pyh707e725_8          conda-forge
humanize                     4.13.0           pyhd8ed1ab_0          conda-forge
hyperframe                   6.1.0            pyhd8ed1ab_0          conda-forge
idna                         3.10             pyhd8ed1ab_1          conda-forge
importlib-metadata           8.7.0            pyhe01879c_1          conda-forge
jinja2                       3.1.6            pyhd8ed1ab_0          conda-forge
jsonschema                   4.25.1           pyhe01879c_0          conda-forge
jsonschema-specifications    2025.4.1         pyh29332c3_0          conda-forge
kaleido-core                 0.2.1            h3644ca4_0            conda-forge
keyutils                     1.6.3            hb9d3cd8_0            conda-forge
krb5                         1.21.3           h659f571_0            conda-forge
lcms2                        2.17             h717163a_0            conda-forge
ld_impl_linux-64             2.44             h1423503_1            conda-forge
lerc                         4.0.0            h0aef613_1            conda-forge
libasprintf                  0.25.1           h3f43e3d_1            conda-forge
libblas                      3.9.0            34_h59b9bed_openblas  conda-forge
libcblas                     3.9.0            34_he106b2a_openblas  conda-forge
libcurl                      8.14.1           h332b0f4_0            conda-forge
libdeflate                   1.24             h86f0d12_0            conda-forge
libedit                      3.1.20250104     pl5321h7949ede_0      conda-forge
libev                        4.33             hd590300_2            conda-forge
libexpat                     2.7.1            hecca717_0            conda-forge
libffi                       3.4.6            h2dba641_1            conda-forge
libfreetype                  2.13.3           ha770c72_1            conda-forge
libfreetype6                 2.13.3           h48d6fc4_1            conda-forge
libgcc                       15.1.0           h767d61c_4            conda-forge
libgcc-ng                    15.1.0           h69a702a_4            conda-forge
libgettextpo                 0.25.1           h3f43e3d_1            conda-forge
libgfortran                  15.1.0           h69a702a_4            conda-forge
libgfortran-ng               15.1.0           h69a702a_4            conda-forge
libgfortran5                 15.1.0           hcea5267_4            conda-forge
libgomp                      15.1.0           h767d61c_4            conda-forge
libiconv                     1.18             h3b78370_2            conda-forge
libidn2                      2.3.8            ha4ef2c3_0            conda-forge
libjpeg-turbo                3.1.0            hb9d3cd8_0            conda-forge
liblapack                    3.9.0            34_h7ac8fdf_openblas  conda-forge
liblzma                      5.8.1            hb9d3cd8_2            conda-forge
libmpdec                     4.0.0            hb9d3cd8_0            conda-forge
libnghttp2                   1.64.0           h161d5f1_0            conda-forge
libopenblas                  0.3.30           pthreads_h94d23a6_2   conda-forge
libpng                       1.6.50           h421ea60_1            conda-forge
libsqlite                    3.50.4           h0c1763c_0            conda-forge
libssh2                      1.11.1           hcf80075_0            conda-forge
libstdcxx                    15.1.0           h8f9b012_4            conda-forge
libstdcxx-ng                 15.1.0           h4852527_4            conda-forge
libtiff                      4.7.0            h8261f1e_6            conda-forge
libunistring                 0.9.10           h7f98852_0            conda-forge
libuuid                      2.38.1           h0b41bf4_0            conda-forge
libwebp-base                 1.6.0            hd42ef1d_0            conda-forge
libxcb                       1.17.0           h8a09558_0            conda-forge
libxcrypt                    4.4.36           hd590300_1            conda-forge
libzlib                      1.3.1            hb9d3cd8_2            conda-forge
markdown                     3.8.2            pyhd8ed1ab_0          conda-forge
markdown-it-py               4.0.0            pyhd8ed1ab_0          conda-forge
markupsafe                   3.0.2            py313h8060acc_1       conda-forge
mathjax                      2.7.7            ha770c72_3            conda-forge
mdurl                        0.1.2            pyhd8ed1ab_1          conda-forge
mpi                          1.0              openmpi               conda-forge
multiqc                      1.30             pyhdfd78af_1          bioconda
narwhals                     2.2.0            pyhcf101f3_0          conda-forge
natsort                      8.4.0            pyh29332c3_1          conda-forge
ncbi-vdb                     3.2.1            h9948957_0            bioconda
ncurses                      6.5              h2d0b736_3            conda-forge
networkx                     3.5              pyhe01879c_0          conda-forge
nspr                         4.37             h29cc59b_0            conda-forge
nss                          3.115            hc3c8bcf_0            conda-forge
numpy                        2.3.2            py313hf6604e3_2       conda-forge
openjpeg                     2.5.3            h55fea9a_1            conda-forge
openmpi                      4.1.6            hc5af2df_101          conda-forge
openssl                      3.5.2            h26f9b46_0            conda-forge
packaging                    25.0             pyh29332c3_1          conda-forge
perl                         5.32.1           7_hd590300_perl5      conda-forge
perl-archive-tar             3.04             pl5321hdfd78af_0      bioconda
perl-carp                    1.50             pl5321hd8ed1ab_0      conda-forge
perl-common-sense            3.75             pl5321hd8ed1ab_0      conda-forge
perl-compress-raw-bzip2      2.213            pl5321hda65f42_0      conda-forge
perl-compress-raw-zlib       2.213            pl5321h4dac143_0      conda-forge
perl-encode                  3.21             pl5321hb9d3cd8_1      conda-forge
perl-exporter                5.74             pl5321hd8ed1ab_0      conda-forge
perl-exporter-tiny           1.002002         pl5321hd8ed1ab_0      conda-forge
perl-extutils-makemaker      7.70             pl5321hd8ed1ab_0      conda-forge
perl-io-compress             2.213            pl5321h503566f_0      bioconda
perl-io-zlib                 1.15             pl5321hdfd78af_1      bioconda
perl-json                    4.10             pl5321hdfd78af_1      bioconda
perl-json-xs                 4.03             pl5321h9948957_4      bioconda
perl-list-moreutils          0.430            pl5321hdfd78af_0      bioconda
perl-list-moreutils-xs       0.430            pl5321h7b50bb2_5      bioconda
perl-parent                  0.243            pl5321hd8ed1ab_0      conda-forge
perl-pathtools               3.75             pl5321hb9d3cd8_2      conda-forge
perl-scalar-list-utils       1.70             pl5321hb03c661_0      conda-forge
perl-storable                3.15             pl5321hb9d3cd8_2      conda-forge
perl-types-serialiser        1.01             pl5321hdfd78af_0      bioconda
pillow                       11.3.0           py313h8db990d_0       conda-forge
pip                          25.2             pyh145f28c_0          conda-forge
plotly                       6.3.0            pyhd8ed1ab_0          conda-forge
polars-lts-cpu               1.32.3           py39h5734d0f_0        conda-forge
pthread-stubs                0.4              hb9d3cd8_1002         conda-forge
pyaml-env                    1.2.2            pyhd8ed1ab_0          conda-forge
pycparser                    2.22             pyh29332c3_1          conda-forge
pydantic                     2.11.7           pyh3cfb1c2_0          conda-forge
pydantic-core                2.33.2           py313h4b2b08d_0       conda-forge
pygments                     2.19.2           pyhd8ed1ab_0          conda-forge
pysocks                      1.7.1            pyha55dd90_7          conda-forge
python                       3.13.5           hec9711d_102_cp313    conda-forge
python-dotenv                1.1.1            pyhe01879c_0          conda-forge
python-gil                   3.13.5           h4df99d1_102          conda-forge
python-kaleido               0.2.1            pyhd8ed1ab_0          conda-forge
python_abi                   3.13             8_cp313               conda-forge
pyyaml                       6.0.2            py313h8060acc_2       conda-forge
readline                     8.2              h8c095d6_2            conda-forge
referencing                  0.36.2           pyh29332c3_0          conda-forge
regex                        2025.7.34        py313h07c4f96_0       conda-forge
requests                     2.32.5           pyhd8ed1ab_0          conda-forge
rich                         14.1.0           pyhe01879c_0          conda-forge
rich-click                   1.8.9            pyhd8ed1ab_0          conda-forge
rpds-py                      0.27.1           py313h843e2db_0       conda-forge
samtools                     1.22.1           h96c455f_0            bioconda
spades                       4.2.0            h8d6e82b_1            bioconda
spectra                      0.0.11           pyhd8ed1ab_2          conda-forge
sqlite                       3.50.4           hbc0de68_0            conda-forge
tiktoken                     0.9.0            py313h3f234b3_0       conda-forge
tk                           8.6.13           noxft_hd72426e_102    conda-forge
tqdm                         4.67.1           pyhd8ed1ab_1          conda-forge
typeguard                    4.4.4            pyhd8ed1ab_0          conda-forge
typing-extensions            4.15.0           h396c80c_0            conda-forge
typing-inspection            0.4.1            pyhd8ed1ab_0          conda-forge
typing_extensions            4.15.0           pyhcf101f3_0          conda-forge
tzdata                       2025b            h78e105d_0            conda-forge
urllib3                      2.5.0            pyhd8ed1ab_0          conda-forge
wget                         1.21.4           hda4d442_0            conda-forge
xorg-libxau                  1.0.12           hb9d3cd8_0            conda-forge
xorg-libxdmcp                1.1.5            hb9d3cd8_0            conda-forge
yaml                         0.2.5            h280c20c_3            conda-forge
zipp                         3.23.0           pyhd8ed1ab_0          conda-forge
zlib                         1.3.1            hb9d3cd8_2            conda-forge
zstandard                    0.23.0           py313h07c4f96_3       conda-forge
zstd                         1.5.7            hb8e6e7a_2            conda-forge
(Biocomputing_env) blaqworkbs@cs-821307412311-default:~$  conda deactivate
(funtools) blaqworkbs@cs-821307412311-default:~$ 

Linkedln video link:https://www.linkedin.com/posts/oluwadamilare-babatunde-397b68234_hackbio-bioinformatics-activity-7368003429052350465-oVjP?utm_source=share&utm_medium=member_desktop&rcm=ACoAADqMYiMBnH6dSqjpizU2ox8Wm2dD39LGE6Q