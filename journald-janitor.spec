Name: journald-janitor
Version: 0.1
Release: 7%{?dist}

Summary: Janitor service for journald
URL: http://github.com/jlebon/journald-janitor
License: LGPLv2+
Source0: %{name}.tar.gz

%description
This tool is a janitor service which runs on every boot to
ensure that journald only keeps the logs for the current
boot and the previous boot.

%prep
%setup -qn %{name}

%install
make install DESTDIR=$RPM_BUILD_ROOT

%files
/usr/bin/journald-janitor
/usr/lib/systemd/system/journald-janitor.service

%post
/usr/bin/systemctl enable journald-janitor.service
