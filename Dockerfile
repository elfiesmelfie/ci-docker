FROM centos:6

ADD redhat.sh /redhat.sh
COPY /checks/*.sh /checks/

ENV EXTRA_PACKAGES="\
  OpenIPMI-devel \
  hal-devel \
  iproute-devel \
  iptables-devel \
  java-1.7.0-openjdk-devel \
  java-devel \
  jpackage-utils \
  libatasmart-devel \
  libcap-devel \
  libcurl-devel \
  libdbi-devel \
  libesmtp-devel \
  libmemcached-devel \
  libmicrohttpd-devel \
  libmnl-devel \
  libnotify-devel \
  libpcap-devel \
  libudev-devel \
  libvirt-devel \
  libxml2-devel \
  lm_sensors-devel \
  lua-devel \
  mysql-devel \
  net-snmp-devel \
  openldap-devel \
  openssl-devel \
  perl-ExtUtils-Embed \
  perl-ExtUtils-MakeMaker \
  postgresql-devel \
  python-devel \
  qpid-proton-c-devel \
  rrdtool-devel \
  xfsprogs-devel \
  yajl-devel \
"

ENV SUPPORTED_PLUGIN_LIST="\
  libcollectdclient \
  aggregation \
  apache \
  apcups \
  ascent \
  battery \
  bind \
  ceph \
  cgroups \
  chrony \
  conntrack \
  contextswitch \
  cpu \
  cpufreq \
  csv \
  curl \
  curl_json \
  curl_xml \
  dbi \
  df \
  disk \
  dns \
  drbd \
  email \
  entropy \
  ethstat \
  exec \
  fhcount \
  filecount \
  fscache \
  hddtemp \
  hugepages \
  interface \
  ipc \
  ipmi \
  iptables \
  ipvs \
  irq \
  java \
  load \
  log_logstash \
  logfile \
  lua \
  madwifi \
  match_empty_counter \
  match_hashed \
  match_regex \
  match_timediff \
  match_value \
  mbmon \
  mcelog \
  md \
  memcachec \
  memcached \
  memory \
  multimeter \
  mysql \
  netlink \
  network \
  nfs \
  nginx \
  notify_desktop \
  notify_email \
  notify_nagios \
  ntpd \
  numa \
  olsrd \
  openldap \
  openvpn \
  pcie_errors \
  perl \
  postgresql \
  powerdns \
  processes \
  protocols \
  python \
  rrdtool \
  sensors \
  serial \
  smart \
  snmp \
  snmp_agent \
  statsd \
  swap \
  synproxy \
  syslog \
  table \
  tail \
  tail_csv \
  target_notification \
  target_replace \
  target_scale \
  target_set \
  target_v5upgrade \
  tcpconns \
  teamspeak2 \
  ted \
  thermal \
  threshold \
  turbostat \
  unixsock \
  uptime \
  users \
  uuid \
  virt \
  vmem \
  vserver \
  wireless \
  write_graphite \
  write_http \
  write_log \
  write_sensu \
  write_tsdb \
  zfs_arc \
  zookeeper \
"

RUN /redhat.sh
