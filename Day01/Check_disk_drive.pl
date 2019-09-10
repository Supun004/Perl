# windows perl open install win32::DriveInfo
#!/usr/bin/perl

use warnings;
use strict;
use Win32::OLE;

sub get_available_space
{
	# get disk name
	my $my_disk = $_[0];

	#create file system object using Win32::OLE
	my $file_system = Win32::OLE->CreateObject('Scripting.FileSystemObject');

	#get disk usage using F5 object
	my $disk = $file_system->GetDrive($my_disk);

	#total size of the disk
	print convert_to_gb($disk->{TotalSize}), " total\n";
	# free space in disk
	print convert_to_gb($disk->{FreeSpace}), " free\n";
	


}

sub convert_to_gb
{
#Sub routine do nothing more than convert bytes to BG
	my $byte_size = $_[0];
	#convert to GB
	my $gb_size = $byte_size/1073741824;
	
	return $gb_size;
}

get_available_space("c:");