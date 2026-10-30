program Huckel
  use geom, only: geom_parse
  implicit none
  integer(4)istat,count,i
  character str*256,progname*255
  character(255),allocatable :: command_arguments(:)
  
  call get_command_argument(0,progname,status=istat)
  if (istat == 0) then
     print *, "The program's name is " // trim (progname)
  else
     print *, "Could not get the program's name " // trim (progname)
  endif
  
  count=command_argument_count()
  if (count > 2) then
    print *,'Too much arguments in command line!!!'
    goto 1
  endif
  
  allocate(command_arguments(count))
  do i=1,count
    call get_command_argument(i,command_arguments(i),status=istat)
  enddo

  open(5,file=command_arguments(1))
  do while()


  call geom_parse()
1 end program Huckel
