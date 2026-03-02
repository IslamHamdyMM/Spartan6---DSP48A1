@echo off

set vlib_exec="C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/vlib"
if not exist %vlib_exec%.exe (
  echo "** ERROR: vlib path '%vlib_exec%' does not exist"
  exit /B 1 
)

set vmap_exec="C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/vmap"
if not exist %vmap_exec%.exe (
  echo "** ERROR: vmap path '%vmap_exec%' does not exist"
  exit /B 1 
)

copy E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/qcache/AN/modelsim.ini .

rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/./work
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini work E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/./work
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/./work')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../std
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini std E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../std
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../std')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ieee
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini ieee E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ieee
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ieee')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vital2000
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini vital2000 E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vital2000
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vital2000')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../verilog
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini verilog E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../verilog
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../verilog')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../std_developerskit
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini std_developerskit E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../std_developerskit
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../std_developerskit')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../synopsys
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini synopsys E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../synopsys
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../synopsys')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../modelsim_lib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini modelsim_lib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../modelsim_lib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../modelsim_lib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../sv_std
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini sv_std E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../sv_std
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../sv_std')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../avm
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mtiAvm E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../avm
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../avm')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../rnm
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mtiRnm E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../rnm
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../rnm')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ovm-2.1.2
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mtiOvm E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ovm-2.1.2
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ovm-2.1.2')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../uvm-1.1d
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mtiUvm E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../uvm-1.1d
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../uvm-1.1d')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../upf_lib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mtiUPF E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../upf_lib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../upf_lib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../pa_lib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mtiPA E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../pa_lib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../pa_lib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../floatfixlib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini floatfixlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../floatfixlib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../floatfixlib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../mc2_lib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mc2_lib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../mc2_lib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../mc2_lib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../flps_lib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini flps_lib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../flps_lib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../flps_lib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../osvvm
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini osvvm E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../osvvm
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../osvvm')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../mgc_ams
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini mgc_ams E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../mgc_ams
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../mgc_ams')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ieee_env
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini ieee_env E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ieee_env
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../ieee_env')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../infact
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini infact E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../infact
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../infact')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vhdlopt_lib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini vhdlopt_lib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vhdlopt_lib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vhdlopt_lib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vh_ux01v_lib
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini vh_ux01v_lib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vh_ux01v_lib
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/C:/QFT_2021.1/QFT_2021.1/QFT/V2021.1/win64/share/modeltech/win64/../vh_ux01v_lib')"
)
rem %vlib_exec% E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/.//qcache/AN/zin_vopt_work
if %errorlevel% EQU 0 ( 
  %vmap_exec% -modelsimini modelsim.ini z0in_work_ctrl E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/.//qcache/AN/zin_vopt_work
) else (
  echo "** Error: Library mapping failed. (Command: 'vlib E:/Digital_IC_Design_Doploma_By_Kareem_W/Project1-DSP48A1/QuestaLint/.//qcache/AN/zin_vopt_work')"
)
