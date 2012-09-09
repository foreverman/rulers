module Rulers
  class Application
    def get_controller_and_action(env)
      _, cont, action, after = 
        env['PATH_INFO'].split('/', 4)
      cont = cont.downcase
      cont[0] = cont[0].capitalize
      cont += "Controller"
      [Rulers.const_get(cont), action]
    end
  end
end
