.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneFallbackEventHandler$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static TAG:Ljava/lang/String; = null

.field private static final USERKEY_TIMEOUT:I = 0xaa


# instance fields
.field private final DOUBLE_PRESS_LAUNCH:I

.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field private final SocialActivity:Ljava/lang/String;

.field private final SocialPackage:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mDouble_launch_app:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mIsSupportBCM:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserDoubleTapPending:Z

.field private final mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/PhoneFallbackEventHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/PhoneFallbackEventHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleDoubleTapUserKey()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->NO_LAUNCH:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DOUBLE_PRESS_LAUNCH:I

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    iput-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBatteryConversingModeSupported()Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mIsSupportBCM:Z

    const-string/jumbo v0, "com.sec.android.app.socialpage"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialPackage:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.android.app.socialpage.SocialSetActivity"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialActivity:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;-><init>(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-void
.end method

.method private checkLaunchSetting()I
    .locals 4

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private getActivityCount(Landroid/content/Intent;)I
    .locals 3

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private handleDoubleTapUserKey()V
    .locals 3

    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout userkey mLaunchType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "There are no apps defined by the user key"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMediaKeyEvent context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private isStubPTTApp()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.bell.ptt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isSupportActiveDouble()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "double_press_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchAppActivity(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mIsSupportBCM:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->checkLaunchSetting()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "dismissIfInsecure"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "The pendingIntent sent to keyguard"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "it is blocked to launch app by setting value"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->requestWaitingForOccluding()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private launchCameraApp()V
    .locals 7

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.app.camera"

    const-string/jumbo v6, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "isSecure"

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x24000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->requestWaitingForOccluding()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_1
    return-void

    :cond_2
    const/high16 v5, 0x200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "No activity to launch Camera."

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private launchPTTApp(Landroid/view/KeyEvent;)Z
    .locals 14

    const-string/jumbo v2, "BMC"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.bell.ptt"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isStubPTTApp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    const/16 v7, 0xe4

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Broadcast sent PTT BUTTON"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private launchUserDefinedApp(I)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Not lauching User defined app because user setup is in progress."

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBatteryConversingModeSupported()Z

    move-result v8

    :goto_0
    iput-boolean v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mIsSupportBCM:Z

    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mIsSupportBCM:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v3

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "now emMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userkey launch mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_1
    const-string/jumbo v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "userkey set is off"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v12

    :cond_4
    move v8, v9

    goto :goto_0

    :pswitch_0
    return v12

    :pswitch_1
    if-ne v3, v13, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "short_press_app_battery_conserve"

    invoke-static {v8, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "short_press_app"

    invoke-static {v8, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_2
    if-ne v3, v13, :cond_6

    return v12

    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "long_press_app"

    invoke-static {v8, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mDouble_launch_app:Ljava/lang/String;

    goto :goto_1

    :cond_7
    :try_start_0
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "launch for userkey launch_app = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v5, :cond_b

    const/16 v8, 0x2f

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-eqz v7, :cond_9

    const-string/jumbo v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_9
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_a

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "None pkg name"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v9

    :cond_b
    :try_start_1
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "set package info for launching PTT app(Korea National Emergency Network)"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "com.sec.ptt"

    const-string/jumbo v0, "com.sec.ptt.call.activities.callMainActivity"
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "There is no launch app!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v7, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :cond_d
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10200000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-direct {p0, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchAppActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    :goto_3
    return v12

    :catch_1
    move-exception v1

    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_e

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Activity to be assigned by the key is not found."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v10

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "context is null(KD)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    :sswitch_2
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_5

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_5
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    return v0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not starting call activity because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Camera key start Tracking"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.CAMERA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_c
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not dispatching CAMERA long press because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v0, v9, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    iget v0, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v0, 0x1

    return v0

    :cond_f
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    if-eqz v10, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchPTTApp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    :cond_11
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    iget v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v0

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "There are no apps defined by the user key"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.app.popupuireceiver"

    const-string/jumbo v2, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_13
    :goto_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_3

    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_3

    :catch_1
    move-exception v11

    sget-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "popupuireceiver is not found."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_17
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not dispatching Active Key long press because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_18
    :goto_5
    const/4 v0, 0x1

    return v0

    :cond_19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "com.sec.android.app.socialpage"

    const-string/jumbo v2, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_1a
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not dispatching APPSELECT Key long press because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not dispatching KEYCODE_BUTTON_GAME Key press because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1c
    :goto_6
    const/4 v0, 0x1

    return v0

    :cond_1d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no action about game button longpressed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_a
    const/4 v0, 0x1

    return v0

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_1

    const-string/jumbo v0, "android.intent.action.MAIN"

    const-string/jumbo v2, "android.intent.category.APP_EMAIL"

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_7
    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v11

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No activity to launch email"

    invoke-static {v0, v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.mms"

    const-string/jumbo v2, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getActivityCount(Landroid/content/Intent;)I

    move-result v0

    if-lez v0, :cond_1f

    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1e
    :goto_8
    const/4 v0, 0x1

    return v0

    :catch_3
    move-exception v11

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No activity to launch mms ConversationComposer."

    invoke-static {v0, v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_1f
    const-string/jumbo v0, "com.samsung.android.messaging"

    const-string/jumbo v2, "com.samsung.android.messaging.ui.ConversationComposer"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getActivityCount(Landroid/content/Intent;)I

    move-result v0

    if-lez v0, :cond_1e

    :try_start_5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v11

    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No activity to launch new mms ConversationComposer."

    invoke-static {v0, v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.HOME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string/jumbo v2, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_9
    const/4 v0, 0x1

    return v0

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v12, :cond_20

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_20
    const/4 v0, 0x1

    return v0

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.google.android.googlequicksearchbox"

    const-string/jumbo v2, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getActivityCount(Landroid/content/Intent;)I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    :cond_21
    const/4 v0, 0x1

    return v0

    :sswitch_10
    const/4 v0, 0x1

    return v0

    :catch_5
    move-exception v11

    goto :goto_9

    :catch_6
    move-exception v11

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_5
        0x4f -> :sswitch_2
        0x54 -> :sswitch_6
        0x55 -> :sswitch_1
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_3
        0xa4 -> :sswitch_0
        0xde -> :sswitch_3
        0x3ea -> :sswitch_d
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_f
        0x3f0 -> :sswitch_b
        0x3f1 -> :sswitch_10
        0x3f2 -> :sswitch_a
        0x3f5 -> :sswitch_c
        0x3f7 -> :sswitch_7
        0x41a -> :sswitch_9
        0x431 -> :sswitch_8
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x1

    sget-boolean v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_0
    return v10

    :sswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "context is null(KU)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v7

    const/high16 v8, -0x80000000

    invoke-virtual {v7, p2, v8, v10}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    :cond_5
    return v12

    :sswitch_1
    const/16 v7, 0x4f

    if-ne p1, v7, :cond_6

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_6
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v12

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "launch camera"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCameraApp()V

    :cond_8
    :goto_1
    return v12

    :cond_9
    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Not starting Camera activity because user setup is in progress."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    :cond_a
    :goto_2
    return v12

    :cond_b
    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Not starting call activity because user setup is in progress."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchPTTApp(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_c

    return v12

    :cond_c
    sget-boolean v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userkey LaunchType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isSupportActiveDouble()Z

    move-result v7

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v7, v12, :cond_e

    iput-boolean v12, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapPending:Z

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mUserDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xaa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "user doubletap timeout runnable posted!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_e
    iget v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v7, v12, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_10

    iget v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v7}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v7

    if-nez v7, :cond_f

    sget-boolean v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v7, :cond_f

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "There are no apps defined by the user key"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iput v10, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    :cond_10
    return v12

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "short_press_app"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    sget-boolean v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v7, :cond_11

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app select short pressed!! app = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v3, :cond_13

    const/16 v7, 0x2f

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_4
    return v12

    :catch_0
    move-exception v2

    const/4 v6, 0x0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    sget-boolean v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v7, :cond_14

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "There is no app that is selected so setting app will be launched"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string/jumbo v6, "com.sec.android.app.socialpage"

    const-string/jumbo v0, "com.sec.android.app.socialpage.SocialSetActivity"

    goto :goto_3

    :cond_15
    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Not dispatching APPSELECT Key short press because user setup is in progress."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_16

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.input.BUTTON_GAME"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "deviceName"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v7, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Send BR for game button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v12

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
        0x3f7 -> :sswitch_5
        0x41a -> :sswitch_7
        0x431 -> :sswitch_6
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    return-void
.end method

.method startCallActivity()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "com.sec.android.app.socialpage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.sec.android.app.socialpage"

    const-string/jumbo v3, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
