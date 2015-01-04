# 
# /*
#  * *********** WARNING **************
#  * This file generated by ModPerl::WrapXS/0.01
#  * Any changes made here will be lost
#  * ***********************************
#  * 01: lib/ModPerl/Code.pm:709
#  * 02: lib/ModPerl/WrapXS.pm:626
#  * 03: lib/ModPerl/WrapXS.pm:1175
#  * 04: /Applications/XAMPP/xamppfiles/var/perl/cpanplus/5.10.1/build/mod_perl-2.0.4/Makefile.PL:423
#  * 05: /Applications/XAMPP/xamppfiles/var/perl/cpanplus/5.10.1/build/mod_perl-2.0.4/Makefile.PL:325
#  * 06: /Applications/XAMPP/xamppfiles/var/perl/cpanplus/5.10.1/build/mod_perl-2.0.4/Makefile.PL:56
#  * 07: /Applications/XAMPP/xamppfiles/bin/cpanp-run-perl:5
#  */
# 


package APR::ThreadMutex;

use strict;
use warnings FATAL => 'all';


use APR ();
use APR::XSLoader ();
our $VERSION = '0.009000';
APR::XSLoader::load __PACKAGE__;



1;
__END__

=head1 NAME

APR::ThreadMutex - Perl API for APR thread mutexes




=head1 Synopsis

  use APR::ThreadMutex ();

  my $mutex = APR::ThreadMutex->new($r->pool);
  $mutex->lock;
  $mutex->unlock;
  $mutex->trylock;


=head1 Description

C<APR::ThreadMutex> interfaces APR thread mutexes.





=head1 API

C<APR::ThreadMutex> provides the following functions and/or methods:


=head1 Unsupported API

C<APR::ThreadMutex> also provides auto-generated Perl interface for a
few other methods which aren't tested at the moment and therefore
their API is a subject to change. These methods will be finalized
later as a need arises. If you want to rely on any of the following
methods please contact the L<the mod_perl development mailing
list|maillist::dev> so we can help each other take the steps necessary
to shift the method to an officially supported API.







=head2 C<DESTROY>

META: Autogenerated - needs to be reviewed/completed

Destroy the mutex and free the memory associated with the lock.

  $mutex->DESTROY();

=over 4

=item obj: C<$mutex>
( C<L<APR::ThreadMutex object|docs::2.0::api::APR::ThreadMutex>> )

the mutex to destroy.

=item ret: no return value

=item since: subject to change

=back





=head2 C<lock>

META: Autogenerated - needs to be reviewed/completed

Acquire the lock for the given mutex. If the mutex is already locked,
the current thread will be put to sleep until the lock becomes available.

  $ret = $mutex->lock();

=over 4

=item obj: C<$mutex>
( C<L<APR::ThreadMutex object|docs::2.0::api::APR::ThreadMutex>> )

the mutex on which to acquire the lock.

=item ret: C<$ret> ( integer )

=item since: subject to change


=back



=head2 C<new>

Create a new mutex

  my $mutex = APR::ThreadMutex->new($p);

=over

=item obj: C<APR::ThreadMutex> ( class name )

=item arg1: C<$p>
( C<L<APR::Pool object|docs::2.0::api::APR::Pool>> )

=item ret: C<$mutex>
( C<L<APR::ThreadMutex object|docs::2.0::api::APR::ThreadMutex>> )

=item since: subject to change

=back


=head2 C<pool_get>

META: Autogenerated - needs to be reviewed/completed

META: should probably be renamed to pool(), like all other pool
accessors

Get the pool used by this thread_mutex.

  $ret = $obj->pool_get();

=over 4

=item obj: C<$obj>
( C<L<APR::ThreadMutex object|docs::2.0::api::APR::ThreadMutex>> )



=item ret: C<$ret>
( C<L<APR::Pool object|docs::2.0::api::APR::Pool>> )

apr_pool_t the pool

=item since: subject to change

=back





=head2 C<trylock>

META: Autogenerated - needs to be reviewed/completed

Attempt to acquire the lock for the given mutex. If the mutex has already
been acquired, the call returns immediately with APR_EBUSY. Note: it
is important that the APR_STATUS_IS_EBUSY(s) macro be used to determine
if the return value was APR_EBUSY, for portability reasons.

  $ret = $mutex->trylock();

=over 4

=item obj: C<$mutex>
( C<L<APR::ThreadMutex object|docs::2.0::api::APR::ThreadMutex>> )

the mutex on which to attempt the lock acquiring.

=item ret: C<$ret>
(integer)


=item since: subject to change

=back





=head2 C<unlock>

META: Autogenerated - needs to be reviewed/completed

Release the lock for the given mutex.

  $ret = $mutex->unlock();

=over 4

=item obj: C<$mutex>
( C<L<APR::ThreadMutex object|docs::2.0::api::APR::ThreadMutex>> )

the mutex from which to release the lock.

=item ret: C<$ret> ( integer )


=item since: subject to change


=back




=head1 See Also

L<mod_perl 2.0 documentation|docs::2.0::index>.




=head1 Copyright

mod_perl 2.0 and its core modules are copyrighted under
The Apache Software License, Version 2.0.




=head1 Authors

L<The mod_perl development team and numerous
contributors|about::contributors::people>.

=cut

