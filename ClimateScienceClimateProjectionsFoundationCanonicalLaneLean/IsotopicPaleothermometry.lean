import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  isotopeRatio : Type u
  temperatureProxy : Type v
  fractionationFactor : Type w
  calibrationCurve : Prop
  temperatureReconstruction : Prop
  proxyConsistency : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  calibrationCurveClosed : I.calibrationCurve
  temperatureReconstructionClosed : I.temperatureReconstruction
  proxyConsistencyClosed : I.proxyConsistency

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.calibrationCurve ∧ I.temperatureReconstruction ∧ I.proxyConsistency

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometryPackage)
    (E : IsotopicPaleothermometryEvidence I) : IsotopicPaleothermometryClosed I := by
  exact And.intro E.calibrationCurveClosed
    (And.intro E.temperatureReconstructionClosed E.proxyConsistencyClosed)

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse