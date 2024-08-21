// Copyright(C) 2022 Lars Pontoppidan. All rights reserved.
module c

// Chipmunk2D v7.0.3 https://github.com/slembcke/Chipmunk2D @ 68d1f31

pub const used_import = 1 // TODO

#flag -I @VMODROOT/c/wren/src/include
#flag -I @VMODROOT/c/wren/src/vm
#flag -I @VMODROOT/c/wren/src/optional
#flag -lm

$if prod {
	#define NDEBUG 1
}

#include "wren.h"

#flag @VMODROOT/c/wren/src/vm/wren_compiler.o
#flag @VMODROOT/c/wren/src/vm/wren_core.o
#flag @VMODROOT/c/wren/src/vm/wren_debug.o
#flag @VMODROOT/c/wren/src/optional/wren_opt_meta.o
#flag @VMODROOT/c/wren/src/optional/wren_opt_random.o
#flag @VMODROOT/c/wren/src/vm/wren_primitive.o
#flag @VMODROOT/c/wren/src/vm/wren_utils.o
#flag @VMODROOT/c/wren/src/vm/wren_value.o
#flag @VMODROOT/c/wren/src/vm/wren_vm.o
