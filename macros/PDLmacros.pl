
sub _PDLmacros_init {
#       DEBUG_MESSAGE("PDLmacros",@SpecialFunctions::EXPORT_OK);
#       The following modules allow the bessel functions to work using PDL
#       For a complete list of PDL modules available see pdl.perl.org/PDLdocs

        foreach my $t (@PDL::EXPORT_OK){
                *{$t} = *{"PDL::$t"}
                }
        foreach my $t (@PDL::Math::EXPORT_OK){
                *{$t} = *{"PDL::Math::$t"}
                }
        foreach my $t (@PDL::Core::EXPORT_OK){
                *{$t} = *{"PDL::Core::$t"}
                }
        foreach my $t (@PDL::Bad::EXPORT_OK){
                *{$t} = *{"PDL::Bad::$t"}
                }

}
######################################

1;

