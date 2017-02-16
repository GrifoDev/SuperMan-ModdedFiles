.class public Lsun/net/www/protocol/jar/URLJarFile;
.super Ljava/util/jar/JarFile;
.source "URLJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;,
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;
    }
.end annotation


# static fields
.field private static BUF_SIZE:I

.field private static callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;


# instance fields
.field private closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

.field private superAttr:Ljava/util/jar/Attributes;

.field private superEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private superMan:Ljava/util/jar/Manifest;


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/net/www/protocol/jar/URLJarFile;)Z
    .locals 1

    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    .line 54
    const/16 v0, 0x800

    sput v0, Lsun/net/www/protocol/jar/URLJarFile;->BUF_SIZE:I

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 74
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 72
    return-void
.end method

.method static copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x1000

    :try_start_0
    new-array v0, v3, [B

    .line 211
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 212
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "buf":[B
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    .line 215
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 214
    throw v3

    .line 215
    .restart local v0    # "buf":[B
    .restart local v1    # "len":I
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 206
    return-void
.end method

.method static getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method static getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isFileURL(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-direct {v0, p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    return-object v0

    .line 68
    :cond_0
    invoke-static {p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static isFileURL(Ljava/net/URL;)Z
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const-string/jumbo v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 86
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 88
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private declared-synchronized isSuperMan()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    .line 157
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    .line 159
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 162
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static retrieve(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .locals 8
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 183
    sget-object v4, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    if-eqz v4, :cond_0

    .line 185
    sget-object v4, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    invoke-interface {v4, p0}, Lsun/net/www/protocol/jar/URLJarFileCallBack;->retrieve(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v4

    return-object v4

    .line 191
    :cond_0
    const/4 v0, 0x0

    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 192
    .local v0, "in":Ljava/io/InputStream;
    const-string/jumbo v4, "jar_cache"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 194
    .local v3, "tmpFile":Ljava/io/File;
    :try_start_1
    invoke-static {v0, v3}, Lsun/net/www/protocol/jar/URLJarFile;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 195
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 196
    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    throw v5

    :catch_0
    move-exception v5

    goto :goto_0

    .line 197
    :cond_2
    return-object v1

    .line 198
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v2

    .line 199
    .local v2, "thr":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 200
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v2    # "thr":Ljava/lang/Throwable;
    .end local v3    # "tmpFile":Ljava/io/File;
    :catch_2
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    throw v5

    :catch_3
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public static setCallBack(Lsun/net/www/protocol/jar/URLJarFileCallBack;)V
    .locals 0
    .param p0, "cb"    # Lsun/net/www/protocol/jar/URLJarFileCallBack;

    .prologue
    .line 225
    sput-object p0, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    .line 223
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-interface {v0, p0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;->close(Ljava/util/jar/JarFile;)V

    .line 147
    :cond_0
    invoke-super {p0}, Ljava/util/jar/JarFile;->close()V

    .line 143
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile;->close()V

    .line 94
    return-void
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 109
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 110
    instance-of v1, v0, Ljava/util/jar/JarEntry;

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;

    nop

    nop

    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    invoke-direct {v1, p0, v0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;-><init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V

    return-object v1

    .line 113
    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/util/jar/JarFile;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    const-string/jumbo v3, " returned unexpected entry type "

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    return-object v1
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 122
    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    return-object v7

    .line 126
    :cond_0
    new-instance v5, Ljava/util/jar/Manifest;

    invoke-direct {v5}, Ljava/util/jar/Manifest;-><init>()V

    .line 127
    .local v5, "man":Ljava/util/jar/Manifest;
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 128
    .local v1, "attr":Ljava/util/jar/Attributes;
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    invoke-virtual {v6}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v1, v6}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    .line 131
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v2

    .line 133
    .local v2, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 135
    .local v0, "at":Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v0    # "at":Ljava/util/jar/Attributes;
    .end local v2    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v5
.end method
