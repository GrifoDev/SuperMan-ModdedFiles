.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    }
.end annotation


# instance fields
.field private mBillingCycle:Landroid/preference/Preference;

.field private mDataLimit:Landroid/preference/Preference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroid/preference/Preference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnableDataLimit:Landroid/preference/SwitchPreference;

.field private mIsSPR:Z

.field private mIsTMB:Z

.field private mIsVZW:Z

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/BillingCycleSettings;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3

    const-string/jumbo v0, "BillingCycleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method private updatePrefs()V
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    const v2, 0x7f0b1b09

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_2

    iget-wide v4, v1, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_1
    invoke-static {v6, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_3
    if-eqz v1, :cond_6

    iget-wide v4, v1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-wide v4, 0x80000000L

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v1, :cond_5

    iget-wide v4, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "billing_cycle"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v2, "data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    :cond_1
    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "TMK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b049c

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(I)V

    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b049d

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_7
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_8
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    if-ne v7, p1, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-eqz v7, :cond_0

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    :goto_0
    const/4 v7, 0x1

    return v7

    :cond_0
    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v7, v7, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v6

    if-nez v6, :cond_1

    return v9

    :cond_1
    iget-wide v8, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-double v8, v8

    const-wide v10, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v8, v10

    double-to-long v4, v8

    const/4 v0, 0x5

    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v7, :cond_2

    const/16 v0, 0x50

    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    if-eqz v7, :cond_3

    const/16 v0, 0x64

    :cond_3
    int-to-long v8, v0

    const-wide/32 v10, 0x40000000

    mul-long/2addr v8, v10

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v8, 0x1900000000L

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    :cond_4
    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    :cond_5
    return v9
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    invoke-static {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)V

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method
