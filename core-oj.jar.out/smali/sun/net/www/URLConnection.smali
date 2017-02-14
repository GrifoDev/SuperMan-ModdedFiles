.class public abstract Lsun/net/www/URLConnection;
.super Ljava/net/URLConnection;
.source "URLConnection.java"


# static fields
.field private static proxiedHosts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field protected properties:Lsun/net/www/MessageHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/URLConnection;->contentLength:I

    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    return-void
.end method

.method public static declared-synchronized isProxiedHost(Ljava/lang/String;)Z
    .locals 3

    const-class v1, Lsun/net/www/URLConnection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setProxiedHost(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lsun/net/www/URLConnection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public canCache()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-void
.end method

.method public getContentLength()I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lsun/net/www/URLConnection;->contentLength:I

    if-gez v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "content-length"

    invoke-virtual {v2, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lsun/net/www/URLConnection;->setContentLength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    return v2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "content-type"

    invoke-virtual {p0, v3}, Lsun/net/www/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "content-encoding"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    iget-object v3, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "content-type"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v1, "text/html"

    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v0, :cond_2

    const-string/jumbo v3, "7bit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "8bit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "binary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_2
    invoke-virtual {p0, v1}, Lsun/net/www/URLConnection;->setContentType(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    return-object v3

    :cond_4
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "content/unknown"

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getProperties()Lsun/net/www/MessageHeader;
    .locals 1

    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setContentLength(I)V
    .locals 3

    iput p1, p0, Lsun/net/www/URLConnection;->contentLength:I

    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v1, "content-length"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v1, "content-type"

    invoke-virtual {v0, v1, p1}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProperties(Lsun/net/www/MessageHeader;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
