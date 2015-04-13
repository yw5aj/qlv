module qlvmod
    !!! Module for the Holzapfel QLV model
    !!! Need to compile with the assigned hyperelastic module
    use umatutils, only: dp
    use hypermod, only: hyper, hyperpk2
    implicit none

contains
    subroutine qlv (dt, f, props, nqlv, sigma, ccj, siso, svol)
        !! Takes UMAT input and spits out stress and ccj
        real(dp), intent(in) :: dt, f(3, 3), props(:)
        integer, intent(in) :: nqlv
        real(dp), intent(inout) :: sigma(3, 3), ccj(3, 3, 3, 3),&
            siso(3, 3), svol(3, 3)
    end subroutine qlv

end module qlvmod
