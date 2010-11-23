
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Dist::Zilla plugins for AJGB',
  'dist_author' => [
    'Alex J. G. Burzyński <ajgb@cpan.org>'
  ],
  'dist_name' => 'Dist-Zilla-PluginBundle-AJGB',
  'dist_version' => '1.103270',
  'license' => 'perl',
  'module_name' => 'Dist::Zilla::PluginBundle::AJGB',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Dist::Zilla' => '4.102342',
    'Dist::Zilla::Plugin::Authority' => '0',
    'Dist::Zilla::Plugin::AutoMetaResources' => '0',
    'Dist::Zilla::Plugin::AutoVersion' => '0',
    'Dist::Zilla::Plugin::CheckChangesHasContent' => '0',
    'Dist::Zilla::Plugin::CheckExtraTests' => '0',
    'Dist::Zilla::Plugin::CompileTests' => '0',
    'Dist::Zilla::Plugin::EOLTests' => '0',
    'Dist::Zilla::Plugin::InstallGuide' => '0',
    'Dist::Zilla::Plugin::KwaliteeTests' => '0',
    'Dist::Zilla::Plugin::MetaConfig' => '0',
    'Dist::Zilla::Plugin::MetaJSON' => '0',
    'Dist::Zilla::Plugin::ModuleBuild' => '0',
    'Dist::Zilla::Plugin::NoTabsTests' => '0',
    'Dist::Zilla::Plugin::PkgVersion' => '0',
    'Dist::Zilla::Plugin::PodCoverageTests' => '0',
    'Dist::Zilla::Plugin::PodSyntaxTests' => '0',
    'Dist::Zilla::Plugin::PodWeaver' => '0',
    'Dist::Zilla::Plugin::PortabilityTests' => '0',
    'Dist::Zilla::Plugin::ReadmeFromPod' => '0',
    'Moose' => '1.12',
    'Pod::Weaver::Plugin::Encoding' => '0',
    'Pod::Weaver::Section::SeeAlso' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
