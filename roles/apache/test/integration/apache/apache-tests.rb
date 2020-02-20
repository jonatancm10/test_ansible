control "apache-installed" do
  impact 1.0                                
  title "Verificar que APACHE instalado"
  desc "Primer requisito del rol, debe instalar APACHE"
  describe package('httpd') do
   it { should be_installed }
  end
end

control "apache-started-enabled" do
  impact 1.0                                
  title "Verificar que APACHE está arrancado y que se arrancará al inicio del sistema"
  desc "APACHE arrancado y en enabled"
  describe service('httpd') do
   it { should be_enabled }
   it { should be_running }
  end
end

control "apache-listens-80" do
  impact 1.0                                
  title "Verificar que APACHE está escuchando en el puerto 80"
  desc "APACHE debe escuchar en el puerto 80 en este test"
  describe port(80) do
   it { should be_listening }
   its('processes') {should include 'httpd'}
  end
end

control "apache-permit-777" do
  impact 1.0
  title "Verificar que el httpd.conf tienen permisos 777"
  desc "El archivo httpd.conf tiene que tener permisos 777"
  describe file('/etc/httpd/conf/httpd.conf') do
   its ('mode') { should cmp '777' }
  end
end

