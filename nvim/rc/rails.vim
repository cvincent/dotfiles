let g:rails_projections = {
      \   "config/routes.rb": {
      \     "command": "routes",
      \   },
      \   "config/application.rb": {
      \     "command": "app",
      \   },
      \   "spec/factories/*.rb": {
      \     "command": "factory",
      \   },
      \   "app/lib/*.rb": {
      \     "command": "alib",
      \     "template": "class %S\nend",
      \     "test": "spec/lib/%s_spec.rb"
      \   },
      \   "app/workers/*_worker.rb": {
      \     "command": "worker",
      \     "template": "class %SWorker\n  include Sidekiq::Worker\n\n  def perform(*args)\n  end\nend",
      \     "test": "spec/workers/%s_worker_spec.rb"
      \   },
      \   "app/admin/*.rb": {
      \     "command": "admin",
      \     "template": "ActiveAdmin.register {camelcase|singular|capitalize} do\n\nend"
      \   },
      \   "app/services/*.rb": {
      \     "command": "service",
      \     "template": "class %S\nend",
      \     "test": "spec/services/%s_spec.rb"
      \   },
      \   "app/serializers/*_serializer.rb": {
      \     "command": "serializer",
      \     "template": "class %SSerializer\nend",
      \     "test": "spec/serializers/%s_serializer_spec.rb"
      \   }
      \ }

au User Rails nmap <leader>rdm :call ToTmux("rake db:migrate; say 'migrations completed'")<CR>
au User Rails nmap <leader>rdr :call ToTmux("rake db:rollback; say 'rollback completed'")<CR>
au User Rails nmap <leader>rc :call ToTmux("rubocop app; say 'rubocop completed'")<CR>
au User Rails nmap <leader>rb :call ToTmux("bundle install --path=vendor; say 'bundler completed'")<CR>
