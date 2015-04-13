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
        integer, parameter :: nhyper = (size(props) - nqlv * 2) / 2
        real(dp), parameter :: sigma0(3, 3) = sigma
        integer :: k1, k2, k3, k4, alpha
        real(dp) :: h0(3, 3, nqlv), xi(nqlv), sigma1(3, 3)
        ! Initialize then sum up for all terms
        do alpha = 1, nqlv

        end do


    end subroutine qlv

end module qlvmod
