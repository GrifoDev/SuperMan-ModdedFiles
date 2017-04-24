.class public Lcom/android/settings/datausage/DataSavingChnPreference;
.super Landroid/preference/DialogPreference;
.source "DataSavingChnPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSavingChnPreference$1;
    }
.end annotation


# instance fields
.field public mChecked:Z

.field public mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

.field private mSavingServiceConnection:Landroid/content/ServiceConnection;

.field private mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

.field private mSwitchView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataSavingChnPreference;)Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iput-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iput-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/datausage/DataSavingChnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSavingChnPreference$1;-><init>(Lcom/android/settings/datausage/DataSavingChnPreference;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    const v0, 0x7f0b0f02

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->setSummary(I)V

    return-void
.end method

.method private setChecked(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "opera_max_china_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "opera_max_china_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public bindDataSavingService()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.datasaving.DataSavingService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.datasaving"

    const-string/jumbo v3, "com.samsung.android.datasaving.DataSavingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "bindDataSavingService failed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "bindSavingService failed with exception "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSavedBytesByUid(IJJ)J
    .locals 10

    const-wide/16 v8, 0x0

    const-string/jumbo v0, "DataSavingChnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/datasaving/IDataSavingService;->getSavedBytesByUid(IJJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "getSavedBytesByUid failed with exception "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "mDataSavingService is nulll ,getSavedBytesByUid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSavedBytesForAllUid(JJ)J
    .locals 5

    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/datasaving/IDataSavingService;->getSavedBytesForAllUid(JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "getSavedBytesForAllUid failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "mDataSavingService is nulll ,getSavedBytesForAllUid failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsageText(J)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/datasaving/IDataSavingService;->getUsageText(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "getUsageText failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "mDataSavingService is nulll ,getUsageText failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityStop()V
    .locals 2

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "onActivityStop(),unbindDataSavingService() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSavingChnPreference;->unbindDataSavingService()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "onBindView "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    const v2, 0x1020040

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "opera_max_china_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v3, "DataSavingChnPreference"

    const-string/jumbo v4, "performClick()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSwitchView:Landroid/view/View;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DataSavingChnPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performClick()  mChecked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v3, :cond_4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v3}, Lcom/samsung/android/datasaving/IDataSavingService;->startSaving()V

    iget-boolean v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v3}, Lcom/samsung/android/datasaving/IDataSavingService;->stopSaving()V

    iget-boolean v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "startSaving failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "mDataSavingService is null,set check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSecSummaryLayoutCHN(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "setSecSummaryLayoutCHN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unbindDataSavingService()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataSavingChnPreference;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "unbindDataSavingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "unbindDataSavingService failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
