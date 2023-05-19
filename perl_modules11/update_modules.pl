#!/usr/bin/perl

use strict;
use warnings;

# leer el nombre de los módulos desde el fichero de entrada
my $input_file = './perl_modules_by_name.txt';
open(my $fh, '<', $input_file) or die "No se pudo abrir el fichero '$input_file': $!\n";
chomp(my @modulos = <$fh>);
close($fh);

# recorrer la lista de módulos y descargar la última versión desde metacpan.org
foreach my $modulo (@modulos) {
    if ($modulo =~ /^#/) { next; }

    # obtener la URL del módulo más reciente en metacpan.org
    my $url = "https://metacpan.org/pod/$modulo";
    #print "curl -s \"$url\"";
    my $content = `curl -s "$url"`;
    if (!$content) {
        print "No se pudo obtener la página de $modulo\n";
        next;
    }
    #Module version: 1.9764
    my ($version) = $content =~ /Module version\:\s+(\d+(?:\.\d+)*[^\s]*)/i;
    if (!$version) {
        print "No se pudo encontrar la versión de $modulo\n";
        next;
    }

    #<a itemprop="downloadUrl" href="https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/Time-HiRes-1.9764.tar.gz">
    my $download_url = "https://cpan.metacpan.org/authors/id/$modulo-$version.tar.gz";
    my $new_file = $modulo.'-'.$version.'.tar.gz';
    if ( $content =~ /"downloadUrl" href="(https:\/\/cpan\.metacpan\.org\/authors\/id\S+\/)(\S+\.tar\.gz)"/i) {
	   $download_url = $1.$2; 
	   $new_file = $2;
    }

    print "+++$new_file\n";
    #next;

    print "$modulo\t Found version $version | $new_file | $download_url\n";
    
    # descargar el módulo desde la URL con curl
    my $status = system("curl -s -o $new_file $download_url");
    if ($status == 0) {
        print "Descargado $new_file desde $download_url\n";
    } else {
        print "No se pudo descargar $download_url ($status)\n";
    }

}

