directory /usr/src/glibc/glibc-2.19/elf
set print pretty on
set print union on
set print array on
set print array-indexes on

define phead
	set $ptr = $arg1
	plistdata $arg0
end

document phead
Print the first element of the list. E.g., given the declaration

	List *pl;
	add_data(&pl, data);

view the list with something like

	gdb> phead <type> <list name>
	gdb> pnext <type>
	gdb> pnext <type>

This macro defines $ptr as the current pointed-to list struct, and $pdata as the
data in that list element.
end

define pnext
	set $ptr = $ptr->next
	plistdata $arg0
end

document pnext
You need to call phead first; that will set $ptr. This macro will step forward
in the list, than show the value at that next element. Give the type of the list
data as the only argument.

This macro defines $ptr as the current pointed-to list struct, and $pdata as the
data in that list element.
end

define plistdata
	if $ptr
		set $pdata = $ptr->data
	else
		set $pdata = 0
	end

	if $pdata
		p ($arg0 *) $pdata
	else
		p "NULL"
	end
end

document plist
Print all elements of the list. E.g., given the declaration

	List *pl;

view the list with something like

	gdb> plist <type> <list name>

This macro defines $ptr as the current pointed-to list struct, and $pdata as the
data in that list element.
end

document plistdata
This is intended to be used by phead and pnext, q.v. It sets $pdata and prints
its value.
end

define plist
	set $ptr = $arg1
	while $ptr
		if $ptr
			set $pdata = $ptr->data
		else
			set $pdata = 0
		end

		if $pdata
			p ($arg0 *) $pdata
		else
			p "NULL"
		end

		set $ptr = $ptr->next
	end
end

define hook-print
	echo <-----\n
end

define hookpost-print
	echo ----->\n
end
