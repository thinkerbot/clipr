Gem::Specification.new do |s|
  s.name = "clips"
  s.version = "0.1.0"
  s.author = "Simon Chiang"
  s.email = "simon.chiang@pinnacol.com"
  s.homepage = ""
  s.platform = Gem::Platform::RUBY
  s.summary = ""
  s.require_path = "lib"
  s.rubyforge_project = ""
  s.extensions << "src/extconf.rb"
  
  # add dependencies
  s.add_dependency("ffi", "= 0.5.0")
  s.add_dependency("tap-test", ">= 0.3.0")
  
  s.has_rdoc = true
  s.rdoc_options.concat %W{--main README -S -N --title Clips}
  
  # list extra rdoc files here.
  s.extra_rdoc_files = %W{
    History
    README
  }
  
  # list the files you want to include here.
  s.files = %W{
    src/agenda.c
    src/agenda.h
    src/analysis.c
    src/analysis.h
    src/argacces.c
    src/argacces.h
    src/bload.c
    src/bload.h
    src/bmathfun.c
    src/bmathfun.h
    src/bsave.c
    src/bsave.h
    src/classcom.c
    src/classcom.h
    src/classexm.c
    src/classexm.h
    src/classfun.c
    src/classfun.h
    src/classinf.c
    src/classinf.h
    src/classini.c
    src/classini.h
    src/classpsr.c
    src/classpsr.h
    src/clips.h
    src/clsltpsr.c
    src/clsltpsr.h
    src/cmptblty.h
    src/commline.c
    src/commline.h
    src/conscomp.c
    src/conscomp.h
    src/constant.h
    src/constrct.c
    src/constrct.h
    src/constrnt.c
    src/constrnt.h
    src/crstrtgy.c
    src/crstrtgy.h
    src/cstrcbin.c
    src/cstrcbin.h
    src/cstrccmp.h
    src/cstrccom.c
    src/cstrccom.h
    src/cstrcpsr.c
    src/cstrcpsr.h
    src/cstrnbin.c
    src/cstrnbin.h
    src/cstrnchk.c
    src/cstrnchk.h
    src/cstrncmp.c
    src/cstrncmp.h
    src/cstrnops.c
    src/cstrnops.h
    src/cstrnpsr.c
    src/cstrnpsr.h
    src/cstrnutl.c
    src/cstrnutl.h
    src/default.c
    src/default.h
    src/defins.c
    src/defins.h
    src/developr.c
    src/developr.h
    src/dffctbin.c
    src/dffctbin.h
    src/dffctbsc.c
    src/dffctbsc.h
    src/dffctcmp.c
    src/dffctcmp.h
    src/dffctdef.c
    src/dffctdef.h
    src/dffctpsr.c
    src/dffctpsr.h
    src/dffnxbin.c
    src/dffnxbin.h
    src/dffnxcmp.c
    src/dffnxcmp.h
    src/dffnxexe.c
    src/dffnxexe.h
    src/dffnxfun.c
    src/dffnxfun.h
    src/dffnxpsr.c
    src/dffnxpsr.h
    src/dfinsbin.c
    src/dfinsbin.h
    src/dfinscmp.c
    src/dfinscmp.h
    src/drive.c
    src/drive.h
    src/ed.h
    src/edbasic.c
    src/edmain.c
    src/edmisc.c
    src/edstruct.c
    src/edterm.c
    src/emathfun.c
    src/emathfun.h
    src/engine.c
    src/engine.h
    src/envrnmnt.c
    src/envrnmnt.h
    src/evaluatn.c
    src/evaluatn.h
    src/expressn.c
    src/expressn.h
    src/exprnbin.c
    src/exprnbin.h
    src/exprnops.c
    src/exprnops.h
    src/exprnpsr.c
    src/exprnpsr.h
    src/extconf.rb
    src/extnfunc.c
    src/extnfunc.h
    src/extnruby.c
    src/extnruby.h
    src/factbin.c
    src/factbin.h
    src/factbld.c
    src/factbld.h
    src/factcmp.c
    src/factcmp.h
    src/factcom.c
    src/factcom.h
    src/factfun.c
    src/factfun.h
    src/factgen.c
    src/factgen.h
    src/facthsh.c
    src/facthsh.h
    src/factlhs.c
    src/factlhs.h
    src/factmch.c
    src/factmch.h
    src/factmngr.c
    src/factmngr.h
    src/factprt.c
    src/factprt.h
    src/factqpsr.c
    src/factqpsr.h
    src/factqury.c
    src/factqury.h
    src/factrete.c
    src/factrete.h
    src/factrhs.c
    src/factrhs.h
    src/filecom.c
    src/filecom.h
    src/filertr.c
    src/filertr.h
    src/generate.c
    src/generate.h
    src/genrcbin.c
    src/genrcbin.h
    src/genrccmp.c
    src/genrccmp.h
    src/genrccom.c
    src/genrccom.h
    src/genrcexe.c
    src/genrcexe.h
    src/genrcfun.c
    src/genrcfun.h
    src/genrcpsr.c
    src/genrcpsr.h
    src/globlbin.c
    src/globlbin.h
    src/globlbsc.c
    src/globlbsc.h
    src/globlcmp.c
    src/globlcmp.h
    src/globlcom.c
    src/globlcom.h
    src/globldef.c
    src/globldef.h
    src/globlpsr.c
    src/globlpsr.h
    src/immthpsr.c
    src/immthpsr.h
    src/incrrset.c
    src/incrrset.h
    src/inherpsr.c
    src/inherpsr.h
    src/inscom.c
    src/inscom.h
    src/insfile.c
    src/insfile.h
    src/insfun.c
    src/insfun.h
    src/insmngr.c
    src/insmngr.h
    src/insmoddp.c
    src/insmoddp.h
    src/insmult.c
    src/insmult.h
    src/inspsr.c
    src/inspsr.h
    src/insquery.c
    src/insquery.h
    src/insqypsr.c
    src/insqypsr.h
    src/iofun.c
    src/iofun.h
    src/lgcldpnd.c
    src/lgcldpnd.h
    src/match.h
    src/memalloc.c
    src/memalloc.h
    src/miscfun.c
    src/miscfun.h
    src/modulbin.c
    src/modulbin.h
    src/modulbsc.c
    src/modulbsc.h
    src/modulcmp.c
    src/modulcmp.h
    src/moduldef.c
    src/moduldef.h
    src/modulpsr.c
    src/modulpsr.h
    src/modulutl.c
    src/modulutl.h
    src/msgcom.c
    src/msgcom.h
    src/msgfun.c
    src/msgfun.h
    src/msgpass.c
    src/msgpass.h
    src/msgpsr.c
    src/msgpsr.h
    src/multifld.c
    src/multifld.h
    src/multifun.c
    src/multifun.h
    src/network.h
    src/objbin.c
    src/objbin.h
    src/objcmp.c
    src/objcmp.h
    src/object.h
    src/objrtbin.c
    src/objrtbin.h
    src/objrtbld.c
    src/objrtbld.h
    src/objrtcmp.c
    src/objrtcmp.h
    src/objrtfnx.c
    src/objrtfnx.h
    src/objrtgen.c
    src/objrtgen.h
    src/objrtmch.c
    src/objrtmch.h
    src/parsefun.c
    src/parsefun.h
    src/pattern.c
    src/pattern.h
    src/pprint.c
    src/pprint.h
    src/prccode.c
    src/prccode.h
    src/prcdrfun.c
    src/prcdrfun.h
    src/prcdrpsr.c
    src/prcdrpsr.h
    src/prdctfun.c
    src/prdctfun.h
    src/prntutil.c
    src/prntutil.h
    src/proflfun.c
    src/proflfun.h
    src/reorder.c
    src/reorder.h
    src/reteutil.c
    src/reteutil.h
    src/retract.c
    src/retract.h
    src/router.c
    src/router.h
    src/rulebin.c
    src/rulebin.h
    src/rulebld.c
    src/rulebld.h
    src/rulebsc.c
    src/rulebsc.h
    src/rulecmp.c
    src/rulecmp.h
    src/rulecom.c
    src/rulecom.h
    src/rulecstr.c
    src/rulecstr.h
    src/ruledef.c
    src/ruledef.h
    src/ruledlt.c
    src/ruledlt.h
    src/rulelhs.c
    src/rulelhs.h
    src/rulepsr.c
    src/rulepsr.h
    src/scanner.c
    src/scanner.h
    src/setup.h
    src/sortfun.c
    src/sortfun.h
    src/strngfun.c
    src/strngfun.h
    src/strngrtr.c
    src/strngrtr.h
    src/symblbin.c
    src/symblbin.h
    src/symblcmp.c
    src/symblcmp.h
    src/symbol.c
    src/symbol.h
    src/sysdep.c
    src/sysdep.h
    src/textpro.c
    src/textpro.h
    src/tmpltbin.c
    src/tmpltbin.h
    src/tmpltbsc.c
    src/tmpltbsc.h
    src/tmpltcmp.c
    src/tmpltcmp.h
    src/tmpltdef.c
    src/tmpltdef.h
    src/tmpltfun.c
    src/tmpltfun.h
    src/tmpltlhs.c
    src/tmpltlhs.h
    src/tmpltpsr.c
    src/tmpltpsr.h
    src/tmpltrhs.c
    src/tmpltrhs.h
    src/tmpltutl.c
    src/tmpltutl.h
    src/userdata.c
    src/userdata.h
    src/userfunctions.c
    src/usrsetup.h
    src/utility.c
    src/utility.h
    src/watch.c
    src/watch.h

    lib/clips.rb
    lib/clips/api.rb
    lib/clips/api/agenda.rb
    lib/clips/api/data_object.rb
    lib/clips/api/data_object.rb.ffi
    lib/clips/api/debugging.rb
    lib/clips/api/defclass.rb
    lib/clips/api/deffacts.rb
    lib/clips/api/deffunction.rb
    lib/clips/api/defgeneric.rb
    lib/clips/api/defglobal.rb
    lib/clips/api/definstances.rb
    lib/clips/api/defmethod.rb
    lib/clips/api/defmodule.rb
    lib/clips/api/defrule.rb
    lib/clips/api/deftemplate.rb
    lib/clips/api/environment.rb
    lib/clips/api/fact.rb
    lib/clips/api/instance.rb
    lib/clips/api/io.rb
    lib/clips/api/memory.rb
    lib/clips/api/router.rb
    lib/clips/api/struct/bit_map_hash_node.rb
    lib/clips/api/struct/bit_map_hash_node.rb.ffi
    lib/clips/api/struct/external_address_hash_node.rb
    lib/clips/api/struct/external_address_hash_node.rb.ffi
    lib/clips/api/struct/float_hash_node.rb
    lib/clips/api/struct/float_hash_node.rb.ffi
    lib/clips/api/struct/generic_hash_node.rb
    lib/clips/api/struct/generic_hash_node.rb.ffi
    lib/clips/api/struct/integer_hash_node.rb
    lib/clips/api/struct/integer_hash_node.rb.ffi
    lib/clips/api/struct/symbol_hash_node.rb
    lib/clips/api/struct/symbol_hash_node.rb.ffi
    lib/clips/api_error.rb
    lib/clips/constants.rb
    lib/clips/construct.rb
    lib/clips/defglobals.rb
    lib/clips/defrule.rb
    lib/clips/defrule/action.rb
    lib/clips/defrule/actions.rb
    lib/clips/defrule/condition.rb
    lib/clips/defrule/conditions.rb
    lib/clips/defrule/constraint.rb
    lib/clips/deftemplate.rb
    lib/clips/deftemplate/slot.rb
    lib/clips/deftemplates.rb
    lib/clips/env.rb
    lib/clips/facts.rb
    lib/clips/router.rb
    lib/clips/routers.rb
    lib/clips/utils.rb
  }
end