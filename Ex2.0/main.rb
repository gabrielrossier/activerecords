require_relative 'connection'
require_relative 'models'

provider = Provider.first;
puts(provider.categories);
