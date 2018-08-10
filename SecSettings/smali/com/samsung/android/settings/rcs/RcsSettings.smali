.class public Lcom/samsung/android/settings/rcs/RcsSettings;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "RcsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field mIsDefaultSms:Z

.field private mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

.field mSwitchRcs:Z

.field private mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

.field private phoneId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/rcs/RcsSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/rcs/RcsSettings;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    const-class v0, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/rcs/RcsSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/rcs/RcsSettings$1;-><init>(Lcom/samsung/android/settings/rcs/RcsSettings;)V

    iget v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    iput-object p3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-void
.end method


# virtual methods
.method public checkMdmRcsStatus()Z
    .locals 9

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "1"

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string/jumbo v0, "false"

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string/jumbo v3, "isRCSEnabled"

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string/jumbo v0, "false"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Disabled RCS "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public disableAllRcsSettingsPreference()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableAllRcsSettingsPreference: disable for all brand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public enableRcs(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->enableRcs(Z)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    const-string/jumbo v1, "com.samsung.android.messaging"

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "rcs_settings"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    :cond_0
    :goto_1
    return v3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WirelessSettings;->callRcsDefaultSms()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "rcs_settings_partial_branded"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_1
.end method

.method public setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V
    .locals 7

    const v6, 0x7f1215c1

    const v5, 0x7f1215c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "com.samsung.android.messaging"

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->checkMdmRcsStatus()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p1, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v1, 0x7f121b3e

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p1, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method public updateRcsSettingsVisibility()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: RCS is not enabled in CSC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DISABLE_ON_DS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "dsds"

    const-string/jumbo v2, "persist.radio.multisim.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: RCS is disabled by DISABLE_ON_DS in others.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: update for RCSe"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: update for Partial Branded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isSupportCPR()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: update for Full Branded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto/16 :goto_0
.end method
