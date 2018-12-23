#!/usr/bin/perl 
#use strict;
#use warnings;
my @see = ();
my @see1 = ();
my $team = "l22";
my $tmp = ();
my $tmp1 = ();
my $i=1;
my $ii=1;
my $iii=1;
my $se = ();
my $se1 = ();
my $se3 = ();
open(MYFILE, "< $team") || die "Ошибка при открытии myfile: $!\n";
while (<MYFILE>){
chomp;
$se = $_;
$se1 = $_;
$se3 = $_;

#$see = $se;
#last if $. == /($city)/;
if ( $se3 =~ /(забьет)/) 
{
	next;
}
if ( $se3 =~ /(забьют)/)
{
	next;
}
if ( $se3 =~ /(да\/нет)/)
{
	next;
}
if ( $se3 =~ /(более)/)
{
	next;
} 
if ( $se3 =~ /(вратар)/)
{
	next;
}
if ( $se3 =~ /(удале)/)
{
	next;
}
if ( $se3 =~ /(карточка)/)
{
	next;
}
if ( $se3 =~ /(хет-тр)/)
{
	next;
}
if ( $se3 =~ /(дубль)/)
{
	next;
}
if ( $se3 =~ /(последний)/)
{
	next;
}
if ( $se3 =~ /(озяева)/)
{
	next;
}

#if ( $se3 =~ /(гол)/)
#{
#	next;
#}


#ищем тире
if ( $se =~ /(—)/) 
{
$se =~ s/[0-9]/ /g;
if ($se =~ /(гол)/)
{
	next;
	}
$tmp = $se ;
$iii++;
next;

}

if( $se =~ /(в [0-9])/){
$tmp1 = $se;
#for($i=0;$i<$#tmp;$i++){
#for($b=$i+1;$b<$#tmp+1;$b++)
#{
#if($a[$i] eq $a[$b]){delete $tmp[$b];}
#}
#}
$see[$i] = $tmp . $tmp1 . "\n";
$i++;
#next;
}
#$see[$i] = $tmp;

#print $see,"\n";
}
#}
#my $r = 1;
#foreach (@see1){
#print "$see[$r] $see1[$r]\n";
#$r++;
#}
#убираем цифры
#$see =~ s/[0-9]/ /g;
print @see;
#if ( $se1 =~ /(в )/)
#{
#$se =~ s/[0-9]/ /g;
#$see1[$ii] = $se1;
#print $see1,"\n";
#$ii++;
#}
