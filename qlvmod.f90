module qlvmod
    !!! Module for the Holzapfel QLV model
    !!! Need to compile with the assigned hyperelastic module
    use umatutils, only: dp
    use hypermod, only: hyper
    implicit none

contains
    subroutine qlv (dt, f, hyperprops, qlvprops, sigma, ccj)
        !! Takes UMAT input and spits out stress and ccj
        real(dp), intent(in) :: dt, f(3, 3), hyperprops(:), qlvprops(:)
        real(dp), intent(inout) :: sigma(3, 3), ccj(3, 3, 3, 3)
        integer :: k1, k2, k3, k4, alpha
        real(dp) :: h0(3, 3, size(qlvprops) / 2), xi(size(qlvprops) / 2),&
            sigma1(3, 3), tau(size(qlvprops) / 2), beta(size(qlvprops) / 2)
        ! Initialize then sum up for all terms
        beta = qlvprops(::2)
        tau = qlvprops(1::2)
        xi = -dt / 2 / tau
    end subroutine qlv

end module qlvmod
