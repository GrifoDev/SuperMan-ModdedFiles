.class public Ljava/lang/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field private static mans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest;",
            ">;"
        }
    .end annotation
.end field

.field private static pkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private static urls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final implTitle:Ljava/lang/String;

.field private final implVendor:Ljava/lang/String;

.field private final implVersion:Ljava/lang/String;

.field private final transient loader:Ljava/lang/ClassLoader;

.field private transient packageInfo:Ljava/lang/Class;

.field private final pkgName:Ljava/lang/String;

.field private final sealBase:Ljava/net/URL;

.field private final specTitle:Ljava/lang/String;

.field private final specVendor:Ljava/lang/String;

.field private final specVersion:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .locals 1

    invoke-static {p0}, Ljava/lang/Package;->loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xa

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    iput-object p5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    iput-object p6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    iput-object p7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    iput-object p2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    iput-object p3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    iput-object p4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    iput-object p8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    iput-object p9, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2, v5}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    if-eqz v1, :cond_7

    if-nez v8, :cond_1

    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-nez v10, :cond_2

    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    :cond_2
    if-nez v9, :cond_3

    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    :cond_3
    if-nez v2, :cond_4

    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez v4, :cond_5

    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    if-nez v3, :cond_6

    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-nez v7, :cond_7

    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    const-string/jumbo v11, "true"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v6, p3

    :cond_8
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    iput-object v8, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    iput-object v10, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    iput-object v9, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    iput-object v2, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    iput-object v4, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    iput-object v3, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    iput-object v6, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    move-object/from16 v0, p4

    iput-object v0, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1

    new-instance v0, Ljava/lang/Package$1;

    invoke-direct {v0, p0, p1}, Ljava/lang/Package$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    return-object v0
.end method

.method static getPackage(Ljava/lang/Class;)Ljava/lang/Package;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Package;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    :cond_1
    return-object v4
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method private getPackageInfo()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".package-info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    return-object v1

    :catch_0
    move-exception v0

    const-class v1, Ljava/lang/Package$1PackageInfoProxy;

    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static getPackages()[Ljava/lang/Package;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/Package;->getSystemPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method static getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 5

    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Package;

    if-nez v1, :cond_0

    const/16 v2, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static native getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static getSystemPackages()[Ljava/lang/Package;
    .locals 5

    invoke-static {}, Ljava/lang/Package;->getSystemPackages0()[Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    sget-object v4, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Package;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static native getSystemPackages0()[Ljava/lang/String;
.end method

.method private static loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .locals 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/util/jar/JarInputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v8

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_5
    throw v5

    :catch_0
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    :goto_2
    return-object v7

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v5

    if-eqz v6, :cond_2

    if-eq v6, v5, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v5, v6

    goto :goto_1

    :cond_3
    return-object v8

    :catch_3
    move-exception v5

    :goto_3
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_4
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    move-object v8, v6

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    move-object v6, v8

    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    :try_start_9
    throw v6

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v8

    if-eqz v6, :cond_5

    if-eq v6, v8, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v6

    goto :goto_5

    :catch_6
    move-exception v6

    if-eqz v8, :cond_7

    if-eq v8, v6, :cond_6

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v8

    goto :goto_6

    :cond_8
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catchall_1
    move-exception v5

    move-object v6, v7

    goto :goto_4

    :catchall_2
    move-exception v5

    move-object v6, v7

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v5

    move-object v6, v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catch_8
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)[TA;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)[TA;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompatibleWith(Ljava/lang/String;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v11, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string/jumbo v9, "Empty version string"

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    const-string/jumbo v10, "\\."

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    new-array v7, v9, [I

    const/4 v3, 0x0

    :goto_0
    array-length v9, v6

    if-ge v3, v9, :cond_3

    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v3

    aget v9, v7, v3

    if-gez v9, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v7, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "\\."

    invoke-virtual {p1, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v9, v1

    new-array v2, v9, [I

    const/4 v3, 0x0

    :goto_1
    array-length v9, v1

    if-ge v3, v9, :cond_5

    aget-object v9, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v2, v3

    aget v9, v2, v3

    if-gez v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    array-length v9, v2

    array-length v10, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_a

    array-length v9, v2

    if-ge v3, v9, :cond_6

    aget v0, v2, v3

    :goto_3
    array-length v9, v7

    if-ge v3, v9, :cond_7

    aget v5, v7, v3

    :goto_4
    if-ge v5, v0, :cond_8

    return v8

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move v5, v8

    goto :goto_4

    :cond_8
    if-le v5, v0, :cond_9

    return v11

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    return v11
.end method

.method public isSealed()Z
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSealed(Ljava/net/URL;)Z
    .locals 1

    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    invoke-virtual {p1, v0}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
