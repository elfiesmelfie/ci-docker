FROM ubuntu:trusty

ADD debian.sh /debian.sh
COPY /checks/*.sh /checks/

ENV EXTRA_PACKAGES="\
  default-jdk \
  iptables-dev \
  javahelper \
  libatasmart-dev \
  libcap-dev \
  libcurl4-gnutls-dev \
  libdbi0-dev \
  libesmtp-dev \
  libganglia1-dev \
  libgcrypt11-dev \
  libglib2.0-dev \
  libgps-dev \
  libhiredis-dev \
  libi2c-dev \
  libldap2-dev \
  libltdl-dev \
  liblua5.1-0-dev \
  liblua5.2-dev \
  liblua50-dev \
  libmemcached-dev \
  libmicrohttpd-dev \
  libmnl-dev \
  libmodbus-dev \
  libmosquitto0-dev \
  libmysqlclient-dev \
  libnotify-dev \
  libopenipmi-dev \
  liboping-dev \
  libow-dev \
  libpcap-dev \
  libperl-dev \
  libpq-dev \
  libprotobuf-c0-dev \
  librabbitmq-dev \
  librdkafka-dev \
  libriemann-client-dev \
  librrd-dev \
  libsensors4-dev \
  libsigrok-dev \
  libsnmp-dev \
  libssl-dev \
  libstatgrab-dev \
  libtokyocabinet-dev \
  libtokyotyrant-dev \
  libudev-dev \
  libupsclient-dev \
  libvarnish-dev \
  libvirt-dev \
  libxen-dev \
  libxml2-dev \
  libyajl-dev \
  perl \
  protobuf-c-compiler \
  python-dev \
  python3-dev \
  xfslibs-dev \
"

ENV SUPPORTED_PLUGIN_LIST="\
  libcollectdclient \
  aggregation \
  amqp \
  apache \
  apcups \
  ascent \
  barometer \
  battery \
  bind \
  ceph \
  cgroups \
  chrony \
  conntrack \
  contextswitch \
  cpu \
  cpufreq \
  cpusleep \
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
  gmond \
  gps \
  hddtemp \
  hugepages \
  interface \
  ipc \
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
  modbus \
  mqtt \
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
  nut \
  olsrd \
  onewire \
  openldap \
  openvpn \
  ovs_events \
  ovs_stats \
  pcie_errors \
  perl \
  pinba \
  ping \
  postgresql \
  powerdns \
  processes \
  protocols \
  python \
  redis \
  rrdcached \
  rrdtool \
  sensors \
  serial \
  sigrok \
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
  tokyotyrant \
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
  write_kafka \
  write_log \
  write_prometheus \
  write_redis \
  write_sensu \
  write_tsdb \
  xencpu \
  zfs_arc \
  zookeeper \
"

RUN /debian.sh
