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
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jarHandler"    # Ljava/net/URLStreamHandler;
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

    .prologue
    .local p3, "loaderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lsun/misc/URLClassPath$Loader;>;"
    const/4 v8, 0x0

    .line 609
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

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    .line 610
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    .line 611
    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    .line 612
    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    .line 614
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 618
    .local v7, "fileName":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 619
    invoke-static {v7}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 620
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v6, "f":Ljava/io/File;
    invoke-static {v6}, Lsun/misc/MetaIndex;->forJar(Ljava/io/File;)Lsun/misc/MetaIndex;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    .line 628
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    .end local v6    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-nez v0, :cond_0

    .line 637
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    goto :goto_0

    .line 629
    .restart local v6    # "f":Ljava/io/File;
    :cond_3
    iput-object v8, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    goto :goto_1
.end method

.method static checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .locals 3
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lsun/misc/URLClassPath;->-get1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    :cond_0
    return-object p0

    .line 707
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->startsWithLocHeader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid Jar file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 710
    .local v1, "x":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    throw v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "ex":Ljava/io/IOException;
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

    .prologue
    .line 662
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    if-nez v1, :cond_0

    .line 665
    :try_start_0
    new-instance v1, Lsun/misc/URLClassPath$JarLoader$1;

    invoke-direct {v1, p0}, Lsun/misc/URLClassPath$JarLoader$1;-><init>(Lsun/misc/URLClassPath$JarLoader;)V

    .line 664
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :cond_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 723
    new-instance v1, Lsun/misc/FileURLMapper;

    invoke-direct {v1, p1}, Lsun/misc/FileURLMapper;-><init>(Ljava/net/URL;)V

    .line 724
    .local v1, "p":Lsun/misc/FileURLMapper;
    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 725
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 727
    :cond_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v3

    return-object v3

    .line 729
    .end local v1    # "p":Lsun/misc/FileURLMapper;
    :cond_1
    invoke-virtual {p0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 730
    .local v2, "uc":Ljava/net/URLConnection;
    const-string/jumbo v3, "UA-Java-Version"

    sget-object v4, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    check-cast v2, Ljava/net/JarURLConnection;

    .end local v2    # "uc":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    .line 732
    .local v0, "jarFile":Ljava/util/jar/JarFile;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v3

    return-object v3
.end method

.method private isOptimizable(Ljava/net/URL;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 658
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .locals 5
    .param p1, "base"    # Ljava/net/URL;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1011
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v3, v4, [Ljava/net/URL;

    .line 1013
    .local v3, "urls":[Ljava/net/URL;
    const/4 v0, 0x0

    .line 1014
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1015
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    .end local v1    # "path":Ljava/lang/String;
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

    .prologue
    .line 1001
    return-void
.end method


# virtual methods
.method checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .param p3, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    const/4 v6, 0x0

    .line 756
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 757
    .local v3, "url":Ljava/net/URL;
    if-eqz p2, :cond_0

    .line 758
    invoke-static {v3}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :cond_0
    new-instance v4, Lsun/misc/URLClassPath$JarLoader$2;

    invoke-direct {v4, p0, p1, v3, p3}, Lsun/misc/URLClassPath$JarLoader$2;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V

    return-object v4

    .line 765
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 766
    .local v2, "e":Ljava/security/AccessControlException;
    return-object v6

    .line 763
    .end local v2    # "e":Ljava/security/AccessControlException;
    :catch_1
    move-exception v0

    .line 764
    .local v0, "e":Ljava/io/IOException;
    return-object v6

    .line 760
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 761
    .local v1, "e":Ljava/net/MalformedURLException;
    return-object v6
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    iget-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    .line 648
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 649
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 643
    :cond_0
    return-void
.end method

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 817
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 818
    .local v0, "rsc":Lsun/misc/Resource;
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 821
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

    .prologue
    const/4 v4, 0x0

    .line 973
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-eqz v3, :cond_0

    .line 974
    return-object v4

    .line 977
    :cond_0
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v3, :cond_1

    .line 978
    return-object v4

    .line 981
    :cond_1
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 982
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->parseExtensionsDependencies()V

    .line 983
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->hasClassPathAttribute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 984
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 985
    .local v1, "man":Ljava/util/jar/Manifest;
    if-eqz v1, :cond_2

    .line 986
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 987
    .local v0, "attr":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_2

    .line 988
    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 989
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 990
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {p0, v3, v2}, Lsun/misc/URLClassPath$JarLoader;->parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    return-object v3

    .line 995
    .end local v0    # "attr":Ljava/util/jar/Attributes;
    .end local v1    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method getIndex()Lsun/misc/JarIndex;
    .locals 2

    .prologue
    .line 740
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v1

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/InternalError;

    throw v1
.end method

.method getJarFile()Ljava/util/jar/JarFile;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v4, 0x0

    .line 828
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v3, :cond_0

    .line 829
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    invoke-virtual {v3, p1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 830
    return-object v4

    .line 835
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 840
    .local v1, "entry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_1

    .line 841
    invoke-virtual {p0, p1, p2, v1}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v3

    return-object v3

    .line 836
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/InternalError;

    throw v3

    .line 843
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Ljava/util/jar/JarEntry;
    :cond_1
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-nez v3, :cond_2

    .line 844
    return-object v4

    .line 846
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 847
    .local v2, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v3

    return-object v3
.end method

.method getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
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

    .prologue
    .line 862
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 863
    .local v5, "done":Z
    const/4 v3, 0x0

    .line 864
    .local v3, "count":I
    const/4 v10, 0x0

    .line 869
    .local v10, "jarFilesList":Ljava/util/LinkedList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    .local v10, "jarFilesList":Ljava/util/LinkedList;
    if-nez v10, :cond_1

    .line 870
    const/16 v21, 0x0

    return-object v21

    .line 961
    .end local v3    # "count":I
    .local v4, "count":I
    .local v9, "jarFiles":[Ljava/lang/Object;
    .local v17, "size":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    .line 964
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_b

    move v3, v4

    .line 873
    .end local v4    # "count":I
    .end local v9    # "jarFiles":[Ljava/lang/Object;
    .end local v17    # "size":I
    .restart local v3    # "count":I
    :cond_1
    invoke-virtual {v10}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 874
    .restart local v9    # "jarFiles":[Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v17

    .restart local v17    # "size":I
    move v4, v3

    .line 876
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :goto_0
    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 877
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    aget-object v11, v9, v4

    check-cast v11, Ljava/lang/String;

    .line 882
    .local v11, "jarName":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 883
    .local v18, "url":Ljava/net/URL;
    invoke-static/range {v18 .. v18}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v19

    .line 884
    .local v19, "urlNoFragString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsun/misc/URLClassPath$JarLoader;

    .local v13, "newLoader":Lsun/misc/URLClassPath$JarLoader;
    if-nez v13, :cond_3

    .line 889
    new-instance v21, Lsun/misc/URLClassPath$JarLoader$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader$3;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V

    .line 888
    invoke-static/range {v21 .. v21}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    check-cast v13, Lsun/misc/URLClassPath$JarLoader;

    .line 900
    .restart local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v12

    .line 901
    .local v12, "newIndex":Lsun/misc/JarIndex;
    if-eqz v12, :cond_2

    .line 902
    const-string/jumbo v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 903
    .local v15, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v22, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 904
    const/16 v21, 0x0

    .line 903
    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lsun/misc/JarIndex;->merge(Lsun/misc/JarIndex;Ljava/lang/String;)V

    .line 908
    .end local v15    # "pos":I
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

    .line 920
    .end local v12    # "newIndex":Lsun/misc/JarIndex;
    :cond_3
    invoke-static/range {v18 .. v18}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v20, 0x0

    .line 921
    .local v20, "visitedURL":Z
    :goto_2
    if-nez v20, :cond_7

    .line 923
    :try_start_1
    invoke-direct {v13}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 927
    iget-object v0, v13, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v8

    .line 928
    .local v8, "entry":Ljava/util/jar/JarEntry;
    if-eqz v8, :cond_6

    .line 929
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1, v8}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v21

    return-object v21

    .line 904
    .end local v8    # "entry":Ljava/util/jar/JarEntry;
    .end local v20    # "visitedURL":Z
    .restart local v12    # "newIndex":Lsun/misc/JarIndex;
    .restart local v15    # "pos":I
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

    .line 912
    .end local v12    # "newIndex":Lsun/misc/JarIndex;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .end local v15    # "pos":I
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "urlNoFragString":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/net/MalformedURLException;
    move v4, v3

    .line 913
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 910
    .end local v4    # "count":I
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "count":I
    :catch_1
    move-exception v14

    .local v14, "pae":Ljava/security/PrivilegedActionException;
    move v4, v3

    .line 911
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 920
    .end local v4    # "count":I
    .end local v14    # "pae":Ljava/security/PrivilegedActionException;
    .restart local v3    # "count":I
    .restart local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .restart local v18    # "url":Ljava/net/URL;
    .restart local v19    # "urlNoFragString":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x1

    .restart local v20    # "visitedURL":Z
    goto :goto_2

    .line 924
    :catch_2
    move-exception v6

    .line 925
    .local v6, "e":Ljava/io/IOException;
    new-instance v21, Ljava/lang/InternalError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/InternalError;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v21

    check-cast v21, Ljava/lang/InternalError;

    throw v21

    .line 936
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "entry":Ljava/util/jar/JarEntry;
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lsun/misc/URLClassPath$JarLoader;->validIndex(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 938
    new-instance v21, Lsun/misc/InvalidJarIndexException;

    const-string/jumbo v22, "Invalid index"

    invoke-direct/range {v21 .. v22}, Lsun/misc/InvalidJarIndexException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 947
    .end local v8    # "entry":Ljava/util/jar/JarEntry;
    :cond_7
    if-nez v20, :cond_8

    move-object/from16 v0, p0

    if-ne v13, v0, :cond_9

    :cond_8
    move v4, v3

    .line 949
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 948
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_9
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 954
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v16

    .local v16, "res":Lsun/misc/Resource;
    if-eqz v16, :cond_a

    .line 956
    return-object v16

    :cond_a
    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    .line 965
    .end local v11    # "jarName":Ljava/lang/String;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .end local v16    # "res":Lsun/misc/Resource;
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "urlNoFragString":Ljava/lang/String;
    .end local v20    # "visitedURL":Z
    :cond_b
    const/16 v21, 0x0

    return-object v21
.end method

.method validIndex(Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 792
    move-object v3, p1

    .line 794
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "pos":I
    if-eq v4, v7, :cond_0

    .line 795
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 800
    :cond_0
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 801
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 802
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 803
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "entryName":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 805
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 806
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 807
    const/4 v5, 0x1

    return v5

    .line 810
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "entryName":Ljava/lang/String;
    :cond_3
    return v6
.end method
