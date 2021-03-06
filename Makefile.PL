# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.043.
use strict;
use warnings;



use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Parse cpanfile",
  "AUTHOR" => "Tatsuhiko Miyagawa",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Module-CPANfile",
  "EXE_FILES" => [
    "script/cpanfile-dump",
    "script/mymeta-cpanfile"
  ],
  "LICENSE" => "perl",
  "NAME" => "Module::CPANfile",
  "PREREQ_PM" => {
    "CPAN::Meta" => "2.12091",
    "CPAN::Meta::Prereqs" => "2.12091",
    "JSON::PP" => "2.27300",
    "parent" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => "0.88"
  },
  "VERSION" => "1.1002",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "CPAN::Meta" => "2.12091",
  "CPAN::Meta::Prereqs" => "2.12091",
  "JSON::PP" => "2.27300",
  "Test::More" => "0.88",
  "parent" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
