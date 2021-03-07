# nss bin directory
NSS_BIN_DIR=/mnt/f/6---OneOS/ssl_tls/nss/dist/Debug/bin


############################ tls13_psk_test ##############################
# tls13 client with psk mode test
########################################################################
# openss server usage
# openssl s_server -nocert -tls1_3 -psk_identity test -psk aabbccdd -debug
tls13_psk_test()
{
    # 连接127.0.0.1:4433，不用证书数据库，tls1.3版本，密码套件，密钥交换曲线组，带外psk
    $NSS_BIN_DIR/tstclnt -h xieli.localdomain -p 4433 -D -V tls1.3:tls1.3 -c :1301:1303 -I x25519,P256 -z 0xaabbccdd:test
}


############################ dtls13_psk_test ##############################
# dtls13 client with psk mode test
########################################################################
# openss server usage
# openssl s_server -nocert -tls1_3 -psk_identity test -psk aabbccdd -debug
dtls13_psk_test()
{
    $NSS_BIN_DIR/tstclnt -h xieli.localdomain -p 4433 -d client -n TestUser -w nss -V tls1.3:tls1.3 -c :1301:1303 -I x25519,P256 -z 0xaabbccdd:test -P server
    # 连接127.0.0.1:4433，不用证书数据库，tls1.3版本，密码套件，密钥交换曲线组，带外psk，dtls
    # $NSS_BIN_DIR/tstclnt -h xieli.localdomain -p 4433 -D -V tls1.3:tls1.3 -c :1301:1303 -I x25519,P256 -z 0xaabbccdd:test -P client
}

################################# main #################################
# tls13_psk_test
dtls13_psk_test