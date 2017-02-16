.class public Lsun/net/www/protocol/ftp/FtpURLConnection;
.super Lsun/net/www/URLConnection;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;,
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;
    }
.end annotation


# static fields
.field static final ASCII:I = 0x1

.field static final BIN:I = 0x2

.field static final DIR:I = 0x3

.field static final NONE:I


# instance fields
.field private connectTimeout:I

.field filename:Ljava/lang/String;

.field ftp:Lsun/net/ftp/FtpClient;

.field fullpath:Ljava/lang/String;

.field host:Ljava/lang/String;

.field http:Lsun/net/www/protocol/http/HttpURLConnection;

.field private instProxy:Ljava/net/Proxy;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;

.field password:Ljava/lang/String;

.field pathname:Ljava/lang/String;

.field permission:Ljava/security/Permission;

.field port:I

.field private readTimeout:I

.field type:I

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    .line 165
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 173
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 86
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    .line 89
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 90
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    .line 92
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 107
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 111
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 112
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 174
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    .line 175
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    iput v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    .line 177
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "userInfo":Ljava/lang/String;
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    new-instance v4, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cleartext traffic not permitted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    const-string/jumbo v5, "://"

    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 183
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    if-ltz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 186
    :cond_1
    if-eqz v2, :cond_2

    .line 187
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 188
    .local v0, "delimiter":I
    if-ne v0, v5, :cond_3

    .line 189
    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 190
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 172
    .end local v0    # "delimiter":I
    :cond_2
    :goto_1
    return-void

    .line 192
    .restart local v0    # "delimiter":I
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "delimiter":I
    .local v1, "delimiter":I
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    goto :goto_1
.end method

.method private cd(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    return-void

    .line 379
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 380
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    .line 381
    return-void

    .line 384
    :cond_2
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .local v0, "token":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 386
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    goto :goto_0

    .line 375
    :cond_3
    return-void
.end method

.method private decodePath(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 327
    const-string/jumbo v2, ";type="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 328
    .local v0, "i":I
    if-ltz v0, :cond_3

    .line 329
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "s1":Ljava/lang/String;
    const-string/jumbo v2, "i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const/4 v2, 0x2

    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 333
    :cond_0
    const-string/jumbo v2, "a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 336
    :cond_1
    const-string/jumbo v2, "d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const/4 v2, 0x3

    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 339
    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 341
    .end local v1    # "s1":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_4

    .line 342
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_4

    .line 343
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 345
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 346
    :cond_5
    const-string/jumbo p1, "./"

    .line 348
    :cond_6
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 349
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 350
    if-lez v0, :cond_7

    .line 351
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 353
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    .line 362
    :goto_0
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    .line 326
    :goto_2
    return-void

    .line 355
    :cond_7
    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 356
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    .line 360
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    goto :goto_0

    .line 363
    :cond_9
    const-string/jumbo v2, ""

    goto :goto_1

    .line 365
    :cond_a
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    goto :goto_2
.end method

.method private setTimeouts()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    if-eqz v0, :cond_1

    .line 200
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-ltz v0, :cond_0

    .line 201
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setConnectTimeout(I)Lsun/net/ftp/FtpClient;

    .line 203
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-ltz v0, :cond_1

    .line 204
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setReadTimeout(I)Lsun/net/ftp/FtpClient;

    .line 198
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 218
    :try_start_0
    iget-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    monitor-exit p0

    .line 219
    return-void

    .line 222
    :cond_0
    const/4 v5, 0x0

    .line 223
    .local v5, "p":Ljava/net/Proxy;
    :try_start_1
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    if-nez v10, :cond_8

    .line 228
    new-instance v10, Lsun/net/www/protocol/ftp/FtpURLConnection$1;

    invoke-direct {v10, p0}, Lsun/net/www/protocol/ftp/FtpURLConnection$1;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;)V

    .line 227
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/ProxySelector;

    .line 233
    .local v7, "sel":Ljava/net/ProxySelector;
    if-eqz v7, :cond_1

    .line 234
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v10}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v8

    .line 235
    .local v8, "uri":Ljava/net/URI;
    invoke-virtual {v7, v8}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 236
    .end local v5    # "p":Ljava/net/Proxy;
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 237
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/Proxy;

    .line 238
    .local v5, "p":Ljava/net/Proxy;
    if-eqz v5, :cond_1

    sget-object v10, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v5, v10, :cond_4

    .line 286
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v5    # "p":Ljava/net/Proxy;
    .end local v7    # "sel":Ljava/net/ProxySelector;
    .end local v8    # "uri":Ljava/net/URI;
    :cond_1
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 287
    const-string/jumbo v10, "anonymous"

    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 289
    new-instance v10, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v11, "java.version"

    invoke-direct {v10, v11}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 291
    .local v9, "vers":Ljava/lang/String;
    new-instance v10, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v11, "ftp.protocol.user"

    .line 292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Java"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 291
    invoke-direct {v10, v11, v12}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    .end local v9    # "vers":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lsun/net/ftp/FtpClient;->create()Lsun/net/ftp/FtpClient;

    move-result-object v10

    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 296
    if-eqz v5, :cond_3

    .line 297
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v10, v5}, Lsun/net/ftp/FtpClient;->setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;

    .line 299
    :cond_3
    invoke-direct {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setTimeouts()V

    .line 300
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 301
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v11, Ljava/net/InetSocketAddress;

    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    iget v13, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    invoke-direct {v11, v12, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    :goto_1
    :try_start_3
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/net/ftp/FtpClient;->login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    :try_end_3
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    const/4 v10, 0x1

    :try_start_4
    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 217
    return-void

    .line 239
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v5    # "p":Ljava/net/Proxy;
    .restart local v7    # "sel":Ljava/net/ProxySelector;
    .restart local v8    # "uri":Ljava/net/URI;
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v10, v11, :cond_1

    .line 242
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v10, v11, :cond_7

    .line 243
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/InetSocketAddress;

    if-eqz v10, :cond_7

    .line 248
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    .local v6, "paddr":Ljava/net/InetSocketAddress;
    :try_start_6
    new-instance v10, Lsun/net/www/protocol/http/HttpURLConnection;

    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-direct {v10, v11, v5}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    .line 251
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 252
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 253
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-ltz v10, :cond_5

    .line 254
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setConnectTimeout(I)V

    .line 256
    :cond_5
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-ltz v10, :cond_6

    .line 257
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setReadTimeout(I)V

    .line 259
    :cond_6
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v10}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 260
    const/4 v10, 0x1

    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 261
    return-void

    .line 244
    .end local v6    # "paddr":Ljava/net/InetSocketAddress;
    :cond_7
    :try_start_7
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Wrong proxy type"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v10, v11}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v5    # "p":Ljava/net/Proxy;
    .end local v7    # "sel":Ljava/net/ProxySelector;
    .end local v8    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 262
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v5    # "p":Ljava/net/Proxy;
    .restart local v6    # "paddr":Ljava/net/InetSocketAddress;
    .restart local v7    # "sel":Ljava/net/ProxySelector;
    .restart local v8    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 263
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v7, v8, v6, v3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 264
    const/4 v10, 0x0

    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    goto/16 :goto_0

    .line 269
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v6    # "paddr":Ljava/net/InetSocketAddress;
    .end local v7    # "sel":Ljava/net/ProxySelector;
    .end local v8    # "uri":Ljava/net/URI;
    .local v5, "p":Ljava/net/Proxy;
    :cond_8
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    .line 270
    .local v5, "p":Ljava/net/Proxy;
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v10, v11, :cond_1

    .line 271
    new-instance v10, Lsun/net/www/protocol/http/HttpURLConnection;

    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    .line 272
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 273
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 274
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-ltz v10, :cond_9

    .line 275
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setConnectTimeout(I)V

    .line 277
    :cond_9
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-ltz v10, :cond_a

    .line 278
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setReadTimeout(I)V

    .line 280
    :cond_a
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v10}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 281
    const/4 v10, 0x1

    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 282
    return-void

    .line 303
    .end local v5    # "p":Ljava/net/Proxy;
    :cond_b
    :try_start_9
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v11, Ljava/net/InetSocketAddress;

    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v13

    invoke-direct {v11, v12, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 305
    :catch_1
    move-exception v0

    .line 308
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_a
    throw v0

    .line 309
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v2

    .line 310
    .local v2, "fe":Lsun/net/ftp/FtpProtocolException;
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 314
    .end local v2    # "fe":Lsun/net/ftp/FtpProtocolException;
    :catch_3
    move-exception v1

    .line 315
    .local v1, "e":Lsun/net/ftp/FtpProtocolException;
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v10}, Lsun/net/ftp/FtpClient;->close()V

    .line 317
    new-instance v10, Lsun/net/ftp/FtpLoginException;

    const-string/jumbo v11, "Invalid username/password"

    invoke-direct {v10, v11}, Lsun/net/ftp/FtpLoginException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public getConnectTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 637
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ljava/net/URLConnection;->connected:Z

    if-nez v14, :cond_0

    .line 402
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    if-eqz v14, :cond_1

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v14}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    return-object v14

    .line 409
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v14, :cond_2

    .line 410
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Already opened for output"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 413
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v14, :cond_3

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v14

    .line 417
    :cond_3
    new-instance v12, Lsun/net/www/MessageHeader;

    invoke-direct {v12}, Lsun/net/www/MessageHeader;-><init>()V

    .line 419
    .local v12, "msgh":Lsun/net/www/MessageHeader;
    const/4 v8, 0x0

    .line 421
    .local v8, "isAdir":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 423
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-nez v14, :cond_8

    .line 426
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    .line 443
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->getLastTransferSize()J

    move-result-wide v10

    .line 444
    .local v10, "l":J
    const-string/jumbo v14, "content-length"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_6

    .line 451
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const-string/jumbo v16, "GET"

    invoke-virtual/range {v14 .. v16}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v9

    .line 452
    .local v9, "meteredInput":Z
    const/4 v13, 0x0

    .line 454
    .local v13, "pi":Lsun/net/ProgressSource;
    if-eqz v9, :cond_5

    .line 455
    new-instance v13, Lsun/net/ProgressSource;

    .end local v13    # "pi":Lsun/net/ProgressSource;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const-string/jumbo v15, "GET"

    invoke-direct {v13, v14, v15, v10, v11}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    .line 456
    .local v13, "pi":Lsun/net/ProgressSource;
    invoke-virtual {v13}, Lsun/net/ProgressSource;->beginTracking()V

    .line 459
    .end local v13    # "pi":Lsun/net/ProgressSource;
    :cond_5
    new-instance v14, Lsun/net/www/MeteredStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-direct {v14, v15, v13, v10, v11}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    .line 467
    .end local v9    # "meteredInput":Z
    .end local v10    # "l":J
    :cond_6
    :goto_1
    if-eqz v8, :cond_b

    .line 468
    :try_start_2
    const-string/jumbo v14, "content-type"

    const-string/jumbo v15, "text/plain"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "directory"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    .line 499
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/net/www/URLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v14

    .line 428
    :cond_8
    :try_start_3
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->nameList(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 480
    :catch_0
    move-exception v2

    .line 482
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 488
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 489
    const-string/jumbo v14, "content-type"

    const-string/jumbo v15, "text/plain"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "directory"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 491
    :catch_1
    move-exception v4

    .line 492
    .local v4, "ex":Ljava/io/IOException;
    new-instance v14, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 431
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 436
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 437
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 496
    :catch_2
    move-exception v6

    .line 497
    .local v6, "ftpe":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 434
    .end local v6    # "ftpe":Lsun/net/ftp/FtpProtocolException;
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;

    goto :goto_3

    .line 461
    :catch_3
    move-exception v3

    .line 462
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 471
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "file"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, "ftype":Ljava/lang/String;
    if-nez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->markSupported()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 476
    :cond_c
    if-eqz v7, :cond_7

    .line 477
    const-string/jumbo v14, "content-type"

    invoke-virtual {v12, v14, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 493
    .end local v7    # "ftype":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 494
    .local v5, "ex2":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    iget-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v2, :cond_0

    .line 516
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 519
    :cond_0
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 520
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 523
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v2}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 524
    return-object v1

    .line 527
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 528
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Already opened for input"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_2
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    .line 532
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v2

    .line 535
    :cond_3
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 537
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "illegal filename for a PUT"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 540
    :cond_5
    :try_start_0
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 541
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-direct {p0, v2}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 543
    :cond_6
    iget v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 544
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v2}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 548
    :goto_0
    new-instance v2, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lsun/net/ftp/FtpClient;->putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/OutputStream;)V

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v2

    .line 546
    :cond_7
    :try_start_1
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v2}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;
    :try_end_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4

    .prologue
    .line 566
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    if-nez v2, :cond_1

    .line 567
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 568
    .local v1, "urlport":I
    if-gez v1, :cond_0

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v1

    .line 569
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "urlhost":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    const-string/jumbo v3, "connect"

    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    .line 572
    .end local v0    # "urlhost":Ljava/lang/String;
    .end local v1    # "urlport":I
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    return-object v2
.end method

.method public getReadTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 650
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    goto :goto_0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 619
    const-string/jumbo v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "a"

    .line 624
    :cond_0
    :goto_0
    return-object v0

    .line 620
    :cond_1
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string/jumbo v0, "d"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "i"

    goto :goto_0
.end method

.method guessContentTypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-static {p1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 629
    if-gez p1, :cond_0

    .line 630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 628
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 642
    if-gez p1, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 641
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-super {p0, p1, p2}, Lsun/net/www/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string/jumbo v0, "i"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    const/4 v0, 0x2

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const-string/jumbo v0, "a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    const/4 v0, 0x1

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_0

    .line 593
    :cond_2
    const-string/jumbo v0, "d"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    const/4 v0, 0x3

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_0

    .line 596
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 598
    const-string/jumbo v2, "\' request property was \'"

    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 599
    const-string/jumbo v2, "\' when it must be either \'i\', \'a\' or \'d\'"

    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
