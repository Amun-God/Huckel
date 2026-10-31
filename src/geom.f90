module geom
  implicit none
  integer(4),parameter :: n=100
  integer(4) natoms
  character anames(n)*2, separs(2)*2

  data separs /'-','='/

  private

  public :: geom_parse,anames,natoms
contains
  subroutine geom_parse(str)
    character(255),intent(inout) :: str
    !character(2) anames(n) 
    integer(4) keys(2),j,jtmp,i

    anames=' '
    keys=0;j=0;jtmp=0
    natoms=len_trim(str)
    do i=1,len_trim(str)
      do j=1,2
        if (str(i:i)==trim(separs(j))) then
          str(i:i)=' '
          natoms=natoms-1
          keys(j)=keys(j)+1
          exit
        endif
      enddo
    enddo
    
    read(str,*)anames(1:natoms)

  end subroutine geom_parse
end module geom
