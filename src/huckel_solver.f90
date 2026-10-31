module huckel_solver
  implicit real(8) (A-H,O-Z)
  private

  public :: diag_F
contains
  subroutine diag_F(F,e,V)
    real(8), intent(inout) :: F(:,:)
    real(8), intent(out) ::  V(:,:),e(:)
    
    call dsyev('V', 'U', n, vectors, n, energies, work, lwork, info)
        
  end subroutine diag_F

end module huckel_solver