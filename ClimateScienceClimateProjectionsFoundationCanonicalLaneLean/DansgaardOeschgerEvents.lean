import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarming : Type u
  stadialInterstadial : Type v
  iceCoreSignals : Type w
  rapidTransitionDetected : Prop
  northAtlanticSource : Prop
  globalTeleconnection : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  rapidTransitionDetectedClosed : D.rapidTransitionDetected
  northAtlanticSourceClosed : D.northAtlanticSource
  globalTeleconnectionClosed : D.globalTeleconnection

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.rapidTransitionDetected ∧ D.northAtlanticSource ∧ D.globalTeleconnection

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage)
    (E : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro E.rapidTransitionDetectedClosed
    (And.intro E.northAtlanticSourceClosed E.globalTeleconnectionClosed)

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse