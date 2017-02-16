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
    .param p0, "fn"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/lang/Package;->loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 620
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    .line 623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    .line 626
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    .line 112
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "spectitle"    # Ljava/lang/String;
    .param p3, "specversion"    # Ljava/lang/String;
    .param p4, "specvendor"    # Ljava/lang/String;
    .param p5, "impltitle"    # Ljava/lang/String;
    .param p6, "implversion"    # Ljava/lang/String;
    .param p7, "implvendor"    # Ljava/lang/String;
    .param p8, "sealbase"    # Ljava/net/URL;
    .param p9, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    .line 461
    iput-object p5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 462
    iput-object p6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 463
    iput-object p7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 464
    iput-object p2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 465
    iput-object p3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 466
    iput-object p4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 467
    iput-object p8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 468
    iput-object p9, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    .line 458
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 481
    .local v7, "sealed":Ljava/lang/String;
    const/4 v8, 0x0

    .line 482
    .local v8, "specTitle":Ljava/lang/String;
    const/4 v10, 0x0

    .line 483
    .local v10, "specVersion":Ljava/lang/String;
    const/4 v9, 0x0

    .line 484
    .local v9, "specVendor":Ljava/lang/String;
    const/4 v2, 0x0

    .line 485
    .local v2, "implTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 486
    .local v4, "implVersion":Ljava/lang/String;
    const/4 v3, 0x0

    .line 487
    .local v3, "implVendor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 488
    .local v6, "sealBase":Ljava/net/URL;
    invoke-virtual {p2, v5}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    .line 489
    .local v1, "attr":Ljava/util/jar/Attributes;
    if-eqz v1, :cond_0

    .line 490
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    .line 491
    .local v8, "specTitle":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    .line 492
    .local v10, "specVersion":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    .line 493
    .local v9, "specVendor":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "implTitle":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "implVersion":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "implVendor":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 498
    .end local v2    # "implTitle":Ljava/lang/String;
    .end local v3    # "implVendor":Ljava/lang/String;
    .end local v4    # "implVersion":Ljava/lang/String;
    .end local v7    # "sealed":Ljava/lang/String;
    .end local v8    # "specTitle":Ljava/lang/String;
    .end local v9    # "specVendor":Ljava/lang/String;
    .end local v10    # "specVersion":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_7

    .line 500
    if-nez v8, :cond_1

    .line 501
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    .line 503
    :cond_1
    if-nez v10, :cond_2

    .line 504
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    .line 506
    :cond_2
    if-nez v9, :cond_3

    .line 507
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    .line 509
    :cond_3
    if-nez v2, :cond_4

    .line 510
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_4
    if-nez v4, :cond_5

    .line 513
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 515
    :cond_5
    if-nez v3, :cond_6

    .line 516
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 518
    :cond_6
    if-nez v7, :cond_7

    .line 519
    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 522
    :cond_7
    const-string/jumbo v11, "true"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 523
    move-object/from16 v6, p3

    .line 525
    .end local v6    # "sealBase":Ljava/net/URL;
    :cond_8
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    .line 526
    iput-object v8, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 527
    iput-object v10, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 528
    iput-object v9, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 529
    iput-object v2, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 530
    iput-object v4, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 531
    iput-object v3, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 532
    iput-object v6, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 533
    move-object/from16 v0, p4

    iput-object v0, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    .line 478
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1
    .param p0, "iname"    # Ljava/lang/String;
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 570
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

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "name":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 331
    .local v1, "i":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 332
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 334
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    .line 337
    :cond_0
    invoke-static {v2}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    .line 340
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    return-object v4
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 282
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1

    .line 285
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

    .prologue
    .line 382
    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 384
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

    .line 391
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 388
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-class v1, Ljava/lang/Package$1PackageInfoProxy;

    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static getPackages()[Ljava/lang/Package;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 304
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1

    .line 307
    :cond_0
    invoke-static {}, Ljava/lang/Package;->getSystemPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method static getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 540
    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v3

    .line 541
    :try_start_0
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Package;

    .line 542
    .local v1, "pkg":Ljava/lang/Package;
    if-nez v1, :cond_0

    .line 543
    const/16 v2, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 544
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "fn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 546
    invoke-static {p0, v0}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .end local v0    # "fn":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 549
    return-object v1

    .line 540
    .end local v1    # "pkg":Ljava/lang/Package;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static native getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static getSystemPackages()[Ljava/lang/Package;
    .locals 5

    .prologue
    .line 558
    invoke-static {}, Ljava/lang/Package;->getSystemPackages0()[Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "names":[Ljava/lang/String;
    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v3

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 561
    aget-object v2, v1, v0

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
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

    .line 559
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static native getSystemPackages0()[Ljava/lang/String;
.end method

.method private static loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .locals 10
    .param p0, "fn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 610
    const/4 v1, 0x0

    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/util/jar/JarInputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 613
    .local v4, "jis":Ljava/util/jar/JarInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    move-result-object v8

    .line 616
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

    .line 614
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    .line 615
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    :goto_2
    return-object v7

    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
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

    .line 613
    :cond_3
    return-object v8

    .line 616
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :catch_3
    move-exception v5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
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

    .line 614
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 616
    .end local v0    # "e":Ljava/io/IOException;
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

    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "jis":Ljava/util/jar/JarInputStream;
    :catchall_1
    move-exception v5

    move-object v6, v7

    goto :goto_4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v5

    move-object v6, v7

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catchall_3
    move-exception v5

    move-object v6, v7

    move-object v3, v4

    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
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

    .prologue
    .line 399
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 415
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

    .prologue
    .line 408
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
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

    .prologue
    .line 424
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 440
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

    .prologue
    .line 433
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompatibleWith(Ljava/lang/String;)Z
    .locals 13
    .param p1, "desired"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 231
    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v11, :cond_1

    .line 232
    :cond_0
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string/jumbo v9, "Empty version string"

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 235
    :cond_1
    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    const-string/jumbo v10, "\\."

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "sa":[Ljava/lang/String;
    array-length v9, v6

    new-array v7, v9, [I

    .line 237
    .local v7, "si":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v6

    if-ge v3, v9, :cond_3

    .line 238
    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v3

    .line 239
    aget v9, v7, v3

    if-gez v9, :cond_2

    .line 240
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

    .line 237
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_3
    const-string/jumbo v9, "\\."

    invoke-virtual {p1, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "da":[Ljava/lang/String;
    array-length v9, v1

    new-array v2, v9, [I

    .line 245
    .local v2, "di":[I
    const/4 v3, 0x0

    :goto_1
    array-length v9, v1

    if-ge v3, v9, :cond_5

    .line 246
    aget-object v9, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v2, v3

    .line 247
    aget v9, v2, v3

    if-gez v9, :cond_4

    .line 248
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

    .line 245
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    :cond_5
    array-length v9, v2

    array-length v10, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 252
    .local v4, "len":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_a

    .line 253
    array-length v9, v2

    if-ge v3, v9, :cond_6

    aget v0, v2, v3

    .line 254
    .local v0, "d":I
    :goto_3
    array-length v9, v7

    if-ge v3, v9, :cond_7

    aget v5, v7, v3

    .line 255
    .local v5, "s":I
    :goto_4
    if-ge v5, v0, :cond_8

    .line 256
    return v8

    .line 253
    .end local v0    # "d":I
    .end local v5    # "s":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "d":I
    goto :goto_3

    :cond_7
    move v5, v8

    .line 254
    goto :goto_4

    .line 257
    .restart local v5    # "s":I
    :cond_8
    if-le v5, v0, :cond_9

    .line 258
    return v11

    .line 252
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 260
    .end local v0    # "d":I
    .end local v5    # "s":I
    :cond_a
    return v11
.end method

.method public isSealed()Z
    .locals 1

    .prologue
    .line 192
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
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 203
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    invoke-virtual {p1, v0}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
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
