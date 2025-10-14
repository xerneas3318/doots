return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      api_key_cmd = "echo $OPENAI_API_KEY",
      openai_params = {
        model = "gpt-4o-mini",  -- fast and cheaper
      },
      openai_edit_params = {
        model = "gpt-4o-mini",
      },
      actions_paths = {},
      chat = {
        welcome_message = "Ask me anything 🤖",
        loading_text = "Thinking...",
        question_sign = "",
        answer_sign = "ﮧ",
        max_line_length = 120,
      },
      popup_layout = {
        default = "center",
        center = {
          width = "80%",
          height = "80%",
        },
      },
      popup_window = {
        border = {
          highlight = "FloatBorder",
          style = "rounded",
          text = { top = " ChatGPT " },
        },
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}

