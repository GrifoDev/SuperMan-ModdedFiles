.class public Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

.field private mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

.field private mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRinging:Z

.field private mScreenOnTimeStamp:J

.field private mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnOverLightingPackage:Ljava/lang/String;

.field private mUserId:I

.field private mUserSetupCompleted:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    iput-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->registerReceiver()V

    return-void
.end method

.method private hideEdgeLightingInternal(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideEdgeLightingInternal : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void
.end method

.method private hideForWakeLockInternal(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x4

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : user setup is not yet completed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_6

    :cond_5
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_a

    :cond_9
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_d

    :cond_c
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void
.end method

.method private isCallingUserSupported(I)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallingUserSupported : callingUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isDualAppId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    if-nez v2, :cond_3

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    if-eq v1, p1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isEdgeLightingServiceUnbinded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->existsHosts()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserSetupCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->verifyUserSetupCompleted()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    const-string/jumbo v2, "color"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    new-instance v1, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    const/16 v3, 0x7d1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setUserId(I)V

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setRepeatCount(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_1
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showEdgeLightingInternal : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v2, p1, v1, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZII)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOff : return false by notication disabling edge lighting."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOff : return false by checking disable policy."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZI)Landroid/os/Bundle;

    move-result-object v2

    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_b

    const/4 v8, 0x1

    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v1, v5, v8, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_a

    :cond_9
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v3

    :cond_b
    const/4 v8, 0x0

    goto :goto_0

    :cond_c
    const/4 v0, 0x4

    if-ne v7, v0, :cond_d

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_e

    const/4 v4, 0x7

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_f

    :goto_3
    return v5

    :cond_d
    const/4 v9, 0x0

    goto :goto_1

    :cond_e
    move v4, v5

    goto :goto_2

    :cond_f
    move v5, v3

    goto :goto_3
.end method

.method private showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZII)Z
    .locals 12

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v10

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by notication disabling edge lighting."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v1, 0x0

    return v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v4, 0x100

    move/from16 v0, p4

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEnabledHeadsUp()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by checking disable policy."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_9
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move/from16 v0, p5

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZI)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : texts are empty."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_a
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v4, 0x1

    move/from16 v0, p4

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_c

    :cond_b
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v1, 0x0

    return v1

    :cond_d
    if-nez p2, :cond_e

    move p2, v9

    :cond_e
    if-eqz p2, :cond_10

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_f

    const/4 v1, 0x4

    if-ne v10, v1, :cond_11

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_12

    const/4 v5, 0x7

    :goto_2
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    :cond_f
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_13

    :goto_3
    return v7

    :cond_10
    const/4 v7, 0x0

    goto :goto_0

    :cond_11
    const/4 v11, 0x0

    goto :goto_1

    :cond_12
    const/4 v5, 0x1

    goto :goto_2

    :cond_13
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForTurnOverNotification : return false by checking disable policy."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_6

    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, p2, v3, v3, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showForTurnOverNotification : return false by isAcceptableApplication.1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v3, 0x400

    invoke-virtual {v2, p2, v3, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    :cond_7
    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showForTurnOverNotification : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v3, 0x7

    invoke-virtual {v2, p2, v3, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V

    :cond_8
    return-void
.end method

.method private showForWakeLockInternal(Ljava/lang/String;II)Z
    .locals 7

    const/4 v5, 0x4

    const/4 v3, 0x0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeLockInternal : user setup is not yet completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3

    :cond_7
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_a

    :cond_9
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeLockInternal : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v3

    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_d

    :cond_c
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v3

    :cond_e
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v0, 0x1

    return v0
.end method

.method private showForWakeUpInternal(Ljava/lang/String;II)Z
    .locals 7

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeUpInternal : user setup is not yet completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3

    :cond_7
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_a

    :cond_9
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeUpInternal : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v3

    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_c
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v0, 0x1

    return v0
.end method

.method private verifyUserSetupCompleted()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return-void
.end method


# virtual methods
.method public bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancelNotification : pkg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancelNotification pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v4, "cancelNotification"

    invoke-static {v1, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_2

    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "cancelNotification : mIStatusBarService is null."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "disableEdgeLighting"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->disableEdgeLighting(ILjava/lang/String;Z)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "[EdgeLightingManager]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getEdgeLightingState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingState()I

    move-result v0

    return v0
.end method

.method public hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v6

    :cond_2
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hideForNotification : user setup is not yet completed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideForNotification : packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hideForNotification : isOngoing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hideForNotification : isInteractive is true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v7, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return v6

    :cond_7
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v1, v7, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_9

    :cond_8
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotification : return false by isAcceptableApplication."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v6

    :cond_a
    invoke-direct {p0, v1, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideEdgeLightingInternal(Ljava/lang/String;I)V

    return v6
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideForWakeLock packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideForWakeLockByWindow : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_1
    return v4

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public onBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onBootCompleted()V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onSwitchUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onUnlockUser(I)V

    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setSuppressed(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->setSuppressed(I)V

    return-void
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 13

    const-string/jumbo v0, "isHeadUp"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v0, "isUpdate"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v0, "isInterrupt"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v0, "visibility"

    const/16 v1, -0x3e8

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotification : user setup is not yet completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v6, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_6

    :cond_4
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showForNotification : isInteractive="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ", isHeadUp="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ", color="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ", sbn = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isConnectedMode()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v8, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x0

    const/4 v12, 0x1

    aput v1, v0, v12

    const/16 v1, 0x7d1

    invoke-direct {v8, v1, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v2, v3, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZI)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v8, v7}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_5
    invoke-direct {p0, v9, v11, v8, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showForNotification : isInteractive="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ", isHeadUp="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ", color="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ", packageName = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    if-eqz v9, :cond_9

    if-eqz v10, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZII)Z

    move-result v0

    return v0

    :cond_9
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZII)Z

    move-result v0

    return v0
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->setResumedComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    const/16 v5, 0x200

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForToast : user setup is not yet completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForToast : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3

    :cond_5
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForToast : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_8

    :cond_7
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForToast : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v3

    :cond_9
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return v3

    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_d

    :cond_c
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForToast : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v3

    :cond_e
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    :cond_f
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getValidNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v2, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    return v8

    :cond_10
    return v3
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeLock : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForWakeLockByWindow : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", screenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeUp : packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForWakeUpByWindow : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", screenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "startEdgeLighting"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    return-void
.end method

.method public statusBarDisabled(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->statusBarDisabled(II)V

    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "stopEdgeLighting"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLighting(Ljava/lang/String;)V

    return-void
.end method

.method public unbindService(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->unbind(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEdgeLightingPolicy : policy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p2}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->setConnectedMode(Z)V

    return-void
.end method
