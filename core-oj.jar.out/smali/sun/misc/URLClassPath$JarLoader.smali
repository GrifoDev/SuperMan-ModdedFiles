.class Lsun/misc/URLClassPath$JarLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JarLoader"
.end annotation


# instance fields
.field private closed:Z

.field private csu:Ljava/net/URL;

.field private handler:Ljava/net/URLStreamHandler;

.field private index:Lsun/misc/JarIndex;

.field private jar:Ljava/util/jar/JarFile;

.field private lmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private metaIndex:Lsun/misc/MetaIndex;


# direct methods
.method static synthetic -get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic -get1(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    return-object v0
.end method

.method static synthetic -get2(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v0
.end method

.method static synthetic -get3(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method static synthetic -get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    return-object v0
.end method

.method static synthetic -set0(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;
    .locals 0

    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object p1
.end method

.method static synthetic -set1(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .locals 0

    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object p1
.end method

.method static synthetic -wrap0(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1

    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/net/URLStreamHandler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "jar"

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lsun/misc/MetaIndex;->forJar(Ljava/io/File;)Lsun/misc/MetaIndex;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    goto :goto_0

    :cond_3
    iput-object v8, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    goto :goto_1
.end method

.method static checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lsun/misc/URLClassPath;->-get1()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->startsWithLocHeader()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid Jar file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lsun/misc/URLClassPath$JarLoader$1;

    invoke-direct {v1, p0}, Lsun/misc/URLClassPath$JarLoader$1;-><init>(Lsun/misc/URLClassPath$JarLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lsun/misc/FileURLMapper;

    invoke-direct {v1, p1}, Lsun/misc/FileURLMapper;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {p0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string/jumbo v3, "UA-Java-Version"

    sget-object v4, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Ljava/net/JarURLConnection;

    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v3

    return-object v3
.end method

.method private isOptimizable(Ljava/net/URL;)Z
    .locals 2

    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v3, v4, [Ljava/net/URL;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private parseExtensionsDependencies()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {v3}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v4, Lsun/misc/URLClassPath$JarLoader$2;

    invoke-direct {v4, p0, p1, v3, p3}, Lsun/misc/URLClassPath$JarLoader$2;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V

    return-object v4

    :catch_0
    move-exception v2

    return-object v6

    :catch_1
    move-exception v0

    return-object v6

    :catch_2
    move-exception v1

    return-object v6
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    return-void
.end method

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method getClassPath()[Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->parseExtensionsDependencies()V

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->hasClassPathAttribute()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {p0, v3, v2}, Lsun/misc/URLClassPath$JarLoader;->parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v4
.end method

.method getIndex()Lsun/misc/JarIndex;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/InternalError;

    throw v1
.end method

.method getJarFile()Ljava/util/jar/JarFile;
    .locals 1

    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    invoke-virtual {v3, p1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/InternalError;

    throw v3

    :cond_1
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-nez v3, :cond_2

    return-object v4

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1, p2, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v3

    return-object v3
.end method

.method getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/misc/Resource;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    if-nez v10, :cond_1

    const/16 v21, 0x0

    return-object v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_b

    move v3, v4

    :cond_1
    invoke-virtual {v10}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v17

    move v4, v3

    :goto_0
    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-object v11, v9, v4

    check-cast v11, Ljava/lang/String;

    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsun/misc/URLClassPath$JarLoader;

    if-nez v13, :cond_3

    new-instance v21, Lsun/misc/URLClassPath$JarLoader$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader$3;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V

    invoke-static/range {v21 .. v21}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsun/misc/URLClassPath$JarLoader;

    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string/jumbo v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v22, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    const/16 v21, 0x0

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lsun/misc/JarIndex;->merge(Lsun/misc/JarIndex;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-static/range {v18 .. v18}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v20, 0x0

    :goto_2
    if-nez v20, :cond_7

    :try_start_1
    invoke-direct {v13}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v0, v13, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1, v8}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v21

    return-object v21

    :cond_4
    add-int/lit8 v21, v15, 0x1

    const/16 v23, 0x0

    :try_start_2
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v21

    goto :goto_1

    :catch_0
    move-exception v7

    move v4, v3

    goto/16 :goto_0

    :catch_1
    move-exception v14

    move v4, v3

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x1

    goto :goto_2

    :catch_2
    move-exception v6

    new-instance v21, Ljava/lang/InternalError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/InternalError;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v21

    check-cast v21, Ljava/lang/InternalError;

    throw v21

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lsun/misc/URLClassPath$JarLoader;->validIndex(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    new-instance v21, Lsun/misc/InvalidJarIndexException;

    const-string/jumbo v22, "Invalid index"

    invoke-direct/range {v21 .. v22}, Lsun/misc/InvalidJarIndexException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_7
    if-nez v20, :cond_8

    move-object/from16 v0, p0

    if-ne v13, v0, :cond_9

    :cond_8
    move v4, v3

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v16

    if-eqz v16, :cond_a

    return-object v16

    :cond_a
    move v4, v3

    goto/16 :goto_0

    :cond_b
    const/16 v21, 0x0

    return-object v21
.end method

.method validIndex(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    move-object v3, p1

    const-string/jumbo v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    :cond_3
    return v6
.end method
