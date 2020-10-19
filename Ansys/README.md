# AnsysModel
All code files with the Ansys model.

To run a simulation follow these steps:

Initialising a new installation / checkout:
a. Change the drive letter and corresponding file paths.
   Variable names: Drive, BaseFolder
b. Create appropiate folders for storing results

New analysis:
Prepare the Index-file:

Add a `*USE, %RunAnalysisMacroName(1)%,`-line for every analysis. Make sure the analysis file does exists.
`*USE, %RunAnalysisMacroName(1)%, [Analysis type 'static'|'modal'], [analysis-file], [analysis name, determines output name], [Skip solve, true -> don't run solve command, only prepare the geometry]`

The analysis file should set a analysisFilename and a table with the models sleeper data.

E.g.
<pre><code>
*DIM, analysisFilename, STRING, 200
analysisFilename(1) = '202_HDPE_Simple_3DIV'

AantalSleepers = 1
W_Divisions = 3

*DEL, Sleepers, NOPR
*DIM, Sleepers, Array, 4, AantalSleepers
Sleepers(1,1) = 2, 202, W_Divisions, K_foundation ! [geometry number from 'possible geometries' file], [sleeper type 201|202, determines the reinforcement size], [Amount of divisions in reinforcement], [foundation stiffness for this sleeper.]

</code></pre>

Also the sleeper material parameters can be altered.

<pre><code>
Materiaal_S = Kunststof_HDPE
Materiaal_W = Staal
Materiaal_RH = Staal
Materiaal_Rail = Staal
</code></pre>
