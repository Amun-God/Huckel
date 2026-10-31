program Huckel
  use geom, only: geom_parse,anames,natoms
  implicit none
  integer(4)istat,count,i,io_stat
  character str*255,progname*255,A*1
  character(255),allocatable :: command_arguments(:)
  
  !call get_command_argument(0,progname,status=istat)
  !if (istat == 0) then
!     print *, "The program's name is " // trim (progname)
!  else
 !    print *, "Could not get the program's name " // trim (progname)
 ! endif
  
  !count=command_argument_count()
  !if (count > 2) then
   ! print *,'Too much arguments in command line!!!'
    !goto 1
  !endif
  
  !allocate(command_arguments(count))
  !do i=1,count
   ! call get_command_argument(i,command_arguments(i),status=istat)
  !enddo

  open(5,file='test.xyz')
  io_stat=0

A: do while(io_stat==0)
    read(5,'(a255)',iostat=io_stat)str
    if (index(str,'geo')>0) then
      do while(io_stat==0)
        read(5,'(a255)',iostat=io_stat)str
        if (len_trim(str)==0) exit A
        call geom_parse(str)
      enddo
    endif
  enddo A
  print *,anames(1:natoms)

  close(7)
1 end program Huckel
