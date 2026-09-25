{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.vscode-with-extensions.override {
      vscode = pkgs.vscodium;

      vscodeExtensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        ms-python.python
        ms-azuretools.vscode-docker

        # HTML Preview
        ms-vscode.live-server
      ];
    })
  ];
}
