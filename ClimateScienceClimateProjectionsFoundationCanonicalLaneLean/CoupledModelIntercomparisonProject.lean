import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure CMIPScenario where
  scenarioName : String
  rcpValue : ℝ
  temperatureProjection2100 : ℝ
  seaLevelRiseProjection2100 : ℝ
  modelCount : ℕ
  projectionVerified : Prop

structure CMIPScenarioEvidence (C : CMIPScenario) where
  scenarioNameClosed : C.scenarioName = "RCP8.5"
  rcpValueClosed : C.rcpValue = 8.5
  temperatureProjection2100Closed : C.temperatureProjection2100 = 4.3
  seaLevelRiseProjection2100Closed : C.seaLevelRiseProjection2100 = 0.8
  modelCountClosed : C.modelCount = 42
  projectionVerifiedClosed : C.projectionVerified

def CMIPScenarioClosed (C : CMIPScenario) : Prop :=
  C.scenarioName = "RCP8.5" ∧
  C.rcpValue = 8.5 ∧
  C.temperatureProjection2100 = 4.3 ∧
  C.seaLevelRiseProjection2100 = 0.8 ∧
  C.modelCount = 42 ∧
  C.projectionVerified

theorem cmip_scenario_closed_from_evidence (C : CMIPScenario) (Ev : CMIPScenarioEvidence C) :
    CMIPScenarioClosed C := by
  exact And.intro Ev.scenarioNameClosed
    (And.intro Ev.rcpValueClosed
      (And.intro Ev.temperatureProjection2100Closed
        (And.intro Ev.seaLevelRiseProjection2100Closed
          (And.intro Ev.modelCountClosed Ev.projectionVerifiedClosed))))

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse