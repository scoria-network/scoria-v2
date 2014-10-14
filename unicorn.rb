require 'yaml'

config = YAML.load_file('config.yml')

procs = config['procs'].to_i

@dir = config['dir']

#@dir = "#{home}#{working}"

worker_processes procs
working_directory @dir

timeout 30

listen "#{@dir}tmp/sockets/unicorn.sock", :backlog => 64

pid "#{@dir}tmp/pids/unicorn.pid"

stderr_path "#{@dir}tmp/log/unicorn.stderr.log"
stdout_path "#{@dir}tmp/log/unicorn.stdout.log"
