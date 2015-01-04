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


package APR::ThreadRWLock;

use strict;
use warnings FATAL => 'all';


use APR ();
use APR::XSLoader ();
our $VERSION = '0.009000';
APR::XSLoader::load __PACKAGE__;



1;
__END__

=head1 NAME

APR::ThreadRWLock - Perl API for APR thread read/write locks

=head1 Synopsis

  use APR::ThreadRWLock ();

  my $mutex = APR::ThreadRWLock->new($r->pool);
  $mutex->rdlock;
  $mutex->wrlock;
  $mutex->tryrdlock;
  $mutex->trywrlock;
  $mutex->unlock;


=head1 Description

C<APR::ThreadRWLock> interfaces APR thread read/write locks.

See F<srclib/apr/locks/unix/thread_rwlock.c> in your Apache source tree.
At the time of this writing these methods are not supported on all
platforms. Thus, check your libraries!




=head1 API

C<APR::ThreadRWLock> provides the following functions and/or methods:


=head1 Unsupported API

C<APR::ThreadRWLock> also provides auto-generated Perl interface for a
few other methods which aren't tested at the moment and therefore
their API is a subject to change. These methods will be finalized
later as a need arises. If you want to rely on any of the following
methods please contact the L<the mod_perl development mailing
list|maillist::dev> so we can help each other take the steps necessary
to shift the method to an officially supported API.





=head2 C<DESTROY>

META: Autogenerated - needs to be reviewed/completed

Destroy the lock and free the associated memory.

  $lock->DESTROY();

=over 4

=item obj: C<$lock>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )

the lock to destroy.

=item ret: no return value

=item since: subject to change

=back





=head2 C<rdlock>

META: Autogenerated - needs to be reviewed/completed

Acquire the read lock for the given lock. The calling thread acquires the
read lock if a writer does not hold the lock and there are  no  writers
blocked on the lock. Otherwize it is put to sleep until these conditions
are met.

  $ret = $lock->rdlock();

=over 4

=item obj: C<$lock>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )

the lock on which to acquire the lock.

=item ret: C<$ret> ( integer )

=item since: subject to change


=back



=head2 C<tryrdlock>

META: Autogenerated - needs to be reviewed/completed

Performs the same operation as C<rdlock> with the exception that the
function shall fail if the thread would be blocked.

  $ret = $lock->tryrdlock();

=over 4

=item obj: C<$lock>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )

the lock on which to acquire the lock.

=item ret: C<$ret> ( integer )

=item since: subject to change


=back



=head2 C<wrlock>

META: Autogenerated - needs to be reviewed/completed

Acquire the write lock for the given lock. The calling thread acquires the
write lock if if no other thread (reader or writer) holds it. Otherwize it
is put to sleep until this condition is met.

  $ret = $lock->wrlock();

=over 4

=item obj: C<$lock>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )

the lock on which to acquire the lock.

=item ret: C<$ret> ( integer )

=item since: subject to change


=back



=head2 C<trywrlock>

META: Autogenerated - needs to be reviewed/completed

Performs the same operation as C<wrlock> with the exception that the
function shall fail if the thread would be blocked.

  $ret = $lock->trywrlock();

=over 4

=item obj: C<$lock>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )

the lock on which to acquire the lock.

=item ret: C<$ret> ( integer )

=item since: subject to change


=back



=head2 C<new>

Create a new lock

  my $lock = APR::ThreadRWLock->new($p);

=over

=item obj: C<APR::ThreadRWLock> ( class name )

=item arg1: C<$p>
( C<L<APR::Pool object|docs::2.0::api::APR::Pool>> )

=item ret: C<$lock>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )

=item since: subject to change

=back


=head2 C<pool_get>

META: Autogenerated - needs to be reviewed/completed

META: should probably be renamed to pool(), like all other pool
accessors

Get the pool used by this thread_lock.

  $ret = $obj->pool_get();

=over 4

=item obj: C<$obj>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )



=item ret: C<$ret>
( C<L<APR::Pool object|docs::2.0::api::APR::Pool>> )

apr_pool_t the pool

=item since: subject to change

=back





=head2 C<unlock>

META: Autogenerated - needs to be reviewed/completed

Release the lock for the given lock.

  $ret = $lock->unlock();

=over 4

=item obj: C<$lock>
( C<L<APR::ThreadRWLock object|docs::2.0::api::APR::ThreadRWLock>> )

the lock from which to release the lock.

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

