.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final COVERT_KEY:Ljava/lang/String; = "covert_on"

.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final SECURE_WIFI_INITIALIZING:I = 0x2

.field private static final SECURE_WIFI_OFF:I = 0x0

.field private static final SECURE_WIFI_ON:I = 0x1

.field private static final SECURE_WIFI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.sprotect"

.field private static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1

.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mConvertView:Landroid/view/View;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mSecureSwitch:Landroid/widget/Switch;

.field private mSecureWifiContent:Landroid/widget/TextView;

.field private mSecureWifiGroup:Landroid/widget/LinearLayout;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field private final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

.field private mWifiPickerController:Lcom/samsung/android/settingslib/wifi/WifiPickerController;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureWifiContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureWifiGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiTile;)[Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/WifiTile;[Lcom/android/settingslib/wifi/AccessPoint;)[Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/WifiTile;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mConvertView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isAfwDOProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEASPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isSecureWifiInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->initializeSecureWifiStub()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->showItPolicyToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4

    const v3, 0x7f08055c

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "covert_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "covert_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f08054c

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f08054b

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiPickerController:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SECURE_WIFI:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isAfwDOProfile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private initializeSecureWifiStub()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mConvertView:Landroid/view/View;

    const v2, 0x7f0a047f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureWifiGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureWifiGroup:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0481

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureWifiContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureWifiGroup:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0480

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSecureSwitch:Landroid/widget/Switch;

    return-void
.end method

.method private isAfwDOProfile()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isBlockedByEASPolicy()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecureWifiInstalled()Z
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.samsung.android.app.sprotect"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    return v3
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiTileBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->showItPolicyToast()V

    return-object v1

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x7e

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120940

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    const/4 v4, 0x0

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isWifiTileBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEASPolicy()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->showItPolicyToast()V

    return-void

    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v1, :cond_2

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/qs/tiles/-$Lambda$r-6bmCNWznTjuhckKDxI4J7JSvw$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$r-6bmCNWznTjuhckKDxI4J7JSvw$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleClick pass enabling or disabling "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->handleRefreshState(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiPickerController:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiPickerController:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->startTracking()V

    :goto_0
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiPickerController:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->stopTracking()V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wi-Fi picker is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.WIFI_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v4, 0x7f120bde

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 12

    sget-boolean v9, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleUpdateState state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  arg ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v9, p2, Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const v9, 0x7f08054a

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleUpdateState state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  arg ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v9, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v9, :cond_2

    const-class v9, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const v9, 0x7f08054a

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120940

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    return-void

    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    if-nez v0, :cond_3

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v9, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    :cond_3
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v9, :cond_7

    iget-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v9, :cond_7

    const/4 v7, 0x1

    :goto_0
    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v9, :cond_8

    iget-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v9, :cond_8

    const/4 v8, 0x1

    :goto_1
    iget v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-nez v9, :cond_9

    const/4 v3, 0x1

    :goto_2
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-ne v9, v10, :cond_4

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    if-eq v3, v9, :cond_a

    :cond_4
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_6

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v9, :cond_d

    const/4 v9, 0x2

    :goto_4
    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-nez v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    :cond_5
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "handleUpdateState enabledChanging"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dualTarget:Z

    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v7, :cond_f

    iget v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v9, :cond_e

    const v9, 0x7f120940

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_5
    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    :goto_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v9, :cond_11

    const v9, 0x7f120063

    :goto_7
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_12

    const v9, 0x7f120940

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    return-void

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_a
    iget-boolean v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v9, :cond_c

    iget v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_c
    iget v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    goto :goto_9

    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_e
    iget-object v9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_f
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_a
    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v9, 0x7f120940

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_10
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_a

    :cond_11
    const v9, 0x7f120062

    goto :goto_7

    :cond_12
    iget-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiTile_10211()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->handleClick()V

    return-void
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected makeStringToCurrentState(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-nez v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeStringToCurrentState failed value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " enabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeStringToCurrentState set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->handleRefreshState(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    :cond_2
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->scanForAccessPoints()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
