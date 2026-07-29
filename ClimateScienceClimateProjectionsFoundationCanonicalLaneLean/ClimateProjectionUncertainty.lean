import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure ClimateProjectionUncertaintyPackage where
  emissionScenarioUncertainty : Prop
  modelStructuralUncertainty : Prop
  parameterUncertainty : Prop
  initialConditionUncertainty : Prop
  projectionRange : Prop

structure ClimateProjectionUncertaintyEvidence (C : ClimateProjectionUncertaintyPackage) where
  emissionScenarioUncertaintyClosed : C.emissionScenarioUncertainty
  modelStructuralUncertaintyClosed : C.modelStructuralUncertainty
  parameterUncertaintyClosed : C.parameterUncertainty
  initialConditionUncertaintyClosed : C.initialConditionUncertainty
  projectionRangeClosed : C.projectionRange

def ClimateProjectionUncertaintyClosed (C : ClimateProjectionUncertaintyPackage) : Prop :=
  C.emissionScenarioUncertainty ∧ C.modelStructuralUncertainty ∧ C.parameterUncertainty ∧ C.initialConditionUncertainty ∧ C.projectionRange

theorem climate_projection_uncertainty_closed_from_evidence (C : ClimateProjectionUncertaintyPackage) (E : ClimateProjectionUncertaintyEvidence C) : ClimateProjectionUncertaintyClosed C := by
  exact And.intro E.emissionScenarioUncertaintyClosed
    (And.intro E.modelStructuralUncertaintyClosed
      (And.intro E.parameterUncertaintyClosed
        (And.intro E.initialConditionUncertaintyClosed E.projectionRangeClosed)))

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse
