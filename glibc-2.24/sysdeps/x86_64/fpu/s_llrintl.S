/* Round argument to nearest integral value according to current rounding
   direction.
   Copyright (C) 1997-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

#include <sysdep.h>

	.text
ENTRY(__llrintl)
	fldt	8(%rsp)
	fistpll	-8(%rsp)
	fwait
	movq	-8(%rsp),%rax
	ret
END(__llrintl)
weak_alias (__llrintl, llrintl)
#ifndef __ILP32__
strong_alias (__llrintl, __lrintl)
weak_alias (__llrintl, lrintl)
#endif
