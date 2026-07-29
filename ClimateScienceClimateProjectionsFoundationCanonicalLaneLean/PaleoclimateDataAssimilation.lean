import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure PaleoclimateDataAssimilation where
  proxyCount : ℕ
  reconstructionMethod : String
  spatialCoverage : ℝ
  temporalResolution : ℝ
  reconstructionUncertainty : ℝ
  assimilationValidated : Prop

structure PaleoclimateDataAssimilationEvidence (P : PaleoclimateDataAssimilation) where
  proxyCountClosed : P.proxyCount = 500
  reconstructionMethodClosed : P.reconstructionMethod = "PCA"
  spatialCoverageClosed : P.spatialCoverage = 0.8
  temporalResolutionClosed : P.temporalResolution = 100.0
  reconstructionUncertaintyClosed : P.reconstructionUncertainty = 0.2
  assimilationValidatedClosed : P.assimilationValidated

def PaleoclimateDataAssimilationClosed (P : PaleoclimateDataAssimilation) : Prop :=
  P.proxyCount = 500 ∧
  P.reconstructionMethod = "PCA" ∧
  P.spatialCoverage = 0.8 ∧
  P.temporalResolution = 100.0 ∧
  P.reconstructionUncertainty = 0.2 ∧
  P.assimilationValidated

theorem paleoclimate_data_assimilation_closed_from_evidence (P : PaleoclimateDataAssimilation) (Ev : PaleoclimateDataAssimilationEvidence P) :
    PaleoclimateDataAssimilationClosed P := by
  exact And.intro Ev.proxyCountClosed
    (And.intro Ev.reconstructionMethodClosed
      (And.intro Ev.spatialCoverageClosed
        (And.intro Ev.temporalResolutionClosed
          (And.intro Ev.reconstructionUncertaintyClosed Ev.assimilationValidatedClosed))))

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse