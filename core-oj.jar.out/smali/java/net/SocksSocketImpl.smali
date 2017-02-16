.class Ljava/net/SocksSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/net/SocksConsts;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private applicationSetProxy:Z

.field private cmdIn:Ljava/io/InputStream;

.field private cmdOut:Ljava/io/OutputStream;

.field private cmdsock:Ljava/net/Socket;

.field private external_address:Ljava/net/InetSocketAddress;

.field private server:Ljava/lang/String;

.field private serverPort:I

.field private useV4:Z


# direct methods
.method static synthetic -get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/SocksSocketImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Ljava/net/SocksSocketImpl;)I
    .locals 1

    iget v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    return v0
.end method

.method static synthetic -set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic -set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic -set2(Ljava/net/SocksSocketImpl;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocksSocketImpl;->superConnectServer(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/net/SocksSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    .line 43
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v0, 0x438

    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/16 v0, 0x438

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 60
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 61
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    move p2, v0

    .end local p2    # "port":I
    :cond_0
    iput p2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;)V
    .locals 4
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v2, 0x438

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 65
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 66
    .local v0, "a":Ljava/net/SocketAddress;
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 67
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 69
    .local v1, "ad":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 64
    .end local v1    # "ad":Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z
    .locals 6
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v0

    return v0
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
    .locals 10
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v7, 0x1

    return v7

    .line 154
    :cond_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_8

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "password":Ljava/lang/String;
    iget-object v7, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 160
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/net/SocksSocketImpl$2;

    invoke-direct {v7, p0, v0}, Ljava/net/SocksSocketImpl$2;-><init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V

    .line 159
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/PasswordAuthentication;

    .line 166
    .local v4, "pw":Ljava/net/PasswordAuthentication;
    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "userName":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    .end local v3    # "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    .line 173
    :goto_0
    if-nez v6, :cond_2

    .line 174
    const/4 v7, 0x0

    return v7

    .line 171
    .end local v6    # "userName":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    :cond_1
    new-instance v7, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v8, "user.name"

    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "userName":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v3    # "password":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 176
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 178
    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_3
    if-eqz v3, :cond_6

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 185
    :try_start_1
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :cond_4
    :goto_1
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 192
    const/4 v7, 0x2

    new-array v1, v7, [B

    .line 193
    .local v1, "data":[B
    invoke-direct {p0, p2, v1, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    .line 194
    .local v2, "i":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-eqz v7, :cond_7

    .line 197
    :cond_5
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    .line 198
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 199
    const/4 v7, 0x0

    return v7

    .line 179
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v5

    .line 180
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 186
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 187
    .restart local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 190
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_1

    .line 202
    .restart local v1    # "data":[B
    .restart local v2    # "i":I
    :cond_7
    const/4 v7, 0x1

    return v7

    .line 258
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "data":[B
    .end local v2    # "i":I
    .end local v4    # "pw":Ljava/net/PasswordAuthentication;
    .end local v6    # "userName":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    return v7
.end method

.method private bindV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;I)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "baddr"    # Ljava/net/InetAddress;
    .param p4, "lport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 513
    instance-of v7, p3, Ljava/net/Inet4Address;

    if-nez v7, :cond_0

    .line 514
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS V4 requires IPv4 only addresses"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 516
    :cond_0
    invoke-super {p0, p3, p4}, Ljava/net/PlainSocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 517
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 519
    .local v0, "addr1":[B
    move-object v4, p3

    .line 520
    .local v4, "naddr":Ljava/net/InetAddress;
    invoke-virtual {p3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 522
    new-instance v7, Ljava/net/SocksSocketImpl$3;

    invoke-direct {v7, p0}, Ljava/net/SocksSocketImpl$3;-><init>(Ljava/net/SocksSocketImpl;)V

    .line 521
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "naddr":Ljava/net/InetAddress;
    check-cast v4, Ljava/net/InetAddress;

    .line 528
    .restart local v4    # "naddr":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 530
    :cond_1
    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 531
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 532
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 533
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v7

    shr-int/lit8 v7, v7, 0x0

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 534
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 535
    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, "userName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_2
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 542
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 543
    new-array v1, v10, [B

    .line 544
    .local v1, "data":[B
    invoke-direct {p0, p1, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v3

    .line 545
    .local v3, "n":I
    if-eq v3, v10, :cond_3

    .line 546
    new-instance v7, Ljava/net/SocketException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Reply from SOCKS server has bad length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 538
    .end local v1    # "data":[B
    .end local v3    # "n":I
    :catch_0
    move-exception v5

    .line 539
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 547
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "data":[B
    .restart local v3    # "n":I
    :cond_3
    aget-byte v7, v1, v8

    if-eqz v7, :cond_4

    aget-byte v7, v1, v8

    if-eq v7, v9, :cond_4

    .line 548
    new-instance v7, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server has bad version"

    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 549
    :cond_4
    const/4 v2, 0x0

    .line 550
    .local v2, "ex":Ljava/net/SocketException;
    const/4 v7, 0x1

    aget-byte v7, v1, v7

    packed-switch v7, :pswitch_data_0

    .line 565
    new-instance v2, Ljava/net/SocketException;

    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "Reply from SOCKS server contains bad status"

    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 568
    :goto_0
    if-eqz v2, :cond_5

    .line 569
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 570
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 571
    throw v2

    .line 553
    .restart local v2    # "ex":Ljava/net/SocketException;
    :pswitch_0
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v7, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 556
    :pswitch_1
    new-instance v2, Ljava/net/SocketException;

    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "SOCKS request rejected"

    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 557
    .local v2, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 559
    .local v2, "ex":Ljava/net/SocketException;
    :pswitch_2
    new-instance v2, Ljava/net/SocketException;

    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "SOCKS server couldn\'t reach destination"

    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 560
    .local v2, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 562
    .local v2, "ex":Ljava/net/SocketException;
    :pswitch_3
    new-instance v2, Ljava/net/SocketException;

    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "SOCKS authentication failed"

    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 563
    .local v2, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 512
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_5
    return-void

    .line 550
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "endpoint"    # Ljava/net/InetSocketAddress;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 264
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-nez v5, :cond_0

    .line 265
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "SOCKS V4 requires IPv4 only addresses"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :cond_0
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 268
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 269
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 270
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x0

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 271
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 272
    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "userName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_1
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 279
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 280
    new-array v0, v9, [B

    .line 281
    .local v0, "data":[B
    invoke-direct {p0, p1, v0, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    .line 282
    .local v2, "n":I
    if-eq v2, v9, :cond_2

    .line 283
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reply from SOCKS server has bad length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    .end local v0    # "data":[B
    .end local v2    # "n":I
    :catch_0
    move-exception v3

    .line 276
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 284
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "data":[B
    .restart local v2    # "n":I
    :cond_2
    aget-byte v5, v0, v6

    if-eqz v5, :cond_3

    aget-byte v5, v0, v6

    if-eq v5, v8, :cond_3

    .line 285
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Reply from SOCKS server has bad version"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    :cond_3
    const/4 v1, 0x0

    .line 287
    .local v1, "ex":Ljava/net/SocketException;
    aget-byte v5, v0, v7

    packed-switch v5, :pswitch_data_0

    .line 302
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "Reply from SOCKS server contains bad status"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 305
    :goto_0
    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 307
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 308
    throw v1

    .line 290
    .restart local v1    # "ex":Ljava/net/SocketException;
    :pswitch_0
    iput-object p3, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 293
    :pswitch_1
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS request rejected"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 296
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_2
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS server couldn\'t reach destination"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 299
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_3
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS authentication failed"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 263
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_4
    return-void

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 890
    const-string/jumbo v1, ""

    .line 891
    .local v1, "userName":Ljava/lang/String;
    iget-boolean v2, p0, Ljava/net/SocksSocketImpl;->applicationSetProxy:Z

    if-eqz v2, :cond_0

    .line 893
    :try_start_0
    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 899
    :goto_0
    return-object v1

    .line 897
    :cond_0
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "user.name"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "userName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "userName":Ljava/lang/String;
    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private declared-synchronized privilegedConnect(Ljava/lang/String;II)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 85
    :try_start_0
    new-instance v1, Ljava/net/SocksSocketImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/net/SocksSocketImpl$1;-><init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    .line 84
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 81
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readSocksReply(Ljava/io/InputStream;[B)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v0

    return v0
.end method

.method private readSocksReply(Ljava/io/InputStream;[BJ)I
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .param p3, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    array-length v4, p2

    .line 120
    .local v4, "len":I
    const/4 v5, 0x0

    .line 121
    .local v5, "received":I
    const/4 v1, 0x0

    .local v1, "attempts":I
    :goto_0
    if-ge v5, v4, :cond_1

    const/4 v6, 0x3

    if-ge v1, v6, :cond_1

    .line 124
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/net/SocketInputStream;

    move-object v6, v0

    sub-int v7, v4, v5

    invoke-static {p3, p4}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v8

    invoke-virtual {v6, p2, v5, v7, v8}, Ljava/net/SocketInputStream;->read([BIII)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    .local v2, "count":I
    if-gez v2, :cond_0

    .line 129
    new-instance v6, Ljava/net/SocketException;

    const-string/jumbo v7, "Malformed reply from SOCKS server"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/net/SocketTimeoutException;
    new-instance v6, Ljava/net/SocketTimeoutException;

    const-string/jumbo v7, "Connect timed out"

    invoke-direct {v6, v7}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    .restart local v2    # "count":I
    :cond_0
    add-int/2addr v5, v2

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "count":I
    :cond_1
    return v5
.end method

.method private static remainingMillis(J)I
    .locals 6
    .param p0, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 104
    cmp-long v2, p0, v4

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    return v2

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    .line 108
    .local v0, "remaining":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 109
    long-to-int v2, v0

    return v2

    .line 111
    :cond_1
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
.end method

.method private superConnectServer(Ljava/lang/String;II)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-super {p0, v0, p3}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 99
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 883
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 885
    :cond_0
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 886
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    .line 882
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 25
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    if-nez p2, :cond_1

    .line 331
    const-wide/16 v6, 0x0

    .line 337
    .local v6, "deadlineMillis":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v23

    .line 338
    .local v23, "security":Ljava/lang/SecurityManager;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_3

    move-object/from16 v5, p1

    .line 340
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 341
    .local v5, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v23, :cond_0

    .line 342
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 343
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 349
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 356
    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v2

    move-object/from16 v0, p0

    invoke-super {v0, v5, v2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 357
    return-void

    .line 333
    .end local v5    # "epoint":Ljava/net/InetSocketAddress;
    .end local v6    # "deadlineMillis":J
    .end local v23    # "security":Ljava/lang/SecurityManager;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, p2

    int-to-long v10, v0

    add-long v18, v8, v10

    .line 334
    .local v18, "finish":J
    const-wide/16 v8, 0x0

    cmp-long v2, v18, v8

    if-gez v2, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    .restart local v6    # "deadlineMillis":J
    goto :goto_0

    .end local v6    # "deadlineMillis":J
    :cond_2
    move-wide/from16 v6, v18

    .restart local v6    # "deadlineMillis":J
    goto :goto_0

    .line 339
    .end local v18    # "finish":J
    .restart local v23    # "security":Ljava/lang/SecurityManager;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unsupported address type"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    .restart local v5    # "epoint":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 346
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_1

    .line 361
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Ljava/net/SocksSocketImpl;->serverPort:I

    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9}, Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    new-instance v4, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    const/16 v8, 0x200

    invoke-direct {v4, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 369
    .local v4, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 371
    .local v3, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/net/SocksSocketImpl;->useV4:Z

    if-eqz v2, :cond_7

    .line 374
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 375
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v16

    .line 363
    .local v16, "e":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v16    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_6
    move-object/from16 v2, p0

    .line 376
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 377
    return-void

    .line 381
    :cond_7
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 382
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 383
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 384
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 385
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 386
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 387
    .local v15, "data":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 388
    .local v21, "i":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_8

    const/4 v2, 0x0

    aget-byte v2, v15, v2

    const/4 v8, 0x5

    if-eq v2, v8, :cond_a

    .line 393
    :cond_8
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 394
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move-object/from16 v2, p0

    .line 395
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 396
    return-void

    .line 398
    :cond_a
    const/4 v2, 0x1

    aget-byte v2, v15, v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_b

    .line 399
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : No acceptable methods"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_b
    const/4 v2, 0x1

    aget-byte v9, v15, v2

    move-object/from16 v8, p0

    move-object v10, v3

    move-object v11, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v2

    if-nez v2, :cond_c

    .line 401
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : authentication failed"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_c
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 404
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 405
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 407
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 408
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 409
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 411
    :try_start_1
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "ISO-8859-1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    :cond_d
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 416
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 428
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 429
    const/4 v2, 0x4

    new-array v15, v2, [B

    .line 430
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 431
    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_10

    .line 432
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server has bad length"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :catch_1
    move-exception v24

    .line 413
    .local v24, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 417
    .end local v24    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_e
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_f

    .line 418
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 419
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 420
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 421
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_2

    .line 423
    :cond_f
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 424
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 425
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 426
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_2

    .line 433
    :cond_10
    const/16 v17, 0x0

    .line 436
    .local v17, "ex":Ljava/net/SocketException;
    const/4 v2, 0x1

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_0

    .line 502
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_11
    :goto_3
    if-eqz v17, :cond_15

    .line 503
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 504
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 505
    throw v17

    .line 439
    .restart local v17    # "ex":Ljava/net/SocketException;
    :pswitch_0
    const/4 v2, 0x3

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_1

    .line 473
    :pswitch_1
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "Reply from SOCKS server contains wrong code"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 474
    .local v17, "ex":Ljava/net/SocketException;
    goto :goto_3

    .line 441
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2
    const/4 v2, 0x4

    new-array v14, v2, [B

    .line 442
    .local v14, "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 443
    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_12

    .line 444
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_12
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 446
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 447
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_11

    .line 448
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    .end local v14    # "addr":[B
    :pswitch_3
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    .line 452
    .local v22, "len":I
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 453
    .local v20, "host":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 454
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    .line 455
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_13
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 457
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 458
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_11

    .line 459
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    .end local v20    # "host":[B
    .end local v22    # "len":I
    :pswitch_4
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    .line 463
    .restart local v22    # "len":I
    move/from16 v0, v22

    new-array v14, v0, [B

    .line 464
    .restart local v14    # "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 465
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 466
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 467
    :cond_14
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 468
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 469
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_11

    .line 470
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    .end local v14    # "addr":[B
    .end local v22    # "len":I
    :pswitch_5
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS server general failure"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 479
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 481
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_6
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection not allowed by ruleset"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 482
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 484
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_7
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Network unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 485
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 487
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_8
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Host unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 488
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 490
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_9
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection refused"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 491
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 493
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_a
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: TTL expired"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 494
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 496
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_b
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Command not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 497
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 499
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_c
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: address type not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 500
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 507
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_15
    move-object/from16 v0, p0

    iput-object v5, v0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    .line 327
    return-void

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 439
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 854
    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPort()I
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 874
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0

    .line 875
    :cond_0
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 878
    :cond_1
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getPort()I
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 868
    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getPort()I

    move-result v0

    return v0
.end method

.method setV4()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 74
    return-void
.end method

.method protected declared-synchronized socksBind(Ljava/net/InetSocketAddress;)V
    .locals 27
    .param p1, "saddr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 585
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v24, :cond_0

    monitor-exit p0

    .line 588
    return-void

    .line 593
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_d

    .line 598
    new-instance v24, Ljava/net/SocksSocketImpl$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/SocksSocketImpl$4;-><init>(Ljava/net/SocksSocketImpl;)V

    .line 597
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/net/ProxySelector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    .local v21, "sel":Ljava/net/ProxySelector;
    if-nez v21, :cond_1

    monitor-exit p0

    .line 607
    return-void

    .line 611
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v10

    .line 613
    .local v10, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 614
    const-string/jumbo v24, "["

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v24

    if-eqz v24, :cond_4

    .line 618
    :cond_2
    :goto_0
    :try_start_3
    new-instance v23, Ljava/net/URI;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "serversocket://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v10}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 624
    :goto_1
    const/16 v19, 0x0

    .line 625
    .local v19, "p":Ljava/net/Proxy;
    const/16 v20, 0x0

    .line 626
    .local v20, "savedExc":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 627
    .local v13, "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :try_start_4
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 628
    .local v13, "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 631
    .end local v19    # "p":Ljava/net/Proxy;
    .end local v20    # "savedExc":Ljava/lang/Exception;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 632
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/net/Proxy;

    .line 633
    .local v19, "p":Ljava/net/Proxy;
    if-eqz v19, :cond_3

    sget-object v24, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    :cond_3
    monitor-exit p0

    .line 634
    return-void

    .line 614
    .end local v13    # "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v19    # "p":Ljava/net/Proxy;
    :cond_4
    :try_start_5
    const-string/jumbo v24, ":"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_2

    .line 615
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 619
    :catch_0
    move-exception v8

    .line 621
    .local v8, "e":Ljava/net/URISyntaxException;
    sget-boolean v24, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v24, :cond_5

    new-instance v24, Ljava/lang/AssertionError;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v10    # "host":Ljava/lang/String;
    .end local v21    # "sel":Ljava/net/ProxySelector;
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 622
    .restart local v8    # "e":Ljava/net/URISyntaxException;
    .restart local v10    # "host":Ljava/lang/String;
    .restart local v21    # "sel":Ljava/net/ProxySelector;
    :cond_5
    const/16 v23, 0x0

    .local v23, "uri":Ljava/net/URI;
    goto :goto_1

    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v23    # "uri":Ljava/net/URI;
    .restart local v13    # "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .local v19, "p":Ljava/net/Proxy;
    .restart local v20    # "savedExc":Ljava/lang/Exception;
    :cond_6
    monitor-exit p0

    .line 629
    return-void

    .line 636
    .end local v20    # "savedExc":Ljava/lang/Exception;
    .local v19, "p":Ljava/net/Proxy;
    :cond_7
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v24

    sget-object v25, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 637
    new-instance v24, Ljava/net/SocketException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown proxy type : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 638
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 639
    new-instance v24, Ljava/net/SocketException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknow address type for proxy: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 641
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v24

    check-cast v24, Ljava/net/InetSocketAddress;

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 642
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v24

    check-cast v24, Ljava/net/InetSocketAddress;

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 643
    move-object/from16 v0, v19

    instance-of v0, v0, Lsun/net/SocksProxy;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 644
    move-object/from16 v0, v19

    check-cast v0, Lsun/net/SocksProxy;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lsun/net/SocksProxy;->protocolVersion()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 645
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/net/SocksSocketImpl;->useV4:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 652
    :cond_a
    :try_start_7
    new-instance v24, Ljava/net/SocksSocketImpl$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/SocksSocketImpl$5;-><init>(Ljava/net/SocksSocketImpl;)V

    .line 651
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 661
    :catch_1
    move-exception v7

    .line 663
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v24

    new-instance v25, Ljava/net/SocketException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 664
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 665
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 666
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 667
    move-object/from16 v20, v7

    .local v20, "savedExc":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 676
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "p":Ljava/net/Proxy;
    .end local v20    # "savedExc":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    .line 677
    :cond_c
    new-instance v24, Ljava/net/SocketException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Can\'t connect to SOCKS proxy:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 678
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    .line 677
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 683
    .end local v10    # "host":Ljava/lang/String;
    .end local v13    # "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v21    # "sel":Ljava/net/ProxySelector;
    :cond_d
    :try_start_9
    new-instance v24, Ljava/net/SocksSocketImpl$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/SocksSocketImpl$6;-><init>(Ljava/net/SocksSocketImpl;)V

    .line 682
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 696
    :cond_e
    :try_start_a
    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    move-object/from16 v24, v0

    const/16 v25, 0x200

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 697
    .local v18, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 698
    .local v14, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/net/SocksSocketImpl;->useV4:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 699
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v14, v1, v2, v3}, Ljava/net/SocksSocketImpl;->bindV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 700
    return-void

    .line 692
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v7

    .line 693
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_b
    new-instance v24, Ljava/net/SocketException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 702
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v14    # "in":Ljava/io/InputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    :cond_f
    const/16 v24, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 703
    const/16 v24, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 704
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 705
    const/16 v24, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 706
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V

    .line 707
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 708
    .local v6, "data":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 709
    .local v12, "i":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v12, v0, :cond_10

    const/16 v24, 0x0

    aget-byte v24, v6, v24

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    .line 712
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v14, v1, v2, v3}, Ljava/net/SocksSocketImpl;->bindV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    .line 713
    return-void

    .line 715
    :cond_11
    const/16 v24, 0x1

    :try_start_c
    aget-byte v24, v6, v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 716
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "SOCKS : No acceptable methods"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 717
    :cond_12
    const/16 v24, 0x1

    aget-byte v24, v6, v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 718
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "SOCKS : authentication failed"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 721
    :cond_13
    const/16 v24, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 722
    const/16 v24, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 723
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 724
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    .line 725
    .local v16, "lport":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 726
    const/16 v24, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 727
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 729
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "ISO-8859-1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 733
    :cond_14
    shr-int/lit8 v24, v16, 0x8

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    :try_start_e
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 734
    shr-int/lit8 v24, v16, 0x0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 753
    :goto_3
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 754
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 755
    const/4 v9, 0x0

    .line 758
    .local v9, "ex":Ljava/net/SocketException;
    const/16 v24, 0x1

    aget-byte v24, v6, v24

    packed-switch v24, :pswitch_data_0

    .line 832
    .end local v9    # "ex":Ljava/net/SocketException;
    :goto_4
    if-eqz v9, :cond_1e

    .line 833
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 834
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->close()V

    .line 836
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 837
    throw v9

    .line 730
    :catch_3
    move-exception v22

    .line 731
    .local v22, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v24, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v24, :cond_14

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 735
    .end local v22    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 736
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 737
    .local v5, "addr1":[B
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 738
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 739
    shr-int/lit8 v24, v16, 0x8

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 740
    shr-int/lit8 v24, v16, 0x0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 741
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_3

    .line 742
    .end local v5    # "addr1":[B
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 743
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 744
    .restart local v5    # "addr1":[B
    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 745
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 746
    shr-int/lit8 v24, v16, 0x8

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 747
    shr-int/lit8 v24, v16, 0x0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 748
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V

    goto/16 :goto_3

    .line 750
    .end local v5    # "addr1":[B
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->close()V

    .line 751
    new-instance v24, Ljava/net/SocketException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "unsupported address type : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 761
    .restart local v9    # "ex":Ljava/net/SocketException;
    :pswitch_0
    const/16 v24, 0x3

    aget-byte v24, v6, v24

    packed-switch v24, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_4

    .line 763
    :pswitch_2
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v4, v0, [B

    .line 764
    .local v4, "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 765
    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v12, v0, :cond_18

    .line 766
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 767
    :cond_18
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 768
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 769
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_19

    .line 770
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 771
    :cond_19
    const/16 v24, 0x0

    aget-byte v24, v6, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int/lit8 v17, v24, 0x8

    .line 772
    .local v17, "nport":I
    const/16 v24, 0x1

    aget-byte v24, v6, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v17, v17, v24

    .line 774
    new-instance v24, Ljava/net/InetSocketAddress;

    new-instance v25, Ljava/net/Inet4Address;

    const-string/jumbo v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 773
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto/16 :goto_4

    .line 777
    .end local v4    # "addr":[B
    .end local v17    # "nport":I
    :pswitch_3
    const/16 v24, 0x1

    aget-byte v15, v6, v24

    .line 778
    .local v15, "len":I
    new-array v11, v15, [B

    .line 779
    .local v11, "host":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 780
    if-eq v12, v15, :cond_1a

    .line 781
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 782
    :cond_1a
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 783
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 784
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_1b

    .line 785
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 786
    :cond_1b
    const/16 v24, 0x0

    aget-byte v24, v6, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int/lit8 v17, v24, 0x8

    .line 787
    .restart local v17    # "nport":I
    const/16 v24, 0x1

    aget-byte v24, v6, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v17, v17, v24

    .line 788
    new-instance v24, Ljava/net/InetSocketAddress;

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto/16 :goto_4

    .line 791
    .end local v11    # "host":[B
    .end local v15    # "len":I
    .end local v17    # "nport":I
    :pswitch_4
    const/16 v24, 0x1

    aget-byte v15, v6, v24

    .line 792
    .restart local v15    # "len":I
    new-array v4, v15, [B

    .line 793
    .restart local v4    # "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 794
    if-eq v12, v15, :cond_1c

    .line 795
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 796
    :cond_1c
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v6, v0, [B

    .line 797
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    move-result v12

    .line 798
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v12, v0, :cond_1d

    .line 799
    new-instance v24, Ljava/net/SocketException;

    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 800
    :cond_1d
    const/16 v24, 0x0

    aget-byte v24, v6, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int/lit8 v17, v24, 0x8

    .line 801
    .restart local v17    # "nport":I
    const/16 v24, 0x1

    aget-byte v24, v6, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v17, v17, v24

    .line 803
    new-instance v24, Ljava/net/InetSocketAddress;

    new-instance v25, Ljava/net/Inet6Address;

    const-string/jumbo v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 802
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto/16 :goto_4

    .line 808
    .end local v4    # "addr":[B
    .end local v15    # "len":I
    .end local v17    # "nport":I
    :pswitch_5
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS server general failure"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 809
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 811
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_6
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Bind not allowed by ruleset"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 812
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 814
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_7
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Network unreachable"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 815
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 817
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_8
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Host unreachable"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 818
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 820
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_9
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Connection refused"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 821
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 823
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_a
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: TTL expired"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 824
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 826
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_b
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Command not supported"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 827
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 829
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_c
    new-instance v9, Ljava/net/SocketException;

    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: address type not supported"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 830
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    .line 839
    .end local v9    # "ex":Ljava/net/SocketException;
    :cond_1e
    move-object/from16 v0, p0

    iput-object v14, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 840
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    .line 584
    return-void

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 761
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
