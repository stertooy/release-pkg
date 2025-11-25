LoadPackage("json");

InstallMethod(RecNames, [IsRecord and IsInternalRep], x -> AsSSortedList(REC_NAMES(x)));

InstallMethod(_GapToJsonStreamInternal, [IsOutputStream, IsObject],
  function(o, x)
    PrintTo(o, "null");
  end
);

Read("PackageInfo.g");
if not IsBound(GAPInfo.PackageInfoCurrent) then
  Exec("echo \"::error::Reading PackageInfo.g failed\"");
  ForceQuitGap(2);
fi;
pkginfo := GAPInfo.PackageInfoCurrent;

# ensure uniform PackageDoc
if IsBound(pkginfo.PackageDoc) and not IsList(pkginfo.PackageDoc) then
  pkginfo.PackageDoc := [pkginfo.PackageDoc];
fi;

output := OutputTextFile("package-info.json", false);
GapToJsonStream(output, pkginfo);
CloseStream(output);

QuitGap(0);
