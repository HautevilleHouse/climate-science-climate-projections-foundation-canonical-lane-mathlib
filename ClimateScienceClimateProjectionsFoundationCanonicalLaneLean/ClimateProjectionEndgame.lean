import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure ClimateProjectionEndgamePackage where
  projectedTemperatureAnomaly : Prop
  seaLevelRiseEstimate : Prop
  emissionScenarioPathway : Prop
  uncertaintyQuantified : Prop
  policyRelevance : Prop

structure ClimateProjectionEndgameEvidence (C : ClimateProjectionEndgamePackage) where
  projectedTemperatureAnomalyClosed : C.projectedTemperatureAnomaly
  seaLevelRiseEstimateClosed : C.seaLevelRiseEstimate
  emissionScenarioPathwayClosed : C.emissionScenarioPathway
  uncertaintyQuantifiedClosed : C.uncertaintyQuantified
  policyRelevanceClosed : C.policyRelevance

def ClimateProjectionEndgameClosed (C : ClimateProjectionEndgamePackage) : Prop :=
  C.projectedTemperatureAnomaly ∧ C.seaLevelRiseEstimate ∧ C.emissionScenarioPathway ∧ C.uncertaintyQuantified ∧ C.policyRelevance

theorem climate_projection_endgame_closed_from_evidence (C : ClimateProjectionEndgamePackage) (E : ClimateProjectionEndgameEvidence C) :
    ClimateProjectionEndgameClosed C := by
  exact And.intro E.projectedTemperatureAnomalyClosed (And.intro E.seaLevelRiseEstimateClosed (And.intro E.emissionScenarioPathwayClosed (And.intro E.uncertaintyQuantifiedClosed E.policyRelevanceClosed)))

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse
