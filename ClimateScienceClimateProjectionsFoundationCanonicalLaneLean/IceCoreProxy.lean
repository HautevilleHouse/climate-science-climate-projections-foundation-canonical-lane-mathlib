import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure IceCoreProxyPackage where
  isotopicRecord : Prop
  gasTrapping : Prop
  chronology : Prop
  paleoTemperature : Prop

structure IceCoreProxyEvidence (I : IceCoreProxyPackage) where
  isotopicRecordClosed : I.isotopicRecord
  gasTrappingClosed : I.gasTrapping
  chronologyClosed : I.chronology
  paleoTemperatureClosed : I.paleoTemperature

def IceCoreProxyClosed (I : IceCoreProxyPackage) : Prop :=
  I.isotopicRecord ∧ I.gasTrapping ∧ I.chronology ∧ I.paleoTemperature

theorem ice_core_proxy_closed_from_evidence (I : IceCoreProxyPackage)
    (E : IceCoreProxyEvidence I) : IceCoreProxyClosed I := by
  exact And.intro E.isotopicRecordClosed
    (And.intro E.gasTrappingClosed
      (And.intro E.chronologyClosed E.paleoTemperatureClosed))

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse