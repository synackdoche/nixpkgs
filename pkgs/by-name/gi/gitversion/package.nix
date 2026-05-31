{
  lib,
  buildDotnetGlobalTool,
}:
buildDotnetGlobalTool rec {
  pname = "dotnet-gitversion";
  nugetName = "GitVersion.Tool";
  version = "6.7.0";

  nugetHash = "sha256-fW3tuq1K2u1fJHaVN9Gl0Cn8UKRZFP4rNOLCm80jp9Q=";

  meta = {
    description = "Versioning when using Git, solved. GitVersion looks at your git history and works out the Semantic Version of the commit being built.";
    homepage = "https://gitversion.net/";
    changelog = "https://github.com/GitTools/GitVersion/releases/tag/${version}";
    downloadPage = "https://github.com/GitTools/GitVersion";
    license = lib.licenses.mit;
    platforms = lib.platforms.linux ++ lib.platforms.windows ++ lib.platforms.darwin;
    maintainers = with lib.maintainers; [ ];
  };
}
