import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure ClimateProjectionAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  climateModel : Prop
  projectionsValid : Prop
  conclusion : projectionsValid

def ClimateProjectionWitnessClosed (O : ClimateProjectionAdmittedObject) : Prop :=
  O.projectionsValid

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse