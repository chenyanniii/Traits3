##########################################################################################
############################### 1. Define UI for application #############################
##########################################################################################
library(shiny)

source("./helper.R")

ui <- fluidPage(
  #### sidebarLayout(sidebarPanel(),mainPanel())
  pageWithSidebar(
    headerPanel("Interactive Learning of Phylogenetic Comparative Methods"),
    sidebarPanel(
      checkboxGroupInput(
        inputId = "checked_species",
        label = "Which species do you want to using for building phylogeny?",
        choices = c("Eryngium_leavenworthii","Polytaenia_nuttalli","Asclepias_asperula",
                    "Centaurea_americana","Coreopsis_lanceolata","Coreopsis_tinctoria",
                    "Echinacea_angustifolia","Gutierrezia_sarothrae","Helianthus_annuus",
                    "Liatris_mucronata","Ratibida_columnifera","Tradescantia_occidentalis",
                    "Astragalus_crassicarpus","Desmanthus_illinoensis","Corydalis_curvisiliqua",
                    "Phacelia_congesta","Herbertia_lahue","Monarda_citriodora","Salvia_azurea",
                    "Salvia_coccinea","Salvia_farinacea","Salvia_lyrata","Linum_rigidum",
                    "Callirhoe_involucrata","Pavonia_lasiopetala","Oenothera_rhombipetala",
                    "Argemone_albiflora","Phytolacca_americana","Rivina_humilis","Andropogon_gerardii",
                    "Aristida_purpurea","Bouteloua_curtipendula","Bouteloua_gracilis", 
                    "Chasmanthium_atifolium","Chloris_cucullata",
                    "Digitaria_ciliaris","Eragrostis_trichodes","Schizachyrium_scoparium",
                    "Sorghastrum_nutans","Sporobolus_airoides","Sporobolus_cryptandrus","Ipomopsis_rubra"),
        selected = c("Eryngium_leavenworthii","Polytaenia_nuttalli","Asclepias_asperula",
                     "Centaurea_americana","Coreopsis_lanceolata","Coreopsis_tinctoria",
                     "Echinacea_angustifolia","Gutierrezia_sarothrae","Helianthus_annuus",
                     "Liatris_mucronata","Ratibida_columnifera","Tradescantia_occidentalis",
                     "Astragalus_crassicarpus","Desmanthus_illinoensis","Corydalis_curvisiliqua",
                     "Phacelia_congesta","Herbertia_lahue","Monarda_citriodora","Salvia_azurea",
                     "Salvia_coccinea","Salvia_farinacea","Salvia_lyrata","Linum_rigidum",
                     "Callirhoe_involucrata","Pavonia_lasiopetala","Oenothera_rhombipetala",
                     "Argemone_albiflora","Phytolacca_americana","Rivina_humilis","Andropogon_gerardii",
                     "Aristida_purpurea","Bouteloua_curtipendula","Bouteloua_gracilis", 
                     "Chasmanthium_atifolium","Chloris_cucullata",
                     "Digitaria_ciliaris","Eragrostis_trichodes","Schizachyrium_scoparium",
                     "Sorghastrum_nutans","Sporobolus_airoides","Sporobolus_cryptandrus","Ipomopsis_rubra")
      )
    ),
    mainPanel(
      p('    This is a shiny application to help user to experience the phylogenetic comparative method. The left hand side allow user to select species. Based on species selection, the display tab will have display related phylogenetic tree, phylogenetic position, phylogenetic signal and model selection results'),
      p('    Please try multiple combination of species and see differences between results of phylogenetic signal culation, the user could understand the sampling of species is critical for phylogenetic signal estimation for the community'),
      tabsetPanel(
        tabPanel("Phylogenetic_Tree", plotOutput("Phylogenetic_Tree"), 
                 p('Phylogenetic tree of species of selected species, which reflect the evolutionary relationship between species.')),
        tabPanel("Phylogenetic_Position", plotOutput("Phylogenetic_Position"),
                 p('Phylogenetic position of selected species, which are calculated based on phylogenetic tree.')),
        tabPanel("Phylogenetic_Signal", tableOutput("Phylogenetic_Signal"),
                 p('Phylogenetic signal of traits, which are culated based on phylogenetic tree and trait value of species.')),
        tabPanel("Model_Selection", tableOutput("Model_Selection"),
                 p('Complete list of potential germination models are evaluated using Akaike information criterion.'))
      )
    )#mainPanel
    )#pageWithsidebar
  )#fluidPage

