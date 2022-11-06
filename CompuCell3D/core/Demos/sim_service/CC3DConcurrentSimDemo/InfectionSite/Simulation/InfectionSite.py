from cc3d import CompuCellSetup

from InfectionSiteSteppables import EffectorProductionSiteSimHandler
CompuCellSetup.register_steppable(steppable=EffectorProductionSiteSimHandler(frequency=1))

from InfectionSiteSteppables import RecruitmentHandlerSteppable
CompuCellSetup.register_steppable(steppable=RecruitmentHandlerSteppable(frequency=1))

from InfectionSiteSteppables import InfectionSteppable
CompuCellSetup.register_steppable(steppable=InfectionSteppable(frequency=1))

from InfectionSiteSteppables import SignalCountingSteppable
CompuCellSetup.register_steppable(steppable=SignalCountingSteppable(frequency=1))

from InfectionSiteSteppables import ChemotaxisSteppable
CompuCellSetup.register_steppable(steppable=ChemotaxisSteppable(frequency=1))

from InfectionSiteSteppables import KillingSteppable
CompuCellSetup.register_steppable(steppable=KillingSteppable(frequency=1))

CompuCellSetup.run()
