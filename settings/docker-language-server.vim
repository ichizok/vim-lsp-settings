augroup vim_lsp_settings_docker_language_server
  au!
  LspRegisterServer {
      \ 'name': 'docker-language-server',
      \ 'cmd': {server_info->lsp_settings#get('docker-language-server', 'cmd', [lsp_settings#exec_path('docker-language-server')]+lsp_settings#get('docker-language-server', 'args', ['start', '--stdio']))},
      \ 'root_uri':{server_info->lsp_settings#get('docker-language-server', 'root_uri', lsp_settings#root_uri('docker-language-server'))},
      \ 'initialization_options': lsp_settings#get('docker-language-server', 'initialization_options', v:null),
      \ 'allowlist': lsp_settings#get('docker-language-server', 'allowlist', ['dockerfile']),
      \ 'blocklist': lsp_settings#get('docker-language-server', 'blocklist', []),
      \ 'config': lsp_settings#get('docker-language-server', 'config', lsp_settings#server_config('docker-language-server')),
      \ 'workspace_config': lsp_settings#get('docker-language-server', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('docker-language-server', 'semantic_highlight', {}),
      \ }
augroup END
