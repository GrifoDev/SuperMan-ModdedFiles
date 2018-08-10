.class public Lcom/samsung/android/settings/AirplaneModeSettings;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "AirplaneModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/AirplaneModeSettings$1;,
        Lcom/samsung/android/settings/AirplaneModeSettings$2;,
        Lcom/samsung/android/settings/AirplaneModeSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field airplaneModeDesc:Landroid/widget/TextView;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/AirplaneModeSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/AirplaneModeSettings;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/AirplaneModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->setDescription()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/AirplaneModeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/AirplaneModeSettings$1;-><init>(Lcom/samsung/android/settings/AirplaneModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSettings$3;-><init>(Lcom/samsung/android/settings/AirplaneModeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getImsManager(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "AirplaneModeSettings"

    const-string/jumbo v1, "getImsManager() - context is null now."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/samsung/android/settings/AirplaneModeSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/AirplaneModeSettings$4;-><init>(Lcom/samsung/android/settings/AirplaneModeSettings;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method

.method private setDescription()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AirplaneModeSettings"

    const-string/jumbo v2, "setDescription() - getActivity() is null now."

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x7f120c09

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/AirplaneModeSettings;->getImsManager(Landroid/content/Context;)V

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f120c06

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const v0, 0x7f120c0f

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f120c07

    goto :goto_0

    :cond_3
    const v0, 0x7f120c10

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f120c12

    goto :goto_0

    :cond_5
    const v0, 0x7f120c0d

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f120c09

    goto :goto_0

    :cond_7
    const v0, 0x7f120c0b

    goto :goto_0

    :cond_8
    const v0, 0x7f120129

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/AirplaneModeSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0d0032

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->setDescription()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->removeImsManager()V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AirplaneMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> AIRPLANE_MODE_STATUS_OFF </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getImsManager(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AirplaneMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> AIRPLANE_MODE_STATUS_ON </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
