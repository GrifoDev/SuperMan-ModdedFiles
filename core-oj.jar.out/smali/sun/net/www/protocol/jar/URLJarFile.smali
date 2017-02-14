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

    const/4 v0, 0x0

    sput-object v0, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    const/16 v0, 0x800

    sput v0, Lsun/net/www/protocol/jar/URLJarFile;->BUF_SIZE:I

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    return-void
.end method

.method static copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x1000

    :try_start_0
    new-array v0, v3, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method static getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method static getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isFileURL(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-direct {v0, p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static isFileURL(Ljava/net/URL;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v4, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    if-eqz v4, :cond_0

    sget-object v4, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    invoke-interface {v4, p0}, Lsun/net/www/protocol/jar/URLJarFileCallBack;->retrieve(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string/jumbo v4, "jar_cache"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    invoke-static {v0, v3}, Lsun/net/www/protocol/jar/URLJarFile;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

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

    :cond_2
    return-object v1

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

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

    sput-object p0, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

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

    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-interface {v0, p0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;->close(Ljava/util/jar/JarFile;)V

    :cond_0
    invoke-super {p0}, Ljava/util/jar/JarFile;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile;->close()V

    return-void
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/jar/JarEntry;

    if-eqz v1, :cond_0

    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;

    nop

    nop

    invoke-direct {v1, p0, v0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;-><init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/util/jar/JarFile;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returned unexpected entry type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

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

    const/4 v7, 0x0

    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    move-result v6

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    new-instance v5, Ljava/util/jar/Manifest;

    invoke-direct {v5}, Ljava/util/jar/Manifest;-><init>()V

    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    invoke-virtual {v6}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v1, v6}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v2

    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v5
.end method
