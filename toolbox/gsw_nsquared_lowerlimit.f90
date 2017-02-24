!==========================================================================
elemental function gsw_nsquared_lowerlimit (p)
!==========================================================================
!
!  Calculates the minimum buoyancy (Brunt-Vaisala) frequency squared (N^2)
!  such that a cast is stable.
!
!  p  =  sea pressure                                              [ dbar ]
!         ( i.e. absolute pressure - 10.1325 dbar )
!
!  nsquared_lowerlimit  = Minimum Brunt-Vaisala Frequency squared [ 1/s^2 ]
!
!==========================================================================

use gsw_mod_kinds

implicit none

real (r8), intent(in) :: p

real (r8) :: gsw_nsquared_lowerlimit

gsw_nsquared_lowerlimit = (0.25_r8 + 0.75_r8*(exp(-p/1000.0_r8))) * 1e-7_r8

return
end function

!--------------------------------------------------------------------------
