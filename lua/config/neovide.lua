if vim.g.neovide then
    -- Neovide設定
    vim.g.neovide_refresh_rate = 80
    vim.g.neovide_refresh_rate_idle = 5

    -- 背景色設定
    vim.g.neovide_transparency = 0.0
    vim.g.transparency = 0.8
    vim.g.neovide_background_color = string.format('#0f1117%x', math.floor(255 * vim.g.transparency))

    -- ぼかし設定
    vim.g.neovide_floating_blur_amount_x = 5.0
    vim.g.neovide_floating_blur_amount_y = 5.0

    -- 全画面表示設定
    vim.g.neovide_fullscreen = false

    -- ウィンドウサイズの記憶設定
    vim.g.neovide_remember_window_size = true

    -- 自動スケーリングに下線を引く設定
    vim.g.neovide_underline_automatic_scaling = true

    -- 入力時のマウスカーソル非表示設定
    vim.g.neovide_hide_mouse_when_typing = true

    -- カーソルアニメーションの長さ設定
    vim.g.neovide_cursor_animation_length = 0.05

    -- スクロールアニメーションの長さ設定
    vim.g.neovide_scroll_animation_length = 0.1

    -- カーソルの軌跡設定
    vim.g.neovide_cursor_trail_size = 0.8

    -- MacOS Alt meta設定
    vim.g.neovide_input_macos_alt_is_meta = false

    -- タッチデッドゾーン設定
    vim.g.neovide_touch_deadzone = 1.0

    -- タッチドラッグタイムアウト設定
    vim.g.neovide_touch_drag_timeout = 0.3

    -- カーソルアニメーション設定
    vim.g.neovide_cursor_vfx_mode = "railgun"
end
