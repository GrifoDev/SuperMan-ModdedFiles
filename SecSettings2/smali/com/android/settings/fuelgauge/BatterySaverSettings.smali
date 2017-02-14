.class public Lcom/android/settings/fuelgauge/BatterySaverSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "BatterySaverSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySaverSettings$1;,
        Lcom/android/settings/fuelgauge/BatterySaverSettings$2;,
        Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;,
        Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

.field private final mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

.field private final mStartMode:Ljava/lang/Runnable;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTriggerPref:Lcom/android/settings/notification/SettingPref;

.field private final mUpdateSwitch:Ljava/lang/Runnable;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Lcom/android/settings/notification/SettingPref;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fuelgauge/BatterySaverSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "BatterySaverSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings$2;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    return-void
.end method

.method private trySetPowerSaveMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BatterySaverSettings"

    const-string/jumbo v1, "Setting mode failed, fallback to current value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;->refreshState()V

    return-void
.end method

.method private updateSwitch()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    sget-boolean v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BatterySaverSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSwitch: isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mCreated:Z

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;

    const-string/jumbo v3, "turn_on_automatically"

    const-string/jumbo v4, "low_power_trigger_level"

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c00ac

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings/notification/SettingPref;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSettingsObserver:Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$SettingsObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mReceiver:Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->setListening(Z)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mValidListener:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->updateSwitch()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->mStartMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BatterySaverSettings"

    const-string/jumbo v1, "Stopping low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V

    goto :goto_0
.end method
