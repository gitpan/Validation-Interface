# ABSTRACT: Powerful Data Validation Framework
package Validation::Interface;

use 5.10.0;

use strict;
use warnings;

# wait, ... lemme put some clothes on.


1;

__END__

=pod

=head1 NAME

Validation::Interface - Powerful Data Validation Framework

=head1 VERSION

version 0.01_01

=head1 SYNOPSIS

    use Validation::Interface::Builder;

    my  $params  = {username => 'admin', password => 's3cret'};
    my  $builder = Validation::Interface::Builder->new(params => $params);

        # check username parameter
        $builder->check('username')->required->between('5-255');
        $builder->filters(['trim', 'strip']);

        # check password parameter
        $builder->check('password')->required->between('5-255')->min_symbols(1);
        $builder->filters(['trim', 'strip']);

        # validate parameters
        die $builder->errors unless $builder->validate;

=head1 DESCRIPTION

Validation::Interface is a scalable data validation library with interfaces for
applications of all sizes. The most common usage of Validation::Interface is to
transform class namespaces into data validation domains where consistency and
reuse are primary concerns. Validation::Interface provides an extensible
framework for defining reusable data validation rules. It ships with a complete
set of pre-defined validations and filters referred to as directives.

Validation::Interface is a complete rewrite of its predecessor,
L<Validation::Class>, bringing a better implementation and object-orientation;
as well as applying the lessons learned and supporting new usages. The main
features are; hierarchical data handling; trait-like validation rules;
validation templates; pre/post input filtering; class inheritance handling;
overriding default error messages; creating custom validators; creating custom
input filters; localization; and more. Validation::Interface promotes DRY (don't
repeat yourself) code. The main benefit in using Validation::Interface is that
the architecture is designed to increase the consistency of data input handling.

=head1 AUTHOR

Al Newkirk <anewkirk@ana.io>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Al Newkirk.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
