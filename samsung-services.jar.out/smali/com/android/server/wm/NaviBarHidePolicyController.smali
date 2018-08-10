.class public Lcom/android/server/wm/NaviBarHidePolicyController;
.super Ljava/lang/Object;
.source "NaviBarHidePolicyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;,
        Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final NAVIBAR_DEFAULT_HIDE_PACKAGES:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "NaviBarHidePolicyController"


# instance fields
.field private final DIR_PATH:Ljava/lang/String;

.field private final FILE_NAME:Ljava/lang/String;

.field private final MSG_SAVE_PACKAGES_NOW:I

.field private final TIME_FOR_SAVE_PACKAGES:I

.field private mFixedPackageMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/FixedNaviBarPackageMap;",
            ">;"
        }
    .end annotation
.end field

.field private mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;

.field private mNavibarDefaultHidePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;

.field private mService:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/NaviBarHidePolicyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->writeFixedNaviBarPackageMap()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/wm/NaviBarHidePolicyController;->DEBUG:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.tmgp.sgame"

    aput-object v3, v0, v1

    const-string/jumbo v1, "com.tencent.mm"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqq"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.baidu.searchbox"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.baidu.searchbox_samsung"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.pingan.lifeinsurance"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.xiaoka.live"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.qq.reader"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wm/NaviBarHidePolicyController;->NAVIBAR_DEFAULT_HIDE_PACKAGES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/system/navibarhidepolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->DIR_PATH:Ljava/lang/String;

    const-string/jumbo v0, "PackageMap"

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->FILE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mNavibarDefaultHidePackages:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;-><init>(Lcom/android/server/wm/NaviBarHidePolicyController;)V

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mFixedPackageMapForUser:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->MSG_SAVE_PACKAGES_NOW:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->TIME_FOR_SAVE_PACKAGES:I

    return-void
.end method

.method private checkCallerIsSystemOrPermission()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.STATUS_BAR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial:  from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "android.permission.STATUS_BAR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private disableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v1, "NaviBarHidePolicyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NaviBarHidePolicy : disable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v1, "NaviBarHidePolicyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NaviBarHidePolicy : enable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mFixedPackageMapForUser:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FixedNaviBarPackageMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/FixedNaviBarPackageMap;

    invoke-direct {v0}, Lcom/android/server/wm/FixedNaviBarPackageMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mFixedPackageMapForUser:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private isCallerSystem()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/NaviBarHidePolicyController;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isUidSystem(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private killApplication(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const-string/jumbo v4, "hidenavibar"

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityManagerInternal;->killPackageProcess(Ljava/lang/String;IILjava/lang/String;Landroid/content/pm/ActivityInfo;)I

    return-void
.end method

.method private readNaviBarHidePolicyPackageMaps()V
    .locals 17

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/NaviBarHidePolicyController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz v10, :cond_7

    const/4 v13, 0x0

    array-length v14, v10

    move-object v2, v1

    move-object v7, v6

    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v8, v10, v13

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "PackageMap"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/NaviBarHidePolicyController;->mFixedPackageMapForUser:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_2
    move-object v8, v9

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object v2, v1

    move-object v7, v6

    goto :goto_0

    :cond_2
    move-object v1, v2

    move-object v6, v7

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v5

    move-object v1, v2

    move-object v6, v7

    :goto_4
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_5

    :catchall_0
    move-exception v13

    move-object v1, v2

    move-object v6, v7

    :goto_6
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_8
    throw v13

    :catch_5
    move-exception v4

    goto :goto_7

    :catch_6
    move-exception v4

    goto :goto_8

    :cond_6
    move-object v1, v2

    move-object v6, v7

    :cond_7
    return-void

    :catchall_1
    move-exception v13

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v13

    goto :goto_6

    :catch_7
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :catch_8
    move-exception v5

    goto :goto_4
.end method

.method private schedulePackageSave()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/NaviBarHidePolicyController$NaviBarHidePolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "FIXED_OFF"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "OFF"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ON"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private writeFixedNaviBarPackageMap()V
    .locals 13

    new-instance v8, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-result-object v9

    new-instance v7, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "PackageMap"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    move-object v5, v6

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v4

    :goto_3
    :try_start_5
    const-string/jumbo v10, "NaviBarHidePolicyController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to writeFixedNaviBarPackageMap filePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_4
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_4

    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_7
    throw v10

    :catch_5
    move-exception v3

    goto :goto_6

    :catch_6
    move-exception v3

    goto :goto_7

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_5

    :catchall_2
    move-exception v10

    move-object v0, v1

    move-object v5, v6

    goto :goto_5

    :catch_7
    move-exception v4

    move-object v5, v6

    goto :goto_3

    :catch_8
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto :goto_3
.end method


# virtual methods
.method public getNaviBarHidePolicy(Ljava/lang/String;I)I
    .locals 6

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mNavibarDefaultHidePackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v5, 0x80

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.samsung.android.non_immersive"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    return v3

    :catch_0
    move-exception v1

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public init(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mNavibarDefaultHidePackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v3, Lcom/android/server/wm/NaviBarHidePolicyController;->NAVIBAR_DEFAULT_HIDE_PACKAGES:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mNavibarDefaultHidePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;

    const-string/jumbo v3, "NaviBarHidePolicyWriterThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;-><init>(Lcom/android/server/wm/NaviBarHidePolicyController;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "NaviBarHidePolicyController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Create directory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->readNaviBarHidePolicyPackageMaps()V

    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;

    invoke-virtual {v2}, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;

    invoke-virtual {v2}, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;->start()V

    :cond_2
    return-void
.end method

.method public isNaviBarHidePolicy(Landroid/content/pm/ActivityInfo;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController;->mNavibarDefaultHidePackages:Ljava/util/HashSet;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.samsung.android.non_immersive"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.samsung.android.non_immersive"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public setNaviBarHidetPolicy(Ljava/lang/String;IZ)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->checkCallerIsSystemOrPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyController;->disableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyController;->schedulePackageSave()V

    if-eqz v0, :cond_0

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyController;->killApplication(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyController;->enableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
