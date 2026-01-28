# install.packages("DiagrammeR")
# install.packages("DiagrammeRsvg")

library(DiagrammeR)
library(DiagrammeRsvg)


#################################################################################
## Main conceptual framework ####

a <- grViz("
digraph boundary_ontology {

  graph [layout = dot, 
        rankdir = LR, 
        bgcolor = white,
        splines = spline, 
        ratio = 0.5,     // height / width; < 1 means wider than tall
        size = \"12,6!\" // W,H force scaling (in inches!)
        ranksep = 0.8,   // smaller: ranks closer together
        nodesep = 0.4   // smaller: nodes in the same rank closer
        ]

  node [shape = rectangle, style = filled, fontsize = 12,
        fontname = Helvetica, color = black]

   // --------------------Main concepts-------------------------
   
  node [fillcolor = \"#D9CBA3\"]
  Discontinuities [label = \"DISCONTINUITIES\"]
  Edges           [label = \"EDGES\"]
  SymbolicBoundaries [label = \"SYMBOLIC BOUNDARIES\"]

  node [fillcolor = \"#9EC0C9\"]
  SocialBoundaries [label = \"SOCIAL BOUNDARIES\"]

  node [fillcolor = \"#D8B9A8\"]
  SocialL    [label = \"Social\"]
  SpatialL   [label = \"Spatial\"]
  TemporalL  [label = \"Temporal\"]
  Functional [label = \"Functional\"]
  Morpholog  [label = \"Morphological\"]
  Political  [label = \"Political\"]
  SocialR    [label = \"Social\"]
  SymbolicR  [label = \"Symbolic\"]

  // -----------------------RANKS------------------------
  // Column 0: left stack
  { rank = same; SocialL; SpatialL; TemporalL }
  
  // Column 1: 
  { rank = same; Text1; Discontinuities }
  
  // Column 2: dimensions from Edges (vertical stack)
  { rank = same; Text2; Edges; Functional; Morpholog; Political; SocialR; SymbolicR}
  
  // Column 3: 
  { rank = same; SymbolicBoundaries }

  // Column 4: 
   { rank = same; SocialBoundaries }
  
  //--------------------- TEXT-----------------------------
  
    Text1 [
    label = \"Ontological condition\",
    shape = none,
    fontcolor = red,
    fontsize = 12,
    fontname = \"Helvetica-Bold\",
    style = \"\"
  ]
  
    Text1 -> Discontinuities [style=invis]

    Text2 [
    label = \"Epistemological condition\",
    shape = none,
    fontcolor = red,
    fontsize = 12,
    fontname = \"Helvetica-Bold\",
    style = \"\"
  ]
  
   Text2 -> Edges [style=invis]
   
    Text3 [
    label = \"Categorical contruct\",
    shape = none,
    fontcolor = red,
    fontsize = 12,
    fontname = \"Helvetica-Bold\",
    style = \"\"
  ]
  
   Text3 -> SocialBoundaries [style=invis]
   
  //--------------------- EDGES-----------------------------

  SocialL   -> Discontinuities:w 
  SpatialL  -> Discontinuities:w [label = \"Are manifested as\", fontsize = 10]
  TemporalL -> Discontinuities:w
  
  Discontinuities -> Edges [label = \"Could generate\", fontsize = 10]
  Edges -> Discontinuities [label = \"Contains\", fontsize = 10]
  Edges -> Discontinuities [label = \"Generate\", fontsize = 10]

  Edges -> SymbolicBoundaries  [label = \"Could generate\", fontsize = 10, minlen = 1]
  SymbolicBoundaries -> Edges  [label = \"Contains\", fontsize = 10]
  SymbolicBoundaries -> Edges  [label = \"Generate\", fontsize = 10]

  SymbolicBoundaries -> SocialBoundaries  [label = \"Could generate\", fontsize = 10, minlen = 1]
  SocialBoundaries -> SymbolicBoundaries  [label = \"Contains\", fontsize = 10]
  SocialBoundaries -> SymbolicBoundaries  [label = \"Could Generate\", fontsize = 10]

  //Arrows from south into west
  Edges:s -> Functional:e  
  Edges:s -> Morpholog:e
  Edges:s -> Political:e
  Edges:s -> SocialR:e
  Edges:s -> SymbolicR:e [headlabel = \"Expressed as\", fontsize = 10, labeldistance = 4.2]
}
")

#################################################################################
## Conceptual frame work, 1st try ####

b <- grViz("
digraph retail_fragmentation {

  # --- Graph Layout & Orientation (Left to Right) ---
  graph [layout = dot, rankdir = LR, nodesep = 0.5, ranksep = 0.8]

  # --- Node Definitions ---
  node [shape = box, style = filled, fontsize = 12, width = 2.5]

  # Ontological Layer
  ontology [label = 'ONTOLOGY:\\nAnisotropic Space\\n(Space is inherently discontinuous)', fillcolor = '#E1F5FE']
  discontinuity [label = 'Discontinuities\\n(Loci of change in variables)', fillcolor = '#E1F5FE']

  # Epistemological Layer
  epistemology [label = 'EPISTEMOLOGY:\\nLimits / Edges\\n(Socially constructed lines defining categories)', fillcolor = '#FFF9C4']
  bifurcation [label = 'Nature of the Limit', fillcolor = '#FFF9C4']

  # Bifurcation Branches (Parallel Mechanisms)
  social_boundaries [label = 'SOCIAL BOUNDARIES\\n(Rapid change of interaction densities)', fillcolor = '#FFCCBC']
  barrier [label = 'BARRIER\\n(Impedes permeability)', fillcolor = '#FFCCBC']

  # Outcome Node
  market_frag [label = 'Manifests as\\nmarket fragmentation:\\n\\n• Food oases\\n• Alternative finance institutions\\n• Retail gentrification', shape = note, fillcolor = '#E1BEE7', align = 'left']

  # --- Edges & Connections ---
  edge [fontname = 'Helvetica', fontsize = 10, color = '#616161']

  # Ontology -> Discontinuity
  ontology -> discontinuity [label = ' Manifests as']

  # Discontinuity -> Epistemology
  discontinuity -> epistemology [label = ' Cognitively organized into']

  # Epistemology -> Bifurcation
  epistemology -> bifurcation [label = ' Manifests as']

  # Bifurcation -> Branches
  bifurcation -> social_boundaries [label = ' High Interaction Change']
  bifurcation -> barrier [label = ' Permeability Block']

  # Branches -> Outcome (Convergent)
  social_boundaries -> market_frag [label = ' Manifests as market\\nfragmentation']
  barrier -> market_frag [label = ' Manifests as market\\nfragmentation']
}
  ")

#################################################################################
## Nested Spatial Scales Framework #### Peplexity.ai generated

c <- grViz("
digraph nested_spatial_scales {
  
  graph [rankdir = TB, fontname = Helvetica, compound = true]
  node [shape = box, fontname = Helvetica]
  edge [fontname = Helvetica]
  
  // SCALE 1
  subgraph cluster_scale1 {
    label = 'SCALE 1: LSOA Boundary - Edge Itensity (EI) Level'
    fontsize = 14
    color = lightblue
    style = filled
    fillcolor = lightcyan
    
    { rank = same; LSOA_A; BOUNDARY; LSOA_B; }
    
    LSOA_A [
      label = 'LSOA A\\nSocioeconomic\\nProfile',
      style = filled, fillcolor = lightblue
    ]
    
    BOUNDARY [
      label = 'BOUNDARY\\nEI measure',
      style = filled, fillcolor = lightblue
    ]
    
    LSOA_B [
      label = 'LSOA B\\nSocioeconomic\\nProfile',
      style = filled, fillcolor = lightblue
    ]
    
    LSOA_A -> BOUNDARY [label = 'Influences', dir = both]
    BOUNDARY -> LSOA_B [label = 'Influences', dir = both]
    
  }
  
  // SCALE 2
  subgraph cluster_scale2 {
    label = 'SCALE 2: Within-LSOA Retail Composition (Meso-Scale)'
    fontsize = 14
    color = palegreen3
    style = filled
    fillcolor = honeydew
    aplha = 0.2
    
    { rank = same; RETAIL_A; RETAIL_B; }
    
    RETAIL_A [
      label = 'Retail in LSOA A\\n\\nType A: Diverse independent, external networks\\n\\nType B: Homogenized chains\\n\\nType C: Parallel worlds, high segregation',
      style = filled, fillcolor = palegreen3, width = 4, aplha = 0.8
    ]
    
    RETAIL_B [
      label = 'Retail in LSOA B\\n\\nType A: Diverse independent, external networks\\n\\nType B: Homogenized chains\\n\\nType C: Parallel worlds, high segregation',
      style = filled, fillcolor = palegreen3, width = 4, aplha = 0.8
    ]
  }
  
  // OUTCOME
  OUTCOME [
    label = 'BOUNDARY\\n(Edge intensity)',
    shape = box, style = filled, fillcolor = gold, width = 5
  ]
  
  // SCALE 3
  subgraph cluster_scale3 {
    label = 'SCALE 3: Cross-LSOA Relational Ties (Actual Mechanism)'
    fontsize = 14
    color = lightyellow
    style = filled
    fillcolor = lightyellow
    
    TIES [
      label = 'Cross-Boundary Ties\\nInter-catergory networks • Proprietor collaboration',
      style = filled, fillcolor = lightyellow, width = 6
    ]
  }
  
  // KEY RELATIONSHIP
  KEY_REL [
    label = 'KEY RELATIONSHIP\\nEdge intensity + Retail Composition (both LSOAs) + Cross-boundary Ties = Boundary Function',
    shape = box, style = 'filled,bold', fillcolor = gold, width = 7, fontsize = 12
  ]
  
  // SCENARIOS
  subgraph cluster_scenarios {
    label = 'EXAMPLE SCENARIOS'
    fontsize = 14
    color = white
    
    { rank = same; SC1; SC2; SC3; }
    
    SC1 [
      label = 'Scenario 1\\nWalworth Rd & Camberwell\\n\\nHigh EI + Type A (both)\\n+ Strong ties\\n→ GRADUAL transition\\n(Weak boundary)',
      style = filled, fillcolor = lightblue, width = 2.5
    ]
    
    SC2 [
      label = 'Scenario 2\\nWhite City & Shepherd\\'s Bush\\n\\nHigh EI + Type B (both)\\n+ Weak ties\\n→ HARSH transition\\n(Social boundary)',
      style = filled, fillcolor = lightcoral, width = 2.5
    ]
    
    SC3 [
      label = 'Scenario 3\\nEast Ham\\n\\nLow EI + Type C (both)\\n+ Weak-hidden ties\\n→ HIDDEN barrier\\ndespite low EI',
      style = filled, fillcolor = lightyellow, width = 2.5
    ]
  }
  
  // Invisible nodes to center alignment
  inv1 [style = invis]
  inv2 [style = invis]
  inv3 [style = invis]
  
  // Connections
  LSOA_A -> RETAIL_A [ltail = cluster_scale1, lhead = cluster_scale2, label = 'Shapes']
  LSOA_B -> RETAIL_B [ltail = cluster_scale1, lhead = cluster_scale2, label = 'Shapes']
  
  RETAIL_A -> OUTCOME
  RETAIL_B -> OUTCOME
  
  OUTCOME -> TIES [lhead = cluster_scale3]
  
  TIES -> KEY_REL
  
  KEY_REL -> SC1 [lhead = cluster_scenarios]
  KEY_REL -> SC2 [lhead = cluster_scenarios]
  KEY_REL -> SC3 [lhead = cluster_scenarios]
}
")

#################################################################################

d <- grViz("
 digraph {
    # ATTRIBUTES
   graph [layout = dot, rankdir = LR, splines=ortho, nodesep=0.6]
   node [shape = box, style = rounded, fontname = Helvetica, fontsize=11]
   edge [fontname = Helvetica, fontsize=12, color=gray50]
   
    # PHASE 1: ONTOLOGICAL
   subgraph cluster_ontology {
     label = 'I. ONTOLOGICAL PHASE\n(The Underlying Reality of Difference)';
     style = 'rounded,filled';
     fillcolor = LightGray;
     fontname = Helvetica;
      discontinuity [label = '1. DISCONTINUITIES\n\nObjective spatial differences in social,\neconomic, or physical variables.\n(Physical Form: Transition Zone)'];
   }
    # PHASE 2: EPISTEMOLOGICAL
   subgraph cluster_epistemology {
     label = 'II. EPISTEMOLOGICAL PHASE\n(Perception & Social Construction)';
     style = 'rounded,filled';
     fillcolor = LightSkyBlue;
     fontname = Helvetica;
     edges [label = '2. EDGES\n(Intersubjective Level)\n\nA collectively recognized line that\ndelineates a discontinuity.'];
     symbolic [label = '1. SYMBOLIC BOUNDARIES\n(Individual Level)\n\nAn individual`s cognitive distinctions\n(`us vs. them`) that categorize discontinuities.'];
     social_boundary [label = '3. SOCIAL BOUNDARIES\n(Group Level)\n\nAn Edge activated by a group to\nmodulate social interactions.'];
   }
    # PHASE 3: EXPRESSION & MEASUREMENT
   subgraph cluster_expression {
     label = 'III. EXPRESSION & MEASUREMENT PHASE\n(Observable Forms & Quantification)';
     style = 'rounded,filled';
     fillcolor = LightBlue;
     fontname = Helvetica;
      forms [label = '1. FORMS OF EXPRESSION:\nBOUNDARIES\n\nTangible forms a Social Boundary takes:\nMorphological, Political, Social,\nFunctional, Symbolic.'];
     multiplex [label = '2. OVERALL STRUCTURAL STATE:\nMULTIPLEX SEGREGATION\n\nThe societal condition resulting from the\ncombination of different Boundaries.'];
     intensity [label = '3. QUANTIFICATION:\nEDGE INTENSITY\n\nThe quantitative measurement of the steepness\nof a Discontinuity at a recognized Edge.'];
   }
   
    # EDGES DEFINING THE FLOW
   discontinuity   -> symbolic        [lhead=cluster_epistemology, minlen=2, label=' Is perceived and\ncategorized by\nindividuals via... '];
   symbolic        -> edges           [label=' Are shared and\nvalidated by a\ngroup to form... '];
   edges           -> social_boundary [label=' Are activated by a\ngroup to become... '];
   social_boundary -> forms           [ltail=cluster_epistemology, lhead=cluster_expression, minlen=2, label=' Manifests in\ntangible forms as... '];
   
    # Connect the outcome/measurement nodes
   forms -> multiplex [minlen=2, label=' The combination of which\ncreates the state of... '];
   intensity -> edges [dir=back, style=dashed, label=' quantifies '];
 }
 ")

#################################################################################
## Export graphs #### 

writeLines(export_svg(a), "Main_conceptual_framework-Boundaries.svg")
writeLines(export_svg(c), "Spatial_scales_framework.svg")
writeLines(export_svg(d), "Main_conceptual_framework-Boundaries_v2.svg")
