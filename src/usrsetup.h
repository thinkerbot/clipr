/************************************************************************/
/* Setup for the Clipr version of CLIPS.  This header includes the ruby */
/* headers for system-dependent directives like LLONG_MAX, which        */
/* otherwise go missing on some platforms.                              */
/*                                                                      */
/* Additionally turns off modules that are non-portable or unused by    */
/* Clipr. See the apg (section 2, 2008-02-07) for more details.         */
/************************************************************************/

#ifndef RUBY_HEADERS
#define RUBY_HEADERS            1
#include "ruby.h"
#endif

#undef EXTENDED_MATH_FUNCTIONS
#define EXTENDED_MATH_FUNCTIONS 0

#undef HELP_FUNCTIONS
#define HELP_FUNCTIONS          0

#undef EMACS_EDITOR
#define EMACS_EDITOR            0

#undef PROFILING_FUNCTIONS
#define PROFILING_FUNCTIONS     0
