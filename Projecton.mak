# Generated by the VisualDSP++ IDDE

# Note:  Any changes made to this Makefile will be lost the next time the
# matching project file is loaded into the IDDE.  If you wish to preserve
# changes, rename this file and run it externally to the IDDE.

# The syntax of this Makefile is such that GNU Make v3.77 or higher is
# required.

# The current working directory should be the directory in which this
# Makefile resides.

# Supported targets:
#     Projecton_Debug
#     Projecton_Debug_clean

# Define this variable if you wish to run this Makefile on a host
# other than the host that created it and VisualDSP++ may be installed
# in a different directory.

ADI_DSP=C:\Program Files (x86)\Analog Devices\VisualDSP 5.1.2


# $VDSP is a gmake-friendly version of ADI_DIR

empty:=
space:= $(empty) $(empty)
VDSP_INTERMEDIATE=$(subst \,/,$(ADI_DSP))
VDSP=$(subst $(space),\$(space),$(VDSP_INTERMEDIATE))

RM=cmd /C del /F /Q

#
# Begin "Projecton_Debug" configuration
#

ifeq ($(MAKECMDGOALS),Projecton_Debug)

Projecton_Debug : ./Debug/Projecton.dxe 

./Debug/buffers.doj :./buffers.asm ./den.dat ./g.dat ./h.dat ./num.dat 
	@echo ".\buffers.asm"
	$(VDSP)/easmblkfn.exe .\buffers.asm -proc ADSP-BF533 -file-attr ProjectName=Projecton -g -o .\Debug\buffers.doj -MM

./Debug/fir.doj :./fir.asm 
	@echo ".\fir.asm"
	$(VDSP)/easmblkfn.exe .\fir.asm -proc ADSP-BF533 -file-attr ProjectName=Projecton -g -o .\Debug\fir.doj -MM

./Debug/FirDelay.doj :./FirDelay.asm 
	@echo ".\FirDelay.asm"
	$(VDSP)/easmblkfn.exe .\FirDelay.asm -proc ADSP-BF533 -file-attr ProjectName=Projecton -g -o .\Debug\FirDelay.doj -MM

Debug/Initialize.doj :Initialize.c Talkthrough.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/cdefBF533.h $(VDSP)/Blackfin/include/cdefBF532.h $(VDSP)/Blackfin/include/defBF532.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/sysreg.h $(VDSP)/Blackfin/include/fract.h $(VDSP)/Blackfin/include/fract_math.h $(VDSP)/Blackfin/include/fr2x16_math.h $(VDSP)/Blackfin/include/fr2x16_base.h $(VDSP)/Blackfin/include/r2x16_base.h $(VDSP)/Blackfin/include/fract2float_conv.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/sys/05000311.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h 
	@echo ".\Initialize.c"
	$(VDSP)/ccblkfn.exe -c .\Initialize.c -file-attr ProjectName=Projecton -g -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -sdram -warn-protos -proc ADSP-BF533 -o .\Debug\Initialize.doj -MM

Debug/ISR.doj :ISR.c Talkthrough.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/cdefBF533.h $(VDSP)/Blackfin/include/cdefBF532.h $(VDSP)/Blackfin/include/defBF532.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/sysreg.h $(VDSP)/Blackfin/include/fract.h $(VDSP)/Blackfin/include/fract_math.h $(VDSP)/Blackfin/include/fr2x16_math.h $(VDSP)/Blackfin/include/fr2x16_base.h $(VDSP)/Blackfin/include/r2x16_base.h $(VDSP)/Blackfin/include/fract2float_conv.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/sys/05000311.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h 
	@echo ".\ISR.c"
	$(VDSP)/ccblkfn.exe -c .\ISR.c -file-attr ProjectName=Projecton -g -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -sdram -warn-protos -proc ADSP-BF533 -o .\Debug\ISR.doj -MM

Debug/main.doj :main.c Talkthrough.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/cdefBF533.h $(VDSP)/Blackfin/include/cdefBF532.h $(VDSP)/Blackfin/include/defBF532.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/sysreg.h $(VDSP)/Blackfin/include/fract.h $(VDSP)/Blackfin/include/fract_math.h $(VDSP)/Blackfin/include/fr2x16_math.h $(VDSP)/Blackfin/include/fr2x16_base.h $(VDSP)/Blackfin/include/r2x16_base.h $(VDSP)/Blackfin/include/fract2float_conv.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/sys/05000311.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h 
	@echo ".\main.c"
	$(VDSP)/ccblkfn.exe -c .\main.c -file-attr ProjectName=Projecton -g -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -sdram -warn-protos -proc ADSP-BF533 -o .\Debug\main.doj -MM

./Debug/overdrive.asm.doj :./overdrive.asm.asm 
	@echo ".\overdrive.asm.asm"
	$(VDSP)/easmblkfn.exe .\overdrive.asm.asm -proc ADSP-BF533 -file-attr ProjectName=Projecton -g -o .\Debug\overdrive.asm.doj -MM

Debug/Process_data.doj :Process_data.c Talkthrough.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/cdefBF533.h $(VDSP)/Blackfin/include/cdefBF532.h $(VDSP)/Blackfin/include/defBF532.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/sysreg.h $(VDSP)/Blackfin/include/fract.h $(VDSP)/Blackfin/include/fract_math.h $(VDSP)/Blackfin/include/fr2x16_math.h $(VDSP)/Blackfin/include/fr2x16_base.h $(VDSP)/Blackfin/include/r2x16_base.h $(VDSP)/Blackfin/include/fract2float_conv.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/sys/05000311.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h $(VDSP)/Blackfin/include/math.h $(VDSP)/Blackfin/include/ymath.h $(VDSP)/Blackfin/include/math_bf.h 
	@echo ".\Process_data.c"
	$(VDSP)/ccblkfn.exe -c .\Process_data.c -file-attr ProjectName=Projecton -g -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -sdram -warn-protos -proc ADSP-BF533 -o .\Debug\Process_data.doj -MM

./Debug/Projecton.dxe :$(VDSP)/Blackfin/ldf/adsp-BF533.ldf $(VDSP)/Blackfin/lib/bf532_rev_0.5/crtsf532y.doj ./Debug/buffers.doj ./Debug/fir.doj ./Debug/FirDelay.doj ./Debug/Initialize.doj ./Debug/ISR.doj ./Debug/main.doj ./Debug/overdrive.asm.doj ./Debug/Process_data.doj $(VDSP)/Blackfin/lib/bf532_rev_0.5/__initsbsz532.doj $(VDSP)/Blackfin/lib/cplbtab533.doj $(VDSP)/Blackfin/lib/bf532_rev_0.5/crtn532y.doj $(VDSP)/Blackfin/lib/bf532_rev_0.5/libsmall532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libio532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libc532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/librt_fileio532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libevent532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libcpp532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libf64ieee532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libdsp532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libsftflt532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libetsi532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/Debug/libssl532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/Debug/libdrv532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/Debug/libusb532y.dlb $(VDSP)/Blackfin/lib/bf532_rev_0.5/libprofile532y.dlb 
	@echo "Linking..."
	$(VDSP)/ccblkfn.exe .\Debug\buffers.doj .\Debug\fir.doj .\Debug\FirDelay.doj .\Debug\Initialize.doj .\Debug\ISR.doj .\Debug\main.doj .\Debug\overdrive.asm.doj .\Debug\Process_data.doj -L .\Debug -add-debug-libpaths -flags-link -MDUSE_CACHE -flags-link -od,.\Debug -o .\Debug\Projecton.dxe -proc ADSP-BF533 -MM

endif

ifeq ($(MAKECMDGOALS),Projecton_Debug_clean)

Projecton_Debug_clean:
	-$(RM) ".\Debug\buffers.doj"
	-$(RM) ".\Debug\fir.doj"
	-$(RM) ".\Debug\FirDelay.doj"
	-$(RM) "Debug\Initialize.doj"
	-$(RM) "Debug\ISR.doj"
	-$(RM) "Debug\main.doj"
	-$(RM) ".\Debug\overdrive.asm.doj"
	-$(RM) "Debug\Process_data.doj"
	-$(RM) ".\Debug\Projecton.dxe"
	-$(RM) ".\Debug\*.ipa"
	-$(RM) ".\Debug\*.opa"
	-$(RM) ".\Debug\*.ti"
	-$(RM) ".\Debug\*.pgi"
	-$(RM) ".\*.rbld"

endif

