import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundation

structure IceCoreChronologyPackage where
  annualLayerCounting : Prop
  volcanicEventMarkers : Prop
  gasAgeIceAgeDifference : Prop
  depthAgeRelationship : Prop
  orbitalTuning : Prop

structure IceCoreChronologyEvidence (I : IceCoreChronologyPackage) where
  annualLayerCountingClosed : I.annualLayerCounting
  volcanicEventMarkersClosed : I.volcanicEventMarkers
  gasAgeIceAgeDifferenceClosed : I.gasAgeIceAgeDifference
  depthAgeRelationshipClosed : I.depthAgeRelationship
  orbitalTuningClosed : I.orbitalTuning

def IceCoreChronologyClosed (I : IceCoreChronologyPackage) : Prop :=
  I.annualLayerCounting ∧ I.volcanicEventMarkers ∧ I.gasAgeIceAgeDifference ∧
  I.depthAgeRelationship ∧ I.orbitalTuning

theorem ice_core_chronology_closed_from_evidence
    (I : IceCoreChronologyPackage) (E : IceCoreChronologyEvidence I) :
    IceCoreChronologyClosed I := by
  exact And.intro E.annualLayerCountingClosed
    (And.intro E.volcanicEventMarkersClosed
      (And.intro E.gasAgeIceAgeDifferenceClosed
        (And.intro E.depthAgeRelationshipClosed E.orbitalTuningClosed)))

end ClimateScienceClimateProjectionsFoundation
end HautevilleHouse