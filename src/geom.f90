module geom
  implicit real(A-H,O-Z)
  integer(4),parameter :: n=100
  character anames(n)*2, separs(5)*2

  data separs /'-','--','=','-=','=-'/
  
  private

  public :: geom_parse
contains
  subroutine geom_parse(str,anames)
    character(256),intent(inout) :: str 
    integer(4) keys(5),j,jtmp

    keys=0;j=0;jtmp=0
    do i=1,len_trim(str)
      do j=1,5
        if (str(i:i)==trim(separs(j))) then
          jtmp=jtmp+1
          str(i:i)=' '
          keys(j)=jtmp
          exit
        endif
      enddo
    enddo

  end subroutine geom_parse
end module geom
