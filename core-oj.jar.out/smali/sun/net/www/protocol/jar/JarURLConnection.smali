.class public Lsun/net/www/protocol/jar/JarURLConnection;
.super Ljava/net/JarURLConnection;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;
    }
.end annotation


# static fields
.field private static final debug:Z

.field private static final factory:Lsun/net/www/protocol/jar/JarFileFactory;


# instance fields
.field private contentType:Ljava/lang/String;

.field private entryName:Ljava/lang/String;

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarFileURLConnection:Ljava/net/URLConnection;

.field private permission:Ljava/security/Permission;


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lsun/net/www/protocol/jar/JarFileFactory;->getInstance()Lsun/net/www/protocol/jar/JarFileFactory;

    move-result-object v0

    sput-object v0, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/Handler;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/jar/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 83
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    .line 84
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 85
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v1, :cond_3

    .line 122
    sget-object v1, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lsun/net/www/protocol/jar/JarFileFactory;->get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 127
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v1, v2}, Lsun/net/www/protocol/jar/JarFileFactory;->getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 131
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    .line 133
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v1, :cond_2

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JAR entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    const-string/jumbo v3, " not found in "

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    .line 119
    :cond_3
    return-void

    .line 138
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 194
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 195
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 199
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 169
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 170
    const/4 v2, -0x1

    return v2

    .line 171
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public getContentLengthLong()J
    .locals 4

    .prologue
    .line 175
    const-wide/16 v2, -0x1

    .line 177
    .local v2, "result":J
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 178
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v2

    .line 187
    :goto_0
    return-wide v2

    .line 183
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 204
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 205
    const-string/jumbo v2, "x-java/jar"

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 217
    :goto_0
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-static {v2}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 220
    :cond_0
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 221
    const-string/jumbo v2, "content/unknown"

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 224
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    return-object v2

    .line 208
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 209
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 211
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    invoke-static {v2}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 212
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "result":Ljava/io/InputStream;
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "no entry name specified"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JAR entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    const-string/jumbo v3, " not found in "

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_1
    new-instance v0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;-><init>(Lsun/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;)V

    .line 164
    .local v0, "result":Ljava/io/InputStream;
    return-object v0
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 95
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 90
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 277
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "allowuserinteraction"    # Z

    .prologue
    .line 288
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 287
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "defaultusecaches"    # Z

    .prologue
    .line 356
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 355
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "ifmodifiedsince"    # J

    .prologue
    .line 345
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 344
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "usecaches"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 321
    return-void
.end method
