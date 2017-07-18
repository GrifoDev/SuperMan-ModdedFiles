.class Lsun/misc/URLClassPath$Loader;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final base:Ljava/net/URL;

.field private jarfile:Ljava/util/jar/JarFile;


# direct methods
.method static synthetic -get0(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object v0
.end method

.method constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

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

    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    return-void
.end method

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v8, 0x0

    invoke-static {p1, v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {v6}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    instance-of v7, v5, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_1

    move-object v0, v5

    nop

    nop

    move-object v3, v0

    const-string/jumbo v7, "HEAD"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    const/16 v8, 0x190

    if-lt v7, v8, :cond_2

    return-object v9

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "name"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-object v6

    :catch_1
    move-exception v1

    return-object v9
.end method

.method getBaseURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object v0
.end method

.method getClassPath()[Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .locals 9

    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v8, 0x0

    invoke-static {p1, v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {v6}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    instance-of v7, v5, Ljava/net/JarURLConnection;

    if-eqz v7, :cond_1

    move-object v0, v5

    nop

    nop

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v7

    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v7

    iput-object v7, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    new-instance v7, Lsun/misc/URLClassPath$Loader$1;

    invoke-direct {v7, p0, p1, v6, v5}, Lsun/misc/URLClassPath$Loader$1;-><init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V

    return-object v7

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "name"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_1
    move-exception v1

    const/4 v7, 0x0

    return-object v7
.end method
