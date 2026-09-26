{ ... }:

{
  sops.age.keyFile = "/home/xjle/.config/sops/age/keys.txt";

  sops.defaultSopsFile = ../secrets/github.yaml;

  sops.secrets.github_token = {
    owner = "root";
    group = "root";
    mode = "0400";
  };
}
