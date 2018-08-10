.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$1;,
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    }
.end annotation


# static fields
.field static final KEY_SET_DATA_LIMIT:Ljava/lang/String; = "set_data_limit"

.field private static sBillingCycle:I

.field private static sDataLimit:I

.field private static sDataWarning:I

.field private static sSetDataLimit:I


# instance fields
.field private mBillingCycle:Landroid/support/v7/preference/SecPreference;

.field private mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

.field private mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

.field private mDataLimit:Landroid/support/v7/preference/SecPreference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroid/support/v7/preference/SecPreference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

.field private mEnableDataWarning:Landroid/support/v14/preference/SecSwitchPreference;

.field private mIsSPR:Z

.field private mIsTMB:Z

.field private mIsVZW:Z

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/BillingCycleSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbyGetCycle()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbyGetByte()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/BillingCycleSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbySetCycle(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/BillingCycleSettings;JZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbySetDataWarning(JZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/BillingCycleSettings$1;-><init>(Lcom/android/settings/datausage/BillingCycleSettings;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    return-void
.end method

.method private bixbyGetByte()J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-virtual {v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->bixbyGetByte()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private bixbyGetCycle()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-virtual {v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->bixbyGetCycle()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private bixbySetCycle(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->bixbySetCycle(I)V

    :cond_0
    return-void
.end method

.method private bixbySetDataWarning(JZ)V
    .locals 13

    const-wide/16 v10, -0x1

    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v6, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v6, "BillingCycleSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set warning byte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-float v6, p1

    const/high16 v7, 0x53800000

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const-wide p1, 0x10000000000L

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p3, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    cmp-long v6, v4, p1

    if-lez v6, :cond_1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :cond_1
    const-string/jumbo v6, "BillingCycleSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    cmp-long v6, v2, v10

    if-eqz v6, :cond_4

    cmp-long v6, v2, p1

    if-gez v6, :cond_4

    move-wide p1, v2

    :cond_4
    const-string/jumbo v6, "BillingCycleSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPolicyWarningBytes() WarningBytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_0
.end method

.method private getDefaultWarningBytes()J
    .locals 6

    const/4 v1, 0x2

    const-string/jumbo v2, "ro.csc.sales_code"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_0
    :goto_0
    const-string/jumbo v2, "BillingCycleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultWarningBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v1

    const-wide/32 v4, 0x40000000

    mul-long/2addr v2, v4

    return-wide v2

    :cond_1
    const-string/jumbo v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x32

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "SKC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "KTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "LUC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "KOO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "TMB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/16 v1, 0x64

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "TFN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "TMK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x2

    goto :goto_0
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3

    const-string/jumbo v0, "BillingCycleSettings"

    const-string/jumbo v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method private updatePrefs()V
    .locals 10

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/SecPreference;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "%02d"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const v4, 0x7f120378

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_3

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v6, 0x40000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    const/4 v3, 0x2

    :goto_1
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v5, v3, v6, v7}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_2
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_3
    if-eqz v2, :cond_7

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    if-eqz v2, :cond_6

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/32 v6, 0x40000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    const/4 v3, 0x2

    :goto_5
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v5, v3, v6, v7}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
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

    const v2, 0x7f15002e

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "billing_cycle"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v2, "set_data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

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
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f1206fe

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12071d

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

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
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BillingCycle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v7, p1, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v8, -0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b04b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    if-eqz v1, :cond_0

    const/16 v7, 0x3e8

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v7, 0x1

    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-eqz v7, :cond_3

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b04b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    if-eqz v1, :cond_2

    const/16 v7, 0x3e8

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v7, 0x1

    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v7, v7, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v7, 0x0

    return v7

    :cond_4
    iget-wide v8, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-double v8, v8

    const-wide v10, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v8, v10

    double-to-long v4, v8

    const/4 v0, 0x5

    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v7, :cond_5

    const/16 v0, 0x50

    :cond_5
    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    if-eqz v7, :cond_6

    const/16 v0, 0x64

    :cond_6
    int-to-long v8, v0

    const-wide/32 v10, 0x40000000

    mul-long/2addr v8, v10

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v8, 0x1900000000L

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b04b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    if-eqz v1, :cond_7

    const/16 v7, 0x3e8

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v7, 0x1

    return v7

    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v7, p1, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0472

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getDefaultWarningBytes()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    :goto_3
    const/4 v7, 0x1

    return v7

    :cond_9
    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    return v7
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/BillingCycleSettings;->sBillingCycle:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/BillingCycleSettings;->sBillingCycle:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/BillingCycleSettings;->sDataWarning:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/BillingCycleSettings;->sDataWarning:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_2

    invoke-static {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/BillingCycleSettings;->sDataLimit:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/BillingCycleSettings;->sDataLimit:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "BillingCycle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method setPolicyLimitBytes(J)V
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

.method public updateDataUsage()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method
