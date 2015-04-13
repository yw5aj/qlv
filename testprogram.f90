program testprogram
    use umatutils, only: dp
    use hypermod, only: hyper
    implicit none
    real(dp) :: dfgrd1(3, 3), props(3), sigma(3, 3), ccj(3, 3, 3, 3)
    dfgrd1 = reshape([1., 0., 0., 0., 1., 0., .45, 0., 1.], [3, 3])
    props = [160e3_dp, 2._dp, .2_dp]
    call hyper(dfgrd1, props, sigma, ccj)
    write (*, *) sigma
end program testprogram

