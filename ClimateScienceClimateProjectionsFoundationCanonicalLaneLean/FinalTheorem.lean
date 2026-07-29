import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceClimateProjectionsFoundationCanonicalLaneLean.BridgeLemmas
import ClimateScienceClimateProjectionsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

def ConstrainedClimateProjectionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_projection_endgame (A : AdmissibleClass) :
    ConstrainedClimateProjectionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse
