.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QSTileHost$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTile$Host$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private mComponentNameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mHeader:Landroid/view/View;

.field private mHiddenTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKnoxBlockedQsTileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

.field private final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTileNameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/keyguard/KnoxStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->makeCustomTileComponentNameTable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QSTileHost$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost$1;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v3, Lcom/android/systemui/statusbar/policy/NightModeController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NightModeController;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    new-instance v1, Landroid/os/HandlerThread;

    const-class v3, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    new-instance v3, Lcom/android/systemui/qs/external/TileServices;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sysui_qs_emergency_tiles"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :goto_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    new-instance v2, Lcom/android/systemui/qs/SVoiceCommandReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/qs/SVoiceCommandReceiver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    new-instance v3, Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/QSScreenGridDialog;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sysui_qs_tiles"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private convertDefaultCustomComponetToTileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, ""

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->makeCustomTileNameTable()V

    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    move-object v2, v1

    const-string/jumbo v7, "custom("

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "com.samsung.android.sm/.ui.booster.PerformanceTile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Performance"

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileNameTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHN_SMART_MANAGER:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Performance"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p1, "PerformanceCHN"

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "custom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v2
.end method

.method private getKnoxTileNameFromTileSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "DND"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "DormantMode"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "AUTOROTATE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "RotationLock"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "TORCHLIGHT"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "Flashlight"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "SOUNDMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "SilentMode"

    goto :goto_0
.end method

.method private getRecalculatedTileListForFota(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const-string/jumbo v7, "QSTileHost"

    const-string/jumbo v8, "getRecalculatedTileListForFota "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, ""

    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v2, v8, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oldLists : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v2, v7, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const-string/jumbo v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newLists : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v7, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " add : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isNonDefaultCustomTile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    return-object v5
.end method

.method private isAvailableCustomTile(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "Performance"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : PerformanceTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string/jumbo v5, "Aod"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_ALWAYS_ON_DISPLAY:Z

    if-nez v5, :cond_e

    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : AodTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string/jumbo v5, "PersonalMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    :goto_0
    if-nez v5, :cond_e

    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : PersonalModeTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "AllShareCast"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result v1

    if-eq v1, v3, :cond_e

    if-eqz v1, :cond_e

    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : AllShareCastTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const-string/jumbo v5, "Nfc"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.hardware.nfc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_5
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : NfcTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    const-string/jumbo v5, "DeviceVisibility"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isQuickConnectSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-eqz v5, :cond_e

    :cond_7
    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : DeviceVisibilityTile is removed "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8
    const-string/jumbo v5, "SecureFolder"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_9

    :goto_1
    return v3

    :cond_9
    move v3, v4

    goto :goto_1

    :cond_a
    return v4

    :cond_b
    const-string/jumbo v5, "com.android.settings/com.samsung.android.settings.qstile.BluelightFilterTiles"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : BluelightFilterTiles is removed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_c
    const-string/jumbo v5, "com.samsung.android.sm/.ui.booster.PerformanceTile"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : old PerformanceTile is removed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_d
    const-string/jumbo v5, "com.android.settings/.accounts.SecAccountTiles"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v3, "QSTileHost"

    const-string/jumbo v5, "isAvailableCustomTile : old SyncTile is removed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_e
    return v3
.end method

.method private makeCustomTileComponentNameTable()V
    .locals 13

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f022a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    const-string/jumbo v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mComponentNameTable:Ljava/util/Map;

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "make table : customTileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", componentName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeCustomTileNameTable()V
    .locals 12

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f022a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileNameTable:Ljava/util/Map;

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    const-string/jumbo v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileNameTable:Ljava/util/Map;

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public animateToggleQSExpansion()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateToggleQSExpansion()V

    return-void
.end method

.method public changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "WIFIHOTSPOT"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "Hotspot"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "AUTOROTATE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "RotationLock"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "SFINDER"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "SFinder"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "TORCHLIGHT"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "Flashlight"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "SILENTMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "SOUNDMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string/jumbo p1, "SoundMode"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "DND"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "DORMANTMODE"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo p1, "Dnd"

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "WIFICALLING"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SPRWFC:Z

    if-eqz v0, :cond_9

    const-string/jumbo p1, "WifiCallingSpr"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "RJILWIFICALLING"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_RJILWFC:Z

    if-eqz v0, :cond_0

    const-string/jumbo p1, "WifiCalling"

    goto/16 :goto_0
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v1, "custom("

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v11}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v4, Landroid/service/quicksettings/Tile;

    invoke-direct {v4}, Landroid/service/quicksettings/Tile;-><init>()V

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    goto :goto_1

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "QSTileHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentTiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    const-string/jumbo v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public collapsePanels()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    const-string/jumbo v2, "intent("

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, "custom("

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v2

    return-object v2

    :cond_1
    const-string/jumbo v2, "work"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v2

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.android.systemui.qs.tiles."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createTile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/android/systemui/qs/QSTile$Host;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public dismissGridPopup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "QsTileHost state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mHiddenTileSpecs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mKnoxBlockedQsTileList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getHiddenTileSpec()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHiddenTileSpecs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getManagedProfileController()Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getNextAlarmController()Lcom/android/systemui/statusbar/policy/NextAlarmController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    return-object v0
.end method

.method public getNightModeController()Lcom/android/systemui/statusbar/policy/NightModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    return-object v0
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public isDefaultCustomTile(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public isNonDefaultCustomTile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isRemovedTileList(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "sysui_removed_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method protected isSystemTile(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.android.systemui.qs.tiles."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method protected loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0f0228

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isFotaUpdate(Landroid/content/Context;)Z

    move-result v2

    if-eqz p2, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, p2, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecsFromCscFeature(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    return-object v6

    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loaded tile specs from setting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-string/jumbo v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_6

    aget-object v4, v8, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "default"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v0, :cond_3

    const-string/jumbo v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v5
.end method

.method protected loadTileSpecsFromCscFeature(Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f0228

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loaded tile specs from csc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v10

    :cond_1
    move-object v3, v0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->convertDefaultCustomComponetToTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getRecalculatedTileListForFota(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadTileSpecsFromCscFeature : loadedTileList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->makeCustomTileComponentNameTable()V

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_8

    aget-object v5, v8, v7

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isRemovedTileList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isRemovedTileList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isNonDefaultCustomTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sysui_qs_tiles"

    const-string/jumbo v9, ","

    invoke-static {v9, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v6
.end method

.method protected loadTileSpecsUPSM(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0229

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0f0228

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "ultra_powersaving_mode"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v8, v7

    if-nez v2, :cond_2

    const-string/jumbo v10, "PowerSavingTile"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method public onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v0

    return v0
.end method

.method public onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSTileClickOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClickQSTileOnKeyguard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " detail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "QSTileHost"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_emergency_tiles"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_tiles"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const-string/jumbo v10, "sysui_qs_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "sysui_qs_emergency_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "QSTileHost"

    const-string/jumbo v11, "Recreating tiles"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v10, "sysui_qs_emergency_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecsUPSM(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    if-ne v0, v10, :cond_4

    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10, p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string/jumbo v11, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Destroying tile: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSTile;

    if-eqz v4, :cond_b

    instance-of v10, v4, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v10, :cond_9

    move-object v10, v4

    check-cast v10, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v10

    if-ne v10, v0, :cond_b

    :cond_9
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Adding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->removeCallbacks()V

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_b
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_c

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Creating tile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating tile for spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_d
    iput v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_e

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method public openPanels()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateOpenPanels()V

    return-void
.end method

.method public refreshTileList()V
    .locals 14

    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "QSTileHost"

    const-string/jumbo v12, "refreshTileList"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecsUPSM(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string/jumbo v12, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Destroying tile: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSTile;

    if-eqz v5, :cond_8

    instance-of v11, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v11, :cond_6

    move-object v11, v5

    check-cast v11, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v11}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v11

    if-ne v11, v0, :cond_8

    :cond_6
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string/jumbo v11, "QSTileHost"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Adding "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->removeCallbacks()V

    invoke-virtual {v2, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "QSTileHost"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Creating tile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v2, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v11, "QSTileHost"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error creating tile for spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_a
    iput v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    :goto_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v11}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHeader:Landroid/view/View;

    return-void
.end method

.method public setHiddenTileSpec(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHidedTileSpec : hiddenTileSpecs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHiddenTileSpecs:Ljava/util/ArrayList;

    return-void
.end method

.method public setQsExpansionHeight()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsExpansionHeight()V

    return-void
.end method

.method public shouldBeHiddenByKnox(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKnoxBlockedQsTileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldBeHiddenByKnox : tileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKnoxTileNameFromTileSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public showGridPopup()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSScreenGridDialog;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenGridDialog:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridDialog;->show()V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public startRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRemovedTileList(Ljava/lang/String;Z)V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sysui_removed_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "QSTileHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemovedTileList : tile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", tileIsAdded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sysui_removed_qs_tiles"

    const-string/jumbo v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
