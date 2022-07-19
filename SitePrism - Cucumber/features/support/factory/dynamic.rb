require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            binding.pry
            { 
             email: 'teste@gm.com',
             message: 'Welcome to your account.'
            }
        end
    end
end