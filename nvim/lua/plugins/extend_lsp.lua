return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      snyk_ls = {
        init_options = {
          activateSnykCode = "true",
          trustedFolders = {
            "/Users/williamhouston/code/val-barcoder",
            "/Users/williamhouston/code/val-doc-storage",
          }
        },
      },
    },
  },
}
