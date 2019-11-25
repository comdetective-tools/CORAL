#define IN_sf_interface

#include "sf_interface_private.h"

//----------------------------------------------------------------------------//
// Top level function to select and call the proper unload_accumulator_array
// function.
//----------------------------------------------------------------------------//

void
unload_accumulator_array( field_array_t * RESTRICT fa,
                          const accumulator_array_t * RESTRICT aa )
{
  if ( !fa              ||
       !aa              ||
       fa->g != aa->g )
  {
    ERROR( ( "Bad args" ) );
  }

  // Conditionally execute this when more abstractions are available.
  unload_accumulator_array_pipeline( fa, aa );
}
