! Copyright 2019-2020 Free Software Foundation, Inc.
!
! This program is free software; you can redistribute it and/or modify
! it under the terms of the GNU General Public License as published by
! the Free Software Foundation; either version 2 of the License, or
! (at your option) any later version.
!
! This program is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.
!
! You should have received a copy of the GNU General Public License
! along with this program.  If not, see <http://www.gnu.org/licenses/>.

program max_depth_test
  type :: s1
     integer :: a
  end type s1

  type :: s2
     type (s1) :: b
     integer :: array (5)
  end type s2

  type :: s3
     character(5) :: string
     type (s2) :: c
  end type s3

  type :: s4
     type (s3) :: d
  end type s4

  logical :: l
  type (s4) :: var

  var%d%c%b%a = 1
  var%d%c%array = 0
  var%d%string = "abcde"
  l = .FALSE.					! stop-here
end program max_depth_test
