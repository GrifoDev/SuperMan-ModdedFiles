.class public Lsun/net/smtp/SmtpClient;
.super Lsun/net/TransferProtocolClient;
.source "SmtpClient.java"


# instance fields
.field mailhost:Ljava/lang/String;

.field message:Lsun/net/smtp/SmtpPrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/net/smtp/SmtpClient;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/net/TransferProtocolClient;-><init>()V

    invoke-virtual {p0, p1}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    :try_start_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "mail.host"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "localhost"

    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "mailhost"

    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/net/TransferProtocolClient;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V

    iput-object p1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "mail.host"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    :cond_1
    :try_start_2
    const-string/jumbo v1, "localhost"

    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-void

    :catch_2
    move-exception v0

    const-string/jumbo v1, "mailhost"

    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openServer(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "helo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    return-void
.end method

.method private toCanonical(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xfa

    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rcpt to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rcpt to: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method closeMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    invoke-virtual {v0}, Lsun/net/smtp/SmtpPrintStream;->close()V

    :cond_0
    return-void
.end method

.method public closeServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/net/NetworkClient;->serverIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/net/smtp/SmtpClient;->closeMessage()V

    const-string/jumbo v0, "QUIT\r\n"

    const/16 v1, 0xdd

    invoke-virtual {p0, v0, v1}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    invoke-super {p0}, Lsun/net/TransferProtocolClient;->closeServer()V

    :cond_0
    return-void
.end method

.method public from(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xfa

    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mail from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mail from: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method getEncoding()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsun/net/smtp/SmtpClient;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMailHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    return-object v0
.end method

.method issueCommand(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/net/TransferProtocolClient;->sendServer(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lsun/net/TransferProtocolClient;->readServerResponse()I

    move-result v0

    if-eq v0, p2, :cond_1

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    new-instance v1, Lsun/net/smtp/SmtpProtocolException;

    invoke-virtual {p0}, Lsun/net/TransferProtocolClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/net/smtp/SmtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public startMessage()Ljava/io/PrintStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "data\r\n"

    const/16 v2, 0x162

    invoke-virtual {p0, v1, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    :try_start_0
    new-instance v1, Lsun/net/smtp/SmtpPrintStream;

    iget-object v2, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-direct {v1, v2, p0}, Lsun/net/smtp/SmtpPrintStream;-><init>(Ljava/io/OutputStream;Lsun/net/smtp/SmtpClient;)V

    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/smtp/SmtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public to(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x28

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v5, v3, :cond_c

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lez v4, :cond_4

    if-ne v0, v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_0
    :goto_1
    if-nez v4, :cond_1

    if-le v2, v6, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/16 v7, 0x29

    if-ne v0, v7, :cond_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v5, 0x1

    goto :goto_2

    :cond_4
    if-ne v0, v8, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_6

    add-int/lit8 v2, v5, 0x1

    move v6, v2

    goto :goto_2

    :cond_6
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_9

    if-le v2, v6, :cond_8

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lsun/net/smtp/SmtpClient;->toCanonical(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v6, v5, 0x1

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/16 v7, 0x20

    if-le v0, v7, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    if-ne v6, v5, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v2, v5, 0x1

    goto :goto_2

    :cond_c
    if-le v2, v6, :cond_d

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lsun/net/smtp/SmtpClient;->toCanonical(Ljava/lang/String;)V

    :cond_d
    return-void
.end method
