.class public Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "BatteryInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$1;,
        Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$2;,
        Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryLife:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->isDeviceSpecEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$1;-><init>(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;-><init>(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static isDeviceSpecEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "BatteryInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "empty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BatteryInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not supported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "BatteryInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceSpecStringSummary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "BatteryInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreference(empty) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "BatteryInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "battery_level"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLevel:Landroid/preference/Preference;

    const-string/jumbo v1, "battery_status"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    const-string/jumbo v1, "battery_life"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getBatteryLife()I

    move-result v0

    const-string/jumbo v1, "BatteryInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "battery life : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v2, 0x7f0b051d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    const-string/jumbo v1, "fcc_id"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceFccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rated_value"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "battery_capacity"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_0
    const-string/jumbo v1, "battery_life"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v2, 0x7f0b051e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v2, 0x7f0b051f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BatteryInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "BatteryInfo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
