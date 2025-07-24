{
  description = "Hacker Notebook 11ty Development Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            nodejs_20
            nodePackages.npm
            nodePackages.yarn
            git
            nodePackages.prettier
            nodePackages.eslint
          ];

          shellHook = ''
            echo "Hacker Notebook 11ty Development Environment"
            echo "Node.js version: $(node --version)"
            echo "NPM version: $(npm --version)"
            echo ""
            echo "Available commands:"
            echo "  npm start     - Start development server"
            echo "  npm run build - Build for production"
            echo "  npm run watch - Watch for changes"
            echo ""
            
            # Install dependencies if node_modules doesn't exist
            if [ ! -d "node_modules" ]; then
              echo "Installing dependencies..."
              npm install
            fi
          '';
        };
      });
}