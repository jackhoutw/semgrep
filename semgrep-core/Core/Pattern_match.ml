(*s: semgrep/core/Pattern_match.ml *)
(*s: pad/r2c copyright *)
(* Yoann Padioleau
 *
 * Copyright (C) 2019-2021 r2c
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License
 * version 2.1 as published by the Free Software Foundation, with the
 * special exception on linking described in file license.txt.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the file
 * license.txt for more details.
*)
(*e: pad/r2c copyright *)

(*****************************************************************************)
(* Types *)
(*****************************************************************************)

(*s: type [[Match_result.t]] *)
type t = {
  rule: Mini_rule.t;
  file: Common.filename;
  location: Parse_info.token_location * Parse_info.token_location;
  tokens: Parse_info.t list Lazy.t; (* do we need to be lazy? *)
  env: Metavariable.bindings;
}
(*e: type [[Match_result.t]] *)
(*e: semgrep/core/Pattern_match.ml *)
