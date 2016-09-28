let g:rails_projections = {
      \   "config/routes.rb": {
      \     "command": "routes",
      \   },
      \   "config/application.rb": {
      \     "command": "app",
      \   },
      \   "app/util/*.rb": {
      \     "command": "util",
      \     "template": "class %S\nend",
      \     "test": "spec/util/%s_spec.rb"
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
      \   "app/authorizers/*_authorizer.rb": {
      \     "command": "authorizer",
      \     "template": "class %SAuthorizer < ApplicationAuthorizer\n  \nend",
      \     "test": "spec/authorizers/%s_authorizer_spec.rb"
      \   },
      \   "app/hooks/*_hook.rb": {
      \     "command": "hook",
      \     "template": "class %SHook\nend",
      \     "test": "spec/hooks/%s_hook_spec.rb"
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
