.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummary$1;,
        Lcom/android/settings/datausage/DataUsageSummary$2;,
        Lcom/android/settings/datausage/DataUsageSummary$3;,
        Lcom/android/settings/datausage/DataUsageSummary$4;,
        Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mIsDynamicUnits:Z

.field public static mSelectDisplayUnit:I


# instance fields
.field private isKnoxmode:Z

.field private mCheckPhoneBalance:Landroid/preference/Preference;

.field private mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

.field private mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsATT:Z

.field private mIsCHNSmartManager:Z

.field private mIsSIMCardInserted:Z

.field private mIsSPR:Z

.field private mIsVZW:Z

.field private mLimitPreference:Landroid/preference/Preference;

.field private mMobileDataATT:Landroid/preference/Preference;

.field private mPcoFeature:Ljava/lang/String;

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRoamingATT:Landroid/preference/Preference;

.field private mRootView:Landroid/view/View;

.field private mSetDataPreference:Landroid/preference/Preference;

.field private mSetOperatorPreference:Landroid/preference/Preference;

.field private mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

.field private mTopUpPhoneBalance:Landroid/preference/Preference;

.field public summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$3;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$3;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$4;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$4;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$2;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080048

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    sub-int v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    const-string/jumbo v4, "mobile_data_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    const-string/jumbo v4, "roaming_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    return-void
.end method

.method private addEnt1Section(I)V
    .locals 3

    const v1, 0x7f08004b

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    return-void
.end method

.method private addEthernetSection()V
    .locals 4

    const v1, 0x7f08004c

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addMobileSection(IZ)V
    .locals 7

    const/4 v6, 0x1

    const v4, 0x7f080049

    invoke-direct {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v4, p1, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    if-eqz v4, :cond_b

    :cond_1
    const-string/jumbo v4, "alert_at_warning"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/AlertAtWarningPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->setTargetFragment(Lcom/android/settings/datausage/DataUsageSummary;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v4, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_2
    const-string/jumbo v4, "confirm_at_boot"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "cellular_data_usage"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "billing_preference"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "set_used_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "operator_set"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/preference/Preference;

    :cond_4
    const-string/jumbo v4, "restrict_background"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string/jumbo v4, "top_up_phone_balance"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_e

    :cond_5
    const-string/jumbo v4, "check_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_3
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-nez v4, :cond_6

    const-string/jumbo v4, "data_usage_reminder"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "operator_set"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataSavingChnPreference;->bindDataSavingService()V

    const-string/jumbo v4, "DataUsageSummary"

    const-string/jumbo v5, " mDataSavingChnPreference bind Datasaving service"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v4, :cond_11

    const-string/jumbo v4, "billing_preference"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "data_usage_enable"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "data_usage_reminder"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    :cond_a
    return-void

    :cond_b
    const-string/jumbo v4, "alert_at_warning"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v4, "confirm_at_boot"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v4, "top_up_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v4, "check_phone_balance"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v4, "billing_preference_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_app_data"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "set_used_data"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_background"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "top_up_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "check_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "restrict_app_data"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private addWifiSection()V
    .locals 4

    const v1, 0x7f080050

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "network_restrictions"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    goto :goto_0
.end method

.method private static formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/text/SpannableString;

    const v4, 0x104009b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%1$s"

    const-string/jumbo v6, "^1"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%2$s"

    const-string/jumbo v6, "^2"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2, p3, v8}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v4, "%1$s"

    const-string/jumbo v5, "^1"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "^1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    new-array v4, v8, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3
.end method

.method public static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 3

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 2

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method public static hasEnableSimCard(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .locals 1

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v3

    :cond_0
    return v3
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private inflatePreferences(I)Landroid/preference/Preference;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method private initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f08004f

    invoke-virtual {v6, v7, v8, v9}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v2

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f0b0f17

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "data_usage_reminder"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "oversea"

    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateState()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v11, v12}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v5, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v2, v12, v14, v15}, Lcom/android/settings/datausage/DataUsageSummary;->formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v11, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    if-eqz v11, :cond_1

    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v11, v12, v14, v15}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v3, v11, v12}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    invoke-virtual {v11, v3}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-wide v6, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-gtz v11, :cond_2

    iget-wide v6, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    :cond_2
    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v11, v12, v6

    if-lez v11, :cond_3

    iget-wide v6, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    iget-object v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SecSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    const-wide/16 v12, 0x0

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/SecSummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    long-to-float v12, v12

    long-to-float v13, v6

    div-float/2addr v12, v13

    const/4 v13, 0x0

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long v14, v6, v14

    long-to-float v14, v14

    long-to-float v15, v6

    div-float/2addr v14, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/SecSummaryPreference;->setRatios(FFF)V

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_5

    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-ltz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-gtz v11, :cond_7

    const v11, 0x7f0b1b02

    :goto_1
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    const-string/jumbo v11, "DataUsageSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateState warning : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  limit : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-ge v4, v11, :cond_a

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v11, v12}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    goto/16 :goto_0

    :cond_7
    const v11, 0x7f0b1b03

    goto :goto_1

    :cond_8
    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const v13, 0x7f0b04b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v13, "mobile_data_question"

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_f

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_d
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_f
    const/4 v11, 0x0

    goto :goto_5
.end method

.method private static verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 8

    const/16 v7, 0x12

    const/4 v6, 0x0

    const v5, 0x3f111111

    const v1, 0x3f111111

    const/16 v0, 0x12

    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 13

    const/4 v12, 0x0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v10

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v9, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    return v12

    :catch_1
    move-exception v7

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v1, v12

    goto :goto_1
.end method

.method public isVolte()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v11, "CscFeature_Common_ConfigPco"

    invoke-virtual {v8, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "ATT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iput-boolean v10, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v11, 0x64

    if-lt v8, v11, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v8, :cond_15

    :cond_1
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v8, :cond_16

    sget v8, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    if-eqz v8, :cond_16

    move v8, v10

    :goto_3
    sput-boolean v8, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    new-instance v8, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    const-string/jumbo v8, "DataUsageSummary"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "hasMobileData:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mIsSIMCardInserted:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v8, :cond_17

    if-eqz v1, :cond_17

    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v8, :cond_17

    const v8, 0x7f08004a

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    :goto_4
    const-string/jumbo v8, "usage"

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_18

    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    if-eqz v1, :cond_19

    const-string/jumbo v8, "limit_summary"

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    :cond_4
    :goto_6
    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v11, "COMMON"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "restrict_background"

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "background_data_by_pco"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v11, v9, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "background_data_by_pco"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v10, :cond_1a

    const/4 v4, 0x1

    :cond_5
    :goto_7
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    if-eqz v4, :cond_1b

    :cond_7
    if-eqz v7, :cond_8

    const-string/jumbo v8, "restrict_background"

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_8
    if-eqz v1, :cond_9

    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v8, :cond_1c

    :cond_9
    if-eqz v1, :cond_a

    invoke-direct {p0, v0, v10}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    :cond_d
    if-eqz v1, :cond_21

    const v8, 0x7f0b1aff

    :goto_9
    iput v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    const-string/jumbo v8, "status_header"

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/SecSummaryPreference;

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    invoke-virtual {p0, v10}, Lcom/android/settings/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "data_usage_display_unit"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    :cond_e
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v8, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "enterprise_policy"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_f
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_10
    return-void

    :cond_11
    const-string/jumbo v8, "VZW"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iput-boolean v10, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v8

    if-eqz v8, :cond_0

    iput-boolean v10, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    goto/16 :goto_0

    :cond_13
    move v8, v10

    goto/16 :goto_1

    :cond_14
    move v8, v9

    goto/16 :goto_1

    :cond_15
    iput-boolean v10, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    goto/16 :goto_2

    :cond_16
    move v8, v9

    goto/16 :goto_3

    :cond_17
    const v8, 0x7f080047

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_19
    if-eqz v7, :cond_4

    const-string/jumbo v8, "limit_summary"

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_1b
    const-string/jumbo v8, "restrict_background"

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    goto/16 :goto_8

    :cond_1c
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v8, v8, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1e

    :cond_1d
    invoke-direct {p0, v0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)V

    :cond_1e
    const/4 v3, 0x0

    :goto_a
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_a

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_20

    :cond_1f
    if-nez v3, :cond_20

    move v8, v10

    :goto_b
    invoke-direct {p0, v11, v8}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_20
    move v8, v9

    goto :goto_b

    :cond_21
    if-eqz v2, :cond_22

    const v8, 0x7f0b1b00

    goto/16 :goto_9

    :cond_22
    const v8, 0x7f0b1b01

    goto/16 :goto_9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/datausage/DataUsageBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0401f1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v4, "COMMON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDestroy, currentStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->stopAutoCalibrationService()V

    goto :goto_0

    :cond_5
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_6
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    return v6

    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.phone"

    const-string/jumbo v6, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    return v8

    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "data_usage_vzw_spr"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v8

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "data_usage_display_unit"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b04b1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v6, Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-direct {v6, p0}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    const v7, 0x7f0c00ba

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return v8

    :pswitch_data_0
    .packed-switch 0x7f110875
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data_question"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string/jumbo v3, "data_usage_reminder"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "data_usage_reminder"

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12

    const/16 v4, 0x64

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSetDataPreference click, currentStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v8, v1, :cond_0

    const/4 v1, 0x3

    if-ne v8, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0f0d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v11

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->show(Lcom/android/settings/datausage/DataUsageSummary;)V

    return v11

    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-static {}, Lcom/android/settings/Utils;->isUserSetAutoCalibrationEnable()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showWarningDialog(Landroid/os/Bundle;Z)V

    :cond_3
    :goto_0
    return v11

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0f0a

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mTopUpPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    if-ne p2, v1, :cond_7

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mCheckPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    if-ne p2, v1, :cond_8

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.Enhanced4GLTE"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-lt v1, v4, :cond_a

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v10, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    if-ne p2, v1, :cond_9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.InternationalEnhanced4GLTE"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-lt v1, v4, :cond_b

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v10, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :catch_0
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTopUpPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheckPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMobileDataATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :catch_3
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRoamingATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f110875

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const v3, 0x7f110877

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    const v3, 0x7f110876

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v3, :cond_4

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setDataSavingChnPreference(Lcom/android/settings/datausage/DataSavingChnPreference;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInstance(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setSecSummaryLayoutCHN(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    :cond_0
    return-void
.end method

.method public updateDataUsage()V
    .locals 2

    const-string/jumbo v0, "DataUsageSummary"

    const-string/jumbo v1, "updateDataUsage "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method
