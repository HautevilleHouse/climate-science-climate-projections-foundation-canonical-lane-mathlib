import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure DecadalPredictionPackage where
  initialCondition : Prop
  oceanHeatUptake : Prop
  aerosolForcing : Prop
  naturalVariability : Prop
  skillScore : Prop

structure DecadalPredictionEvidence (D : DecadalPredictionPackage) where
  initialConditionClosed : D.initialCondition
  oceanHeatUptakeClosed : D.oceanHeatUptake
  aerosolForcingClosed : D.aerosolForcing
  naturalVariabilityClosed : D.naturalVariability
  skillScoreClosed : D.skillScore

def DecadalPredictionClosed (D : DecadalPredictionPackage) : Prop :=
  D.initialCondition ∧ D.oceanHeatUptake ∧ D.aerosolForcing ∧ D.naturalVariability ∧ D.skillScore

theorem decadal_prediction_closed_from_evidence (D : DecadalPredictionPackage)
    (E : DecadalPredictionEvidence D) : DecadalPredictionClosed D := by
  exact And.intro E.initialConditionClosed
    (And.intro E.oceanHeatUptakeClosed
      (And.intro E.aerosolForcingClosed
        (And.intro E.naturalVariabilityClosed E.skillScoreClosed)))

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse