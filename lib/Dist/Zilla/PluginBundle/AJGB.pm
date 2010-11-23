use strict;
use warnings;
package Dist::Zilla::PluginBundle::AJGB;
BEGIN {
  $Dist::Zilla::PluginBundle::AJGB::VERSION = '1.103270';
}
# ABSTRACT: Dist::Zilla plugins for AJGB

use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';


sub configure {
    my $self = shift;

    my $payload = $self->payload;

    $self->add_bundle('Basic');

    $self->add_plugins(
        qw(
            MetaConfig
            ModuleBuild
            PodCoverageTests
            PodSyntaxTests
            PkgVersion
            MetaJSON

            CheckChangesHasContent
            CheckExtraTests
            CompileTests
            EOLTests
            NoTabsTests
            InstallGuide
            KwaliteeTests
            PortabilityTests
            ReadmeFromPod
        ),
        (
            defined $payload->{version} && $payload->{vesion} =~ /\./ ? () :
            [
                AutoVersion => {
                    major => $payload->{version} || 1
                }
            ]
        ),
        [
            AutoMetaResources => {
                'repository.github' => 'user:ajgb',
                'bugtracker.rt' => 1,
                'homepage' => 'http://search.cpan.org/dist/%{dist}',
            },
        ],
        [
            Authority => {
                authority => 'cpan:AJGB',
                do_metadata => 1,
            }
        ],
        [
            PodWeaver => {
                config_plugin => '@AJGB',
            }
        ],
    );
}

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Dist::Zilla::PluginBundle::AJGB - Dist::Zilla plugins for AJGB

=head1 VERSION

version 1.103270

=head1 SYNOPSIS

    # dist.ini
    [@AJGB]

=head1 DESCRIPTION

This is the plugin bundle for AJGB. It's an equivalent to:

    [@Basic]

    [AutoMetaResources]
    bugtracker.rt = 1
    repository.github = user:ajgb
    homepage = http://search.cpan.org/dist/%{dist}

    [MetaConfig]
    [ModuleBuild]
    [PodCoverageTests]
    [PodSyntaxTests]
    [PkgVersion]
    [AutoVersion]

    [CheckChangesHasContent]
    [CheckExtraTests]
    [CompileTests]
    [EOLTests]
    [NoTabsTests]
    [InstallGuide]
    [KwaliteeTests]
    [PortabilityTests]
    [ReadmeFromPod]

    [Authority]
    authority = cpan:AJGB
    do_metadata = 1

    [PodWeaver]
    config_plugin = @AJGB

=for Pod::Coverage     configure

=head1 AUTHOR

Alex J. G. Burzyński <ajgb@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Alex J. G. Burzyński <ajgb@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

