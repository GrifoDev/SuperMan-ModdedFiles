.class public Lcom/android/server/usb/UsbMirrorLinkManager;
.super Ljava/lang/Object;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMirrorLinkManager$1;,
        Lcom/android/server/usb/UsbMirrorLinkManager$2;,
        Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MIRRORLINK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mirrorlink"

.field private static final MIRRORLINK_START_ACTION:Ljava/lang/String; = "com.samsung.android.mirrorlink.action.ML_UEVENT"

.field private static final NCM_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_ncm"

.field private static final SETTING_EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"

.field private static final SETTING_ULTRA_SAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final STRING_NCM:Ljava/lang/String; = "ncm"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0x5dc

.field private static mStart:J = 0x0L

.field private static final timeUntilBootComplete:I = 0x1388


# instance fields
.field private cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

.field latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsCallToastShown:Z

.field private mIsPinnedToastShown:Z

.field private mIsVoiceToastShown:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final sync:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/usb/UsbMirrorLinkManager;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbMirrorLinkManager;->getStringIdFromMirrorLinkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbMirrorLinkManager;->clearToastStates()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbMirrorLinkManager;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbMirrorLinkManager;->semSetNcm(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->startMirrorLink(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->RELEASE:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    new-instance v1, Lcom/android/server/usb/UsbMirrorLinkManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbMirrorLinkManager$1;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v1, Lcom/android/server/usb/UsbMirrorLinkManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbMirrorLinkManager$2;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->sync:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v2, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/usb/UsbMirrorLinkManager$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager$3;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private clearToastStates()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStringIdFromMirrorLinkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.app.mirrorlink"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.android.app.mirrorlink:string/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.app.mirrorlink"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v4, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resource="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 10

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "insertLog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/usb/UsbMirrorLinkManager;->mStart:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "app_id"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "feature"

    const-string/jumbo v7, "CON1"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v6, Lcom/android/server/usb/UsbMirrorLinkManager;->mStart:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/usb/UsbMirrorLinkManager;->mStart:J

    sub-long v2, v4, v6

    const-string/jumbo v6, "extra"

    const-string/jumbo v7, "Connection_Time"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "value"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.providers.context"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isEmergencyMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "emergency_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "never enabled emergency mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isPinnedMode()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 19

    const/4 v13, 0x0

    const-string/jumbo v14, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    :try_start_0
    const-class v14, Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v15, "semIsAccessibilityServiceEnabled"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const-class v14, Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v15, "SEM_STATE_FLAG_GOOGLE_TALKBACK"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-class v14, Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v15, "SEM_STATE_FLAG_VOICE_ASSISTANT"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v13, 0x1

    :cond_0
    :goto_0
    return v13

    :cond_1
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private isUltraSavingMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUltraSavingMode failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private onBootComplete()V
    .locals 13

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "onBootComplete() called"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v11, ""

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v11, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_2

    int-to-char v11, v0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "FileNotFoundException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-direct {v9, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "checking terminal version"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "major"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "0"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "1"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "systemReady terminal_version : major 0 minor 1"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbMirrorLinkManager;->startMirrorLink(Landroid/content/Context;)V

    :cond_0
    :goto_3
    const/4 v9, 0x0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, 0x0

    :cond_1
    :goto_4
    return-void

    :cond_2
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_5
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "IOException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "systemReady terminal_version : major 1 minor"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/android/server/usb/UsbMirrorLinkManager;->startMirrorLink(Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "systemReady major version is not present"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    goto/16 :goto_1

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_5
.end method

.method private semSetNcm(Landroid/content/Context;Z)V
    .locals 4

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNCMTethering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->semSetNcmTethering(Z)I

    return-void
.end method

.method private startMirrorLink(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NCM mode Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Phone rining or offhook, Not launching MirrorLink"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/usb/UsbMirrorLinkManager;->isPinnedMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Screen is pinned, Not launching MirrorLink"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "MirrorLink can\u2019t be used while Voice Assistant is turned on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "MirrorLink doesn\'t enable ncm due to emergency mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "MirrorLink doesn\'t enable ncm due to Ultra power saving mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startService : major 0 minor 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "usb"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v3, "ncm"

    invoke-virtual {v2, v3, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbMirrorLinkManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.mirrorlink"

    const-string/jumbo v5, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_server_usb_UsbMirrorLinkManager_8894()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbMirrorLinkManager;->onBootComplete()V

    return-void
.end method

.method public systemReady()V
    .locals 4

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "systemReady() called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/usb/-$Lambda$rtVwpk_qgBSdrPutZkGmAjjiK90;

    invoke-direct {v1, p0}, Lcom/android/server/usb/-$Lambda$rtVwpk_qgBSdrPutZkGmAjjiK90;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
