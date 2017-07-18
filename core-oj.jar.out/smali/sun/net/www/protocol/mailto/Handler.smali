.class public Lsun/net/www/protocol/mailto/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/net/www/protocol/mailto/MailToURLConnection;

    invoke-direct {v0, p1}, Lsun/net/www/protocol/mailto/MailToURLConnection;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    const-string/jumbo v5, ""

    if-ge p3, p4, :cond_0

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_0
    const/4 v9, 0x0

    if-eqz v5, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v9, 0x1

    :cond_2
    :goto_0
    if-eqz v9, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No email address"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_5

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
