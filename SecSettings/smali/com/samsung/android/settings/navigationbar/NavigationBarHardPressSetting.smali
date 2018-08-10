.class public Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NavigationBarHardPressSetting.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$2;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$3;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$4;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$5;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;
    }
.end annotation


# instance fields
.field private mCalibrationClickListener:Landroid/view/View$OnClickListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mOneHandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

.field private mOriginVisibility:I

.field private mPressureDescriptionPref:Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;

.field private mPressureObserver:Landroid/database/ContentObserver;

.field private mPressureSeekBarHeight:I

.field private mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

.field private mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

.field private mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

.field private mScreenMirroringReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToast:Landroid/widget/Toast;

.field private onBindCompleteListener:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference$onBindCompleteListener;

.field private viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showErrorToastIfNeed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->performClickTestButton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showErrorToastIfNeed(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showNavigationBar(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mOriginVisibility:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarHeight:I

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->onBindCompleteListener:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference$onBindCompleteListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mCalibrationClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mOneHandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$5;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mScreenMirroringReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private performClickTestButton()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-nez v4, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showNavigationBar(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/ButtonPreference;->setButtonStyle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121226

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {v4}, Lcom/android/settings/widget/ButtonPreference;->getContainerView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070622

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getRealScreenHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v0, v4, v1

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setContainerTopPadding(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "NBPT"

    const-string/jumbo v7, "Pressure Test"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/ButtonPreference;->setButtonStyle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121236

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v8, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showNavigationBar(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "NBPT"

    const-string/jumbo v7, "Exit Test"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "NavigationBarHardPressSetting"

    const-string/jumbo v2, "registerObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_force_touch_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "any_screen_running"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mOneHandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mScreenMirroringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NavigationBarHardPressSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private showErrorToastIfNeed(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, -0x1

    if-nez p1, :cond_0

    const-string/jumbo v5, "NavigationBarHardPressSetting"

    const-string/jumbo v6, "showErrorToastIfNeed : intent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string/jumbo v5, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "NavigationBarHardPressSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showErrorToastIfNeed() wifiDisplayStatus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eq v4, v8, :cond_2

    if-ne v1, v8, :cond_7

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f121238

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showToast(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->performClickTestButton()V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v5, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "status"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "NavigationBarHardPressSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showErrorToastIfNeed() dlnaStatus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "status"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "NavigationBarHardPressSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showErrorToastIfNeed() googleCastStatus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v5, "NavigationBarHardPressSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showErrorToastIfNeed() isHdmiConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-eq v2, v8, :cond_2

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12123b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private showErrorToastIfNeed()Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDeviceRelatedWithSmartViewConnected(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isHdmiConnected(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "any_screen_running"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f121239

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "NavigationBarHardPressSetting"

    const-string/jumbo v6, "showErrorToastIfNeed - performClickTestButton "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->performClickTestButton()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showToast(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "NavigationBarHardPressSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showErrorToastIfNeed - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_8

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    :goto_2
    return v1

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12123a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12123b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f121238

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private showNavigationBar(Z)V
    .locals 6

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mOriginVisibility:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mOriginVisibility:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->requestSystemKeyEvent(IZ)Z

    :goto_0
    const-string/jumbo v3, "NavigationBarHardPressSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showNavigationBar - show : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " call inputManager.enablePressureSettingMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "input"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager;->enablePressureSettingMode(Z)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mOriginVisibility:I

    or-int/lit8 v3, v2, 0x2

    or-int/lit16 v3, v3, 0x800

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    const/high16 v4, 0x400000

    or-int v2, v3, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->requestSystemKeyEvent(IZ)Z

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    const-string/jumbo v0, "NavigationBarHardPressSetting"

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mOneHandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mScreenMirroringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public SetScreen()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_force_touch_enable"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureDescriptionPref:Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;

    const v3, 0x7f121234

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_pressure_user_level"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/ButtonPreference;->setButtonStyle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121236

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureDescriptionPref:Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;

    const v3, 0x7f121232

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showNavigationBar(Z)V

    goto :goto_1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d3d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "need_show_pressure_ui"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showErrorToastIfNeed()Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150099

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "navigationbar_pressure_seekbar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureSeekBarPref:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->setMax(I)V

    const-string/jumbo v0, "navigationbar_pressure_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureDescriptionPref:Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureDescriptionPref:Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->setMaxTitleFontSizeIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureDescriptionPref:Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0364

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->setTextSize(I)V

    const-string/jumbo v0, "navigationbar_pressure_guage"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    const-string/jumbo v0, "navigationbar_pressure_test"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mCalibrationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/widget/ButtonPreference;->setContainerTopBottomPadding(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestButton:Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ButtonPreference;->setButtonStyle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$8;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$7;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "NavigationBarHardPressSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause - mPressureTestUi "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-nez v0, :cond_1

    const-string/jumbo v0, "visible"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "HardPressSensitivity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showNavigationBar(Z)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "invisible"

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v2, "NavigationBarHardPressSetting"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_force_touch_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->SetScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showErrorToastIfNeed()Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->showNavigationBar(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "need_show_pressure_ui"

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->mPressureTestUi:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->registerObserver()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->unregisterObserver()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_force_touch_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_force_touch_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
