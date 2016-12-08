package Bencher::Scenario::GetoptLongSpecParsing;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark parsing of Getopt::Long option spec',
    modules => {
        'Getopt::Long::Util' => { version=>0.88 },
    },
    participants => [
        {
            module => 'Getopt::Long::Spec',
            code_template => 'Getopt::Long::Spec->new->parse(<spec>)',
        },
        {
            fcall_template => 'Getopt::Long::Util::parse_getopt_long_opt_spec(<spec>)',
        },
    ],
    datasets => [
        {args=>{spec => 'name=s'}},
        {args=>{spec => 'name|N=s@'}},
    ],
};

1;
# ABSTRACT:
