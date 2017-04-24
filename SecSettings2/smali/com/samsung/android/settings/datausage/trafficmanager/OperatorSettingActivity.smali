.class public Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "OperatorSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static sSubId:I


# instance fields
.field private mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mOperatorChoose:Landroid/preference/ListPreference;

.field private mProvinceChoose:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "settings/OperatorSettings"

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initSummary()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "---->initSummary<-----"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->autoCalibrationSDK()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "auto_update_sdk_value"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v7, "switch_bar_sdk_update"

    if-eqz v1, :cond_3

    move v4, v5

    :goto_0
    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "province_choose_sdk_entry"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/LPF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOperatorChoose.provice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mProvinceChoose.getValue():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mProvinceChoose.getEntry():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "operator_choose_sdk_entry"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/LPF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOperatorChoose.operator:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOperatorChoose.getValue():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mOperatorChoose.getEntry():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    move v4, v6

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto/16 :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0800b1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->autoCalibrationSDK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "operator_info_update"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "province_choose_sdk"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    const-string/jumbo v2, "operator_choose_sdk"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "province_choose_sdk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operator_choose_sdk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string/jumbo v2, "switch_bar_sdk_update"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isUserSetAutoCalibrationEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/LPF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preference true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->initSummary()V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/LPF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preference false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "operator_info_update"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "---->onPreferenceChange<-----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mAutoUpdateSwitch:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "auto_update_sdk_value"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/LPF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the flag is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "the isChecked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_4

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProvinceChoose objValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProvinceChoose.getgetEntry():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProvinceChoose.getgetValue():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "province_choose_sdk_entry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "province_choose_sdk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mProvinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->initSummary()V

    return v6

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_7

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOperatorChoose objValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOperatorChoose.getgetEntry():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOperatorChoose.getgetValue():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operator_choose_sdk_entry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operator_choose_sdk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->mOperatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->initSummary()V

    return v6

    :cond_7
    const/4 v3, 0x0

    return v3
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->initSummary()V

    return-void
.end method
