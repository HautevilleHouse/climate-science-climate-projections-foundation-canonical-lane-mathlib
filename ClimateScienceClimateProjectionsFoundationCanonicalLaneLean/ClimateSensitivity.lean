import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure ClimateSensitivity where
  co2DoubleLforcing : ℝ
  temperatureResponseEquilibrium : ℝ
  feedbackFactor : ℝ
  transientResponse : ℝ
  equilibriumClimateSensitivity : ℝ
  sensitivityVerified : Prop

structure ClimateSensitivityEvidence (C : ClimateSensitivity) where
  co2DoubleLforcingClosed : C.co2DoubleLforcing = 3.7
  temperatureResponseEquilibriumClosed : C.temperatureResponseEquilibrium = 3.0
  feedbackFactorClosed : C.feedbackFactor = 0.4
  transientResponseClosed : C.transientResponse = 1.6
  equilibriumClimateSensitivityClosed : C.equilibriumClimateSensitivity = 3.0
  sensitivityVerifiedClosed : C.sensitivityVerified

def ClimateSensitivityClosed (C : ClimateSensitivity) : Prop :=
  C.co2DoubleLforcing = 3.7 ∧
  C.temperatureResponseEquilibrium = 3.0 ∧
  C.feedbackFactor = 0.4 ∧
  C.transientResponse = 1.6 ∧
  C.equilibriumClimateSensitivity = 3.0 ∧
  C.sensitivityVerified

theorem climate_sensitivity_closed_from_evidence (C : ClimateSensitivity) (Ev : ClimateSensitivityEvidence C) :
    ClimateSensitivityClosed C := by
  exact And.intro Ev.co2DoubleLforcingClosed
    (And.intro Ev.temperatureResponseEquilibriumClosed
      (And.intro Ev.feedbackFactorClosed
        (And.intro Ev.transientResponseClosed
          (And.intro Ev.equilibriumClimateSensitivityClosed Ev.sensitivityVerifiedClosed))))

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse