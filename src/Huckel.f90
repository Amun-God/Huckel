module Huckel
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, Huckel!"
  end subroutine say_hello
end module Huckel
