#!/usr/bin/perl

# A generic program that can be used to learn regex in perl
# It first prompts for the pattern that one is interested in
# It then prompts for the string that needs to be tested for
#   the earlier pattern

$pattern = '^$';
$test = "abcd";
if ($test =~ m/$pattern/) {
    print "matched\n";
    exit;
}
#print "Checking for ", $pattern, "\n";
while(1) {
    print "Enter the pattern we are looking for : ";
    $pattern = <STDIN>;
    chomp $pattern;
    #print "###", $pattern, "###\n";
    if ("$pattern" eq "") {
        print "ok .. bye\n";
        last;
    }

    while (1) {
        print "Enter the string to match the above pattern : ";
        $str = <STDIN>;
        if ($pattern ne '^$') {
            #print "chomping\n";
            chomp $str;
        }
        #print "***", $str, "***\n";
        if ("$str" eq "") {
            #print "ok .. bye\n";
            last;
        }
        $flag = ($str =~ m/$pattern/);
        #print "...", $str, "...\n";
        if ($flag){
            print $str, " matched ", $pattern, "\n";
        }
    } # End of inner while loop
}
