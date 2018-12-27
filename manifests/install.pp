class apache2::install 
(
$port = $apache2::port,
)
{
package { 'httpd' :
       ensure => present,
         }
file { '/etc/httpd/conf/httpd.conf' :
      ensure => 'present',
      content => template('apache2/httpd.conf.erb'),
 #    source => 'puppet:///modules/apache2/httpd.conf',
      mode   => '0644'
     }
service {'httpd' :
      ensure => 'running',
      }
}
