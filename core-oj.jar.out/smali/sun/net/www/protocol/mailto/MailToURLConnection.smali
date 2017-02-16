.class public Lsun/net/www/protocol/mailto/MailToURLConnection;
.super Lsun/net/www/URLConnection;
.source "MailToURLConnection.java"


# instance fields
.field client:Lsun/net/smtp/SmtpClient;

.field private connectTimeout:I

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;

.field permission:Ljava/security/Permission;

.field private readTimeout:I


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 54
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 45
    iput-object v2, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->is:Ljava/io/InputStream;

    .line 46
    iput-object v2, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;

    .line 50
    iput v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    .line 51
    iput v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    .line 56
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    .line 57
    .local v0, "props":Lsun/net/www/MessageHeader;
    const-string/jumbo v1, "content-type"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lsun/net/www/URLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    .line 53
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lsun/net/smtp/SmtpClient;

    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    invoke-direct {v0, v1}, Lsun/net/smtp/SmtpClient;-><init>(I)V

    iput-object v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    .line 87
    iget-object v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    .line 85
    return-void
.end method

.method public getConnectTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 126
    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    goto :goto_0
.end method

.method getFromAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    const-string/jumbo v3, "user.fromaddr"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 68
    const-string/jumbo v3, "user.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    const-string/jumbo v3, "mail.host"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 73
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .end local v1    # "host":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 79
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1

    .line 74
    .restart local v1    # "host":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 94
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 95
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cannot write output after reading input."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 97
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lsun/net/www/protocol/mailto/MailToURLConnection;->connect()V

    .line 99
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "to":Ljava/lang/String;
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    invoke-virtual {p0}, Lsun/net/www/protocol/mailto/MailToURLConnection;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/smtp/SmtpClient;->from(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    invoke-virtual {v1, v0}, Lsun/net/smtp/SmtpClient;->to(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    invoke-virtual {v1}, Lsun/net/smtp/SmtpClient;->startMessage()Ljava/io/PrintStream;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;

    .line 104
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->permission:Ljava/security/Permission;

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lsun/net/www/protocol/mailto/MailToURLConnection;->connect()V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    invoke-virtual {v2}, Lsun/net/smtp/SmtpClient;->getMailHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    const-string/jumbo v2, "connect"

    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->permission:Ljava/security/Permission;

    .line 114
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->permission:Ljava/security/Permission;

    return-object v1
.end method

.method public getReadTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    goto :goto_0
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 119
    if-gez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    .line 118
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 131
    if-gez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    .line 130
    return-void
.end method
