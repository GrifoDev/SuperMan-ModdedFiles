.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$1;,
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    :array_0
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .locals 18

    const/4 v15, 0x1

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v10}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/File;

    const-string/jumbo v2, "/efs/constrained"

    invoke-direct {v12, v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ConstrainedStateTable"

    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v15, 0x1

    const/4 v8, 0x1

    :cond_1
    if-eqz v8, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    if-eqz v9, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    const-string/jumbo v2, "ConstrainedState"

    const-string/jumbo v3, "setScreenCapture enabled due to disableConstrainedState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v2, "ConstrainedState"

    const-string/jumbo v3, "No data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :catch_0
    move-exception v11

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .locals 9

    const/4 v4, 0x0

    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_0
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    iget-object v7, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ConstrainedState"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ConstrainedState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    if-nez p1, :cond_4

    const-string/jumbo p1, ""

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1040

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object p1, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_3
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    iget-object v7, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v4, "ConstrainedState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-object v8

    :cond_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    add-int v1, p3, v0

    array-length v2, p2

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    aget-byte v1, p1, v0

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const v7, 0x10409c3

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_ConstrainedNoti"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_3

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v3, 0x10805a1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v4, 0x1040a0e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string/jumbo v3, "DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, "targetPkgName"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v3, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private split([B[B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, p1

    add-int v0, v1, v3

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private updateConstrainedStateData(Z)V
    .locals 39

    const/16 v28, 0x0

    :try_start_0
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v19, v11

    const-string/jumbo v10, "status"

    const/4 v11, 0x1

    aput-object v10, v19, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "ConstrainedStateTable"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v20

    new-instance v22, Ljava/io/File;

    const-string/jumbo v10, "/efs/constrained"

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    if-eqz v31, :cond_17

    const/4 v10, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v38, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v37, v10

    move-object/from16 v29, v28

    :goto_0
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_16

    :try_start_1
    aget-object v27, v31, v37

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    move-object/from16 v18, v0

    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v34

    if-nez v34, :cond_0

    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    :goto_1
    add-int/lit8 v10, v37, 0x1

    move/from16 v37, v10

    move-object/from16 v29, v28

    goto :goto_0

    :cond_0
    sget-object v10, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v35

    const/16 v36, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    new-instance v36, Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_1
    if-nez v36, :cond_2

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong // type is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    const/16 v28, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "normal"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_3
    const/4 v3, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    if-lez v10, :cond_4

    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v3, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_4
    if-eqz v3, :cond_14

    const/4 v4, 0x0

    const/4 v10, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_13

    new-instance v4, Ljava/lang/String;

    const/4 v10, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v4, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    const/4 v10, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/4 v5, 0x0

    if-eqz v33, :cond_5

    const/4 v10, 0x0

    aget-byte v10, v33, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    const/4 v11, 0x1

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x3

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    or-int v5, v10, v11

    :cond_5
    if-gtz v5, :cond_8

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v24

    :goto_3
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    if-eqz v28, :cond_7

    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_4
    return-void

    :cond_8
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_5
    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_9
    const/4 v10, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    new-instance v6, Ljava/lang/String;

    const/4 v10, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v6, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_a
    const/4 v10, 0x5

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    :cond_b
    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_c
    new-instance v2, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v2}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    if-eqz v20, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_e

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_d
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string/jumbo v10, "adminUid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string/jumbo v10, "status"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v16

    new-instance v32, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.sds.mobile.mdm.client.MDMService"

    const-string/jumbo v11, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    move-object/from16 v0, v32

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x3e8

    move/from16 v0, v17

    if-ne v0, v10, :cond_11

    if-eqz v23, :cond_11

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Constrained mode is off - sds mdm was activated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v26

    :cond_e
    :goto_5
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V

    if-eqz p1, :cond_f

    if-nez v7, :cond_12

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_f
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v28, :cond_10

    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_10
    :goto_8
    throw v10

    :cond_11
    if-eqz v16, :cond_d

    :try_start_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Constrained mode is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v26

    goto :goto_5

    :cond_12
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_13
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "comment is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "package name is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "type is not normal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_16
    move-object/from16 v28, v29

    :cond_17
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_18

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Data is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_9
    if-eqz v28, :cond_7

    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v24

    goto/16 :goto_4

    :cond_18
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v24

    goto/16 :goto_4

    :catch_3
    move-exception v24

    goto :goto_8

    :catchall_1
    move-exception v10

    move-object/from16 v28, v29

    goto/16 :goto_7

    :catch_4
    move-exception v24

    move-object/from16 v28, v29

    goto/16 :goto_3

    :cond_19
    move-object/from16 v28, v29

    goto/16 :goto_1
.end method

.method private updateNotification()V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    :cond_1
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v15, 0x0

    return v15

    :catch_0
    move-exception v8

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    const/4 v15, 0x0

    return v15

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v15, 0x0

    return v15

    :cond_5
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    return v15

    :cond_6
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    return v15
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    :cond_1
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v15, 0x0

    return v15

    :catch_0
    move-exception v8

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    const/4 v15, 0x0

    return v15

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v15, 0x0

    return v15

    :cond_5
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    return v15

    :cond_6
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    return v15
.end method

.method public cleanUpConstrainedState(I)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BIND_DEVICE_ADMIN"

    const-string/jumbo v7, "Only system or itself can remove an EDM admin"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "adminUid"

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "ConstrainedStateTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v5, "ConstrainedState"

    const-string/jumbo v6, "constrained state will go on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 35

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v30

    new-instance v31, Ljava/util/ArrayList;

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-string/jumbo v33, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-gtz p6, :cond_0

    const/16 v30, 0x0

    return v30

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    const-string/jumbo v30, "ConstrainedState"

    const-string/jumbo v31, "already existing values // update"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    move-object/from16 v0, v30

    invoke-direct {v7, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v30

    const v31, 0x7fffffff

    and-int v8, v30, v31

    new-instance v15, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_4

    add-int/lit8 v8, v8, 0x1

    new-instance v14, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v14

    goto :goto_0

    :cond_4
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v20, v0

    shr-int/lit8 v30, p6, 0x18

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput-byte v30, v20, v31

    shr-int/lit8 v30, p6, 0x10

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    aput-byte v30, v20, v31

    shr-int/lit8 v30, p6, 0x8

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x2

    aput-byte v30, v20, v31

    move/from16 v0, p6

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x3

    aput-byte v30, v20, v31

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p4, :cond_7

    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_7

    const-string/jumbo v30, "normalv3"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_1
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_2
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_5

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_c

    if-eqz p5, :cond_c

    new-instance v25, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v26

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    :cond_5
    :goto_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v12, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v31, v0

    const-string/jumbo v32, "ConstrainedStateTable"

    const-string/jumbo v33, "status"

    const/16 v34, 0x1

    invoke-virtual/range {v30 .. v34}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_f

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_6
    const/16 v30, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v30

    :cond_7
    if-eqz p3, :cond_9

    :try_start_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_9

    const-string/jumbo v30, "normalv2"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    move-object v14, v15

    move-object v12, v13

    :goto_4
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v12, :cond_8

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    :goto_5
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6
    const/16 v30, 0x0

    return v30

    :cond_9
    :try_start_8
    const-string/jumbo v30, "normal"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v30

    move-object v14, v15

    move-object v12, v13

    :goto_7
    if-eqz v12, :cond_a

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_a
    :goto_8
    :try_start_a
    throw v30
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_1
    move-exception v6

    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :cond_b
    :try_start_c
    const-string/jumbo v30, "DEFAULT"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_2

    :cond_c
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v11

    const/16 v30, 0x40

    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v17

    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    :goto_9
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    aget-object v23, v24, v30

    if-eqz v23, :cond_e

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v16

    :cond_d
    if-eqz v16, :cond_5

    new-instance v22, Landroid/content/pm/Signature;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v19

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    :cond_f
    const/16 v30, 0x1

    :try_start_d
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/16 v30, 0x1

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v30

    :catch_2
    move-exception v6

    :try_start_e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v30

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v30

    :catch_3
    move-exception v6

    :try_start_f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_8

    :catchall_2
    move-exception v30

    goto/16 :goto_7

    :catchall_3
    move-exception v30

    move-object v14, v15

    goto/16 :goto_7

    :catch_4
    move-exception v6

    goto/16 :goto_4

    :catch_5
    move-exception v6

    move-object v14, v15

    goto/16 :goto_4
.end method

.method public getConstrainedState()I
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x2

    :cond_1
    return v3
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v3

    and-int v4, v3, p1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_1
    return v5
.end method
