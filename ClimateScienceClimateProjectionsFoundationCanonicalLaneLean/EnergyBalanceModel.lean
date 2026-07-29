import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateProjectionsFoundationCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarInsolation : Type u
  albedo : Type v
  outgoingLongwaveRadiation : Type w
  surfaceTemperature : Type t
  radiativeEquilibrium : Prop
  iceAlbedoFeedback : Prop
  energyConservation : Prop

structure EnergyBalanceModelEvidence (M : EnergyBalanceModelPackage) where
  radiativeEquilibriumClosed : M.radiativeEquilibrium
  iceAlbedoFeedbackClosed : M.iceAlbedoFeedback
  energyConservationClosed : M.energyConservation

def EnergyBalanceModelClosed (M : EnergyBalanceModelPackage) : Prop :=
  M.radiativeEquilibrium ∧ M.iceAlbedoFeedback ∧ M.energyConservation

theorem energy_balance_model_closed_from_evidence (M : EnergyBalanceModelPackage)
    (E : EnergyBalanceModelEvidence M) : EnergyBalanceModelClosed M := by
  exact And.intro E.radiativeEquilibriumClosed
    (And.intro E.iceAlbedoFeedbackClosed E.energyConservationClosed)

end ClimateScienceClimateProjectionsFoundationCanonicalLaneLean
end HautevilleHouse