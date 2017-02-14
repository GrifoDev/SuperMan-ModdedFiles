.class public Lcom/samsung/android/settings/networklock/NetworkLockUtils;
.super Ljava/lang/Object;
.source "NetworkLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    }
.end annotation


# static fields
.field private static isSimLocked:Z


# instance fields
.field private final CMD:[B

.field private final EVENT_PERSO_GET_LOCK_STATUS_DONE:I

.field private mContext:Landroid/content/Context;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

.field private mRilHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/sec_platform_library/FactoryPhone;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    return p0
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Lcom/samsung/android/sec_platform_library/FactoryPhone;)Lcom/samsung/android/sec_platform_library/FactoryPhone;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->EVENT_PERSO_GET_LOCK_STATUS_DONE:I

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mRilHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 1
        0x4t
        0x2t
        0x0t
        0x4t
    .end array-data
.end method

.method public static isVzwNetworkUnLocked(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vzw_network_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVzwNetworkUnLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVzwNetworkUnLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vzw_network_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "setVzwNetworkUnLocked to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkLockStatus()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mRilHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus()V

    return-void
.end method
