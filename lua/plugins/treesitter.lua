return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "rust",
        "toml",
        "yaml",
        "go",
        "astro",
        "cmake",
        "cpp",
        "fish",
        "css",
        "gitignore",
        "graphql",
        "http",
        "java",
        "php",
        "scss",
        "sql",
        "svelte",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
