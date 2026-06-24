{inputs, ...}: {
  imports = [inputs.omnisearch.nixosModules.default];

  services.omnisearch = {
    enable = false;
    settings = {
      server = {
        host = "0.0.0.0";
        port = 8087;
        domain = "http://localhost:8087";
      };
    };
  };
}
