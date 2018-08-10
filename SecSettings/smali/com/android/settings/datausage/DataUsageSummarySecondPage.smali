.class public Lcom/android/settings/datausage/DataUsageSummarySecondPage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageSummarySecondPage.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;,
        Lcom/android/settings/datausage/DataUsageSummarySecondPage$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mIsSupportDataCompression:Z


# instance fields
.field private mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

.field private mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSetOperatorPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageSummarySecondPage;)Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mIsSupportDataCompression:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mIsSupportDataCompression:Z

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummarySecondPage$2;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage$2;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;-><init>(Lcom/android/settings/datausage/DataUsageSummarySecondPage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "data_saving_chn"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mIsSupportDataCompression:Z

    sget-boolean v0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mIsSupportDataCompression:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->bindDataSavingService()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->registerDataEnabledObserver()V

    const-string/jumbo v0, "DataUsageSummarySecondPage"

    const-string/jumbo v1, " mDataSavingChnPreference bind Datasaving service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const v2, 0x7f150042

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "data_usage_reminder"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v2, "operator_set"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "data_usage_reminder"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->removePreference(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v8, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const v6, 0x7f12073a

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "data_usage_reminder"

    const/4 v7, -0x2

    invoke-static {v2, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "DataUsageSummarySecondPage"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->unbindDataSavingService()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->unregisterDataEnabledObserver()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v3, "DataUsageSummarySecondPage"

    const-string/jumbo v6, "onPreferenceChange"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "data_usage_reminder"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "data_usage_reminder"

    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    const/4 v8, -0x2

    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b013c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b014e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v2, :cond_0

    move v5, v4

    :cond_0
    invoke-static {v3, v1, v0, v5}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    :cond_1
    return v4

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9, v8}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1213db

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 3

    const-string/jumbo v0, "DataUsageSummarySecondPage"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b035e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mDataSavingChnPreference:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->checkOperaServiceCon()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "DataUsageSummarySecondPage"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onStart()V

    return-void
.end method
