.class public Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;
.super Ljava/lang/Object;
.source "NetSpeedWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;,
        Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.dnbanet"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field public static final DNBANET_CATEGORY:Ljava/lang/String; = "whitelist"

.field private static final DNBANET_ITEM:Ljava/lang/String; = "unlimit_pkg"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "dnbanet"

.field private static final TAG:Ljava/lang/String; = "NetSpeedWhiteList"

.field public static final whiteList:[Ljava/lang/String;


# instance fields
.field public final SCPM_URI_DNBANET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleteReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNwLock:Ljava/lang/Object;

.field private mSCPMReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;

.field public mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWhitelistUnlimitNetwork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.settings"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.launcher"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.app.notes"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.calendar"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.packageinstaller"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->whiteList:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhiteList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistUnlimitNetwork:Ljava/util/ArrayList;

    const-string/jumbo v4, "content://com.samsung.android.sm.policy/policy_item/dnbanet"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const-string/jumbo v4, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_POLICY:Landroid/net/Uri;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)V

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mSCPMReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$SCPMReceiver;

    new-instance v4, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;)V

    iput-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mBootCompleteReceiver:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList$BootCompleteReceiver;

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v5, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->whiteList:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v8, 0xa200

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhiteList:Ljava/util/List;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getSCPMPolicyItemFromDB()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "item"

    aput-object v0, v2, v12

    const-string/jumbo v0, "category"

    aput-object v0, v2, v13

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v14

    const/4 v11, 0x0

    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "getSCPMPolicyItemFromDB!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "unlimit_pkg"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v11, v8

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    sget-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetSpeedWhiteList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ,scpm pkg: data1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v9

    const-string/jumbo v0, "NetSpeedWhiteList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception with contentResolver : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private hasValidItemFromDB()Z
    .locals 13

    const/4 v7, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "item"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "category"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "data1"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const/4 v12, 0x0

    const/4 v10, 0x0

    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "hasValidItemFromDB!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_DNBANET:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_2

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "unlimit_pkg"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_1
    return v10

    :catch_0
    move-exception v9

    const-string/jumbo v0, "NetSpeedWhiteList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception with contentResolver : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "hasValidItemFromDB error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;I)Z
    .locals 5

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1, p2}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .locals 11

    const/4 v6, 0x0

    const/4 v8, 0x0

    sget-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "isNeedUpdateSCPMPolicy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_3

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "policyName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "policyVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "dnbanet"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetSpeedWhiteList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , policyVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return v8

    :catch_0
    move-exception v7

    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "policy list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSCPMAvailable()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetSpeedWhiteList"

    const-string/jumbo v2, "isSCPMAvailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSCPMWhitelsit(Ljava/lang/String;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isShowIconPackage(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v2, "mWhitelistIgnoreNetworkLimit:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mNwLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public isWhitelistNONetworkBandwidth(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isWhitelistNONetworkBandwidth(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->whiteList:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isSCPMWhitelsit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, " isSCPMWhitelsit "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isMusicOrRecordActive(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, " isMusicOrRecordActive "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateSCPMParametersFromDB()V
    .locals 2

    sget-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "updateSCPMParametersFromDB"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->getSCPMPolicyItemFromDB()V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "NetSpeedWhiteList"

    const-string/jumbo v1, "scpm doesn\'t find the Policy name for dnbanet"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
