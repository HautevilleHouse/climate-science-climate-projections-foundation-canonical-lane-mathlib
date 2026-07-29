import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure MilankovitchCyclesPackage where
  orbitalEccentricity : Type u
  axialObliquity : Type v
  precession : Type w
  insolationAnomaly : Type t
  orbitalForcingComputed : Prop
  insolationResponse : Prop
  climateResponse : Prop

structure MilankovitchCyclesEvidence (C : MilankovitchCyclesPackage) where
  orbitalForcingComputedClosed : C.orbitalForcingComputed
  insolationResponseClosed : C.insolationResponse
  climateResponseClosed : C.climateResponse

def MilankovitchCyclesClosed (C : MilankovitchCyclesPackage) : Prop :=
  C.orbitalForcingComputed ∧ C.insolationResponse ∧ C.climateResponse

theorem milankovitch_cycles_closed_from_evidence (C : MilankovitchCyclesPackage)
    (E : MilankovitchCyclesEvidence C) : MilankovitchCyclesClosed C := by
  exact And.intro E.orbitalForcingComputedClosed
    (And.intro E.insolationResponseClosed E.climateResponseClosed)

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse