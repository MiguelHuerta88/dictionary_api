# Fact: redis_server_version
#
# Purpose: Retrieve redis-server version if installed
#
Facter.add(:redis_server_version) do

  setcode do
    if Facter::Util::Resolution.which('redis-server')
      redis_server_version_output = Facter::Util::Resolution.exec('redis-server -v')
      if redis_server_version_output =~ /v=([\w\.]+)/
        # Redis server v=2.8.17 sha=00000000:0 malloc=jemalloc-3.6.0 bits=64 build=4c1d5710660b9479
        redis_server_version_output.match(/Redis server v=([\w\.]+).+/)[1]
      elsif redis_server_version_output =~ /version ([\w\.]+)/
        # Redis server version 2.4.10 (00000000:0)
        redis_server_version_output.match(/Redis server version ([\w\.]+).+/)[1]
      end
    end
  end
end
