class apache2::install 
{
package { 'httpd' :
       ensure => present,
         }
file { '/etc/httpd/conf/httpd.conf' :
      ensure => 'file',
      source => 'puppet:///modules/apache2/httpd.conf',
      mode   => '0644'
     }
service {'httpd' :
      ensure => 'running',
      }
}
