.class public Lcom/sec/ims/settings/GlobalSettings;
.super Ljava/lang/Object;
.source "GlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/settings/GlobalSettings$EmergencyPdnPolicy;
    }
.end annotation


# static fields
.field public static final DEFAULT_IWLAN_PANI_FORMAT:Ljava/lang/String; = "[PREFIX][NODE_ID]"

.field public static final DEFAULT_VOLTE_REGI_ICON_ID:Ljava/lang/String; = "stat_notify_volte_service_avaliable"

.field public static final DEFAULT_VOLTE_SUSPEND_ICON_ID:Ljava/lang/String; = "stat_notify_volte_service_suspend"

.field public static final DEFAULT_VOWIFI_OPERATOR_LABELD:Ljava/lang/String; = ""

.field public static final DEFAULT_VOWIFI_OPERATOR_LABELD_ONGOING:I = 0x0

.field public static final DEFAULT_VOWIFI_SUBTEXT_ON_LOCKSCREEN:Ljava/lang/String; = ""

.field public static final LOG_TAG:Ljava/lang/String; = "GlobalSettings"

.field public static final RCS_CONFIG_PDN_IMS:I = 0x1

.field public static final RCS_CONFIG_PDN_INET:I = 0x0

.field public static final RCS_CONFIG_SOURCE_LOCAL_FILE:I = 0x2

.field public static final RCS_CONFIG_SOURCE_LOCAL_FILE_FROM_SDCARD:I = 0x3

.field public static final RCS_CONFIG_SOURCE_LOCAL_SERVER:I = 0x1

.field public static final RCS_CONFIG_SOURCE_REMOTE_SERVER:I = 0x0

.field public static final RCS_PREF_ALWAYS_ASK:I = 0x2

.field public static final RCS_PREF_ALWAYS_CONNECT:I = 0x1

.field public static final RCS_PREF_NEVER:I = 0x0

.field public static final URI:Ljava/lang/String; = "content://com.sec.ims.settings/global"

.field public static final VOLTE_DOMESTIC_DEFAULT_VALUE:I = 0x0

.field public static final VOLTE_INTERNATIONAL_DEFAULT_VALUE:I = 0x1

.field public static final XCAP_ROOT_URI_PREF_DB:I = 0x0

.field public static final XCAP_ROOT_URI_PREF_IMSI:I = 0x2

.field public static final XCAP_ROOT_URI_PREF_MSISDN:I = 0x1

.field public static final XCAP_ROOT_URI_PREF_MSISDN_WITH_DOMAIN:I = 0x3

.field private static mPhoneId:I


# instance fields
.field private mAggProxyIp:Ljava/lang/String;

.field private mApnSelection:Ljava/lang/String;

.field private mAuthProxyIp:Ljava/lang/String;

.field private mAuthProxyPort:Ljava/lang/Integer;

.field private mBotRegistryAddress:Ljava/lang/String;

.field private mBsfIp:Ljava/lang/String;

.field private mBsfPort:Ljava/lang/Integer;

.field private mDisconnectXcapPdn:Z

.field private mDmAppId:Ljava/lang/String;

.field private mDmDisplayName:Ljava/lang/String;

.field private mE911PdnSelectionVowifi:I

.field private mEmergencyDomainPref:Ljava/lang/String;

.field private mEnableCiq:Ljava/lang/Integer;

.field private mEnableFtAutoResumable:Z

.field private mEnableGba:Ljava/lang/Integer;

.field private mEnableGroupChatListRetrieve:Ljava/lang/Integer;

.field private mEnableHasati:Ljava/lang/Integer;

.field private mFtCancelImsDeregistration:Z

.field private mFtCancelMemoryFull:Z

.field private mFtDeleteTempFile:Z

.field private mFtFallbackAllFail:Z

.field private mFtHideDownloadFile:Z

.field private mFtHttpTrustAllCerts:Z

.field private mHttpPassword:Ljava/lang/String;

.field private mHttpUserName:Ljava/lang/String;

.field private mId:I

.field private mImIncludeDeclinedUser:Z

.field private mImIncludeSubjectHeader:Z

.field private mImsEnabled:Z

.field private mIpVersion:I

.field private mIsAggrImdnSupported:Z

.field private mIsClosedGroupChat:Z

.field private mIsConfSubscribeEnabled:Z

.field private mIsFullSFGroupChat:Z

.field private mIsGroupChatAutoRejoin:Z

.field private mIsMsrpCema:Z

.field private mIsServerHeaderEnabled:Z

.field private mIwlanPaniFormat:Ljava/lang/String;

.field private mKeepMsisdnValidation:Z

.field private mLegacyLatching:Z

.field private mLteE911FailTimer:I

.field protected mMaxAdhocGroupSize:I

.field private mName:Ljava/lang/String;

.field private mNetwork:Ljava/lang/String;

.field private mPagerModeSizeLimit:I

.field private mRcsAutoconfigPdn:I

.field private mRcsAutoconfigSource:I

.field private mRcsCustomConfigServerUrl:Ljava/lang/String;

.field private mRcsDisableUnderUpsm:I

.field private mRcsFtChunkSize:I

.field private mRcsIshChunkSize:I

.field private mRcsModelName:Ljava/lang/String;

.field private mRcsNetworkType:Ljava/lang/String;

.field private mRcsUPProfile:Ljava/lang/String;

.field private mRemoveIconNoSvc:I

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowRegiInfoInSecSetting:Z

.field private mShowVoWiFiRegIcon:Z

.field private mShowVolteRegIcon:Z

.field private mSmsDestPort:Ljava/lang/String;

.field private mSmsOrigPort:Ljava/lang/String;

.field private mSmsWriteUicc:Ljava/lang/String;

.field private mSrvccVersion:I

.field private mSsCallBarringByNetwork:Z

.field private mSsCallwaitingByNetwork:Z

.field private mSsCbMode:Z

.field private mSsConfigDomain:Ljava/lang/String;

.field private mSsCsfbOnImsError:Z

.field private mSsMode:Z

.field private mSsRuleId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportChatOnDefaultMmsApp:Ljava/lang/Integer;

.field private mSupportConfigServer:Ljava/lang/String;

.field private mSupportCpElement:Z

.field private mSupportMediaType:I

.field private mSupportMultiDns:Z

.field private mSupportRcsInterworkingFuncion:Z

.field private mSupportRetry:Z

.field private mSupportSimservsRetry:Z

.field private mSupportSsElement:Z

.field private mSupportTls:Z

.field private mSupportVoWiFi:Z

.field private mUserAgent:Ljava/lang/String;

.field private mUssdPreference:Ljava/lang/String;

.field private mValues:Landroid/content/ContentValues;

.field private mVoiceDomainPrefEutran:I

.field private mVoiceDomainPrefUtran:I

.field private mVolteDomesticDefaultEnabled:Z

.field private mVolteInternationalDefaultEnabled:Z

.field private mVolteRegIconId:Ljava/lang/String;

.field private mVowifiNeedLocationMenu:Z

.field private mVowifiOperatorLabel:Ljava/lang/String;

.field private mVowifiOperatorLabelOngoing:I

.field private mVowifiRegIconId:Ljava/lang/String;

.field private mVowifiSubtextOnLockScreen:Ljava/lang/String;

.field private mXcapRootUri:Ljava/lang/String;

.field private mXcapRootUriPref:Ljava/lang/Integer;

.field private mXdmUserAgent:Landroid/net/Uri;

.field private mXdmUserIdDomain:Ljava/lang/String;

.field private mfThttpDefaultPdn:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsConfSubscribeEnabled:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsAggrImdnSupported:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtHttpTrustAllCerts:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtCancelImsDeregistration:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtCancelMemoryFull:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtHideDownloadFile:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtFallbackAllFail:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtDeleteTempFile:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportRcsInterworkingFuncion:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mImIncludeDeclinedUser:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mImIncludeSubjectHeader:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mServices:Ljava/util/List;

    iput v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigSource:I

    iput v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigPdn:I

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/ims/settings/GlobalSettings;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/settings/GlobalSettings;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mId:I

    const-string/jumbo v2, "mnoname"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mName:Ljava/lang/String;

    const-string/jumbo v2, "network"

    iget-object v5, p0, Lcom/sec/ims/settings/GlobalSettings;->mNetwork:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mNetwork:Ljava/lang/String;

    const-string/jumbo v2, "rcs_local_config_server"

    iget v5, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigSource:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigSource:I

    const-string/jumbo v2, "rcs_custom_config_server_url"

    iget-object v5, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsCustomConfigServerUrl:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsCustomConfigServerUrl:Ljava/lang/String;

    const-string/jumbo v2, "rcs_model_name"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsModelName:Ljava/lang/String;

    const-string/jumbo v2, "rcs_up_profile"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsUPProfile:Ljava/lang/String;

    const-string/jumbo v2, "rcs_auto_config_pdn"

    iget v5, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigPdn:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigPdn:I

    const-string/jumbo v2, "rcs_network_type"

    const-string/jumbo v5, "ims,internet,wifi"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsNetworkType:Ljava/lang/String;

    const-string/jumbo v2, "rcs_disable_under_upsm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsDisableUnderUpsm:I

    const-string/jumbo v2, "bot_registry_addr"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mBotRegistryAddress:Ljava/lang/String;

    const-string/jumbo v2, "services"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v0, v5, v2

    iget-object v7, p0, Lcom/sec/ims/settings/GlobalSettings;->mServices:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "http_username"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mHttpUserName:Ljava/lang/String;

    const-string/jumbo v2, "http_password"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mHttpPassword:Ljava/lang/String;

    const-string/jumbo v2, "xcap_root_uri"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mXcapRootUri:Ljava/lang/String;

    const-string/jumbo v2, "agg_proxy_ip"

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mAggProxyIp:Ljava/lang/String;

    const-string/jumbo v2, "auth_proxy_ip"

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mAuthProxyIp:Ljava/lang/String;

    const-string/jumbo v2, "auth_proxy_port"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mAuthProxyPort:Ljava/lang/Integer;

    const-string/jumbo v2, "apn_selection"

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    const-string/jumbo v2, "xcap_root_uri_pref"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mXcapRootUriPref:Ljava/lang/Integer;

    const-string/jumbo v2, "xdm_user_id_domain"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mXdmUserIdDomain:Ljava/lang/String;

    const-string/jumbo v2, "xdm_user_agent"

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/ims/settings/GlobalSettings;->getUriValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mXdmUserAgent:Landroid/net/Uri;

    const-string/jumbo v2, "bsf_ip"

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mBsfIp:Ljava/lang/String;

    const-string/jumbo v2, "bsf_port"

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mBsfPort:Ljava/lang/Integer;

    const-string/jumbo v2, "enable_gba"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableGba:Ljava/lang/Integer;

    const-string/jumbo v2, "enable_group_chat_list_retrieve"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableGroupChatListRetrieve:Ljava/lang/Integer;

    const-string/jumbo v2, "enable_ft_auto_resumable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableFtAutoResumable:Z

    const-string/jumbo v2, "max_adhoc_group_size"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mMaxAdhocGroupSize:I

    const-string/jumbo v2, "keep_msisdn_validation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mKeepMsisdnValidation:Z

    const-string/jumbo v2, "enable_ciq"

    iget-object v5, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableCiq:Ljava/lang/Integer;

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableCiq:Ljava/lang/Integer;

    const-string/jumbo v2, "enable_hasati"

    iget-object v5, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableHasati:Ljava/lang/Integer;

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableHasati:Ljava/lang/Integer;

    const-string/jumbo v2, "support_vowifi"

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportVoWiFi:Z

    const-string/jumbo v2, "show_volte_regi_icon"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mShowVolteRegIcon:Z

    const-string/jumbo v2, "show_vowifi_regi_icon"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mShowVoWiFiRegIcon:Z

    const-string/jumbo v2, "volte_regi_icon_id"

    const-string/jumbo v5, "stat_notify_volte_service_avaliable"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVolteRegIconId:Ljava/lang/String;

    const-string/jumbo v2, "vowifi_regi_icon_id"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiRegIconId:Ljava/lang/String;

    const-string/jumbo v2, "vowifi_operator_label"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiOperatorLabel:Ljava/lang/String;

    const-string/jumbo v2, "vowifi_operator_label_ongoing"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiOperatorLabelOngoing:I

    const-string/jumbo v2, "vowifi_subtext_on_lockscreen"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiSubtextOnLockScreen:Ljava/lang/String;

    const-string/jumbo v2, "remove_icon_nosvc"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRemoveIconNoSvc:I

    const-string/jumbo v2, "sms_write_uicc"

    const-string/jumbo v5, "0"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsWriteUicc:Ljava/lang/String;

    const-string/jumbo v2, "sms_dest_port"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsDestPort:Ljava/lang/String;

    const-string/jumbo v2, "sms_orig_port"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsOrigPort:Ljava/lang/String;

    const-string/jumbo v2, "dm_app_id"

    const-string/jumbo v5, "ap2001"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mDmAppId:Ljava/lang/String;

    const-string/jumbo v2, "dm_user_disp_name"

    const-string/jumbo v5, "ap2001"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mDmDisplayName:Ljava/lang/String;

    const-string/jumbo v2, "ims_enabled"

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mImsEnabled:Z

    const-string/jumbo v2, "voice_domain_pref_eutran"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVoiceDomainPrefEutran:I

    const-string/jumbo v2, "voice_domain_pref_utran"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVoiceDomainPrefUtran:I

    const-string/jumbo v2, "ss_domain_setting"

    const-string/jumbo v5, "PS"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsConfigDomain:Ljava/lang/String;

    const-string/jumbo v2, "ss_csfb_with_imserror"

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCsfbOnImsError:Z

    const-string/jumbo v2, "ss_support_tls"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportTls:Z

    const-string/jumbo v2, "ss_select_mode"

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsMode:Z

    const-string/jumbo v2, "ss_cb_select_mode"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCbMode:Z

    const-string/jumbo v2, "ss_support_media_type"

    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportMediaType:I

    const-string/jumbo v2, "ss_select_ip_version"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIpVersion:I

    const-string/jumbo v2, "ss_support_multi_dns"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportMultiDns:Z

    const-string/jumbo v2, "ss_support_retry"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportRetry:Z

    const-string/jumbo v2, "ss_support_cp_element"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportCpElement:Z

    const-string/jumbo v2, "ss_support_ss_element"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportSsElement:Z

    const-string/jumbo v2, "ss_support_simservs_retry"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportSimservsRetry:Z

    const-string/jumbo v2, "ss_disconnect_xcap_pdn"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mDisconnectXcapPdn:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "CFB"

    const-string/jumbo v6, "ss_cf_busy_ruleid"

    const-string/jumbo v7, "call-diversion-busy-audio"

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "CFNRc"

    const-string/jumbo v6, "ss_cf_not_reachable_ruleid"

    const-string/jumbo v7, "call-diversion-not-reachable-audio"

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "CFNRy"

    const-string/jumbo v6, "ss_cf_no_answer_ruleId"

    const-string/jumbo v7, "call-diversion-no-reply"

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "CFNoReplyTimer"

    const-string/jumbo v6, "ss_cf_no_replytimer_ruleid"

    const-string/jumbo v7, "NoReplyTimer"

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "CFNL"

    const-string/jumbo v6, "ss_cf_not_logged_in_ruleid"

    const-string/jumbo v7, "call-diversion-not-logged-in"

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "CFU"

    const-string/jumbo v6, "ss_cf_unconditional_ruleid"

    const-string/jumbo v7, "call-diversion-unconditional"

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "BAOC"

    const-string/jumbo v6, "ss_ocb_unconditional_ruleid"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "BOIC"

    const-string/jumbo v6, "ss_ocb_international_ruleid"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "BOICexHC"

    const-string/jumbo v6, "ss_ocb_international_ex_home_ruleid"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "BAIC"

    const-string/jumbo v6, "ss_icb_unconditional_ruleid"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "BICROAM"

    const-string/jumbo v6, "ss_icb_roaming_ruleid"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    const-string/jumbo v5, "ACR"

    const-string/jumbo v6, "ss_icb_anonymous_ruleid"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ussd_domain_setting"

    const-string/jumbo v5, "CS"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mUssdPreference:Ljava/lang/String;

    const-string/jumbo v2, "emergency_domain_setting"

    const-string/jumbo v5, "PS"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mEmergencyDomainPref:Ljava/lang/String;

    const-string/jumbo v2, "t_lte_911_fail"

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mLteE911FailTimer:I

    const-string/jumbo v2, "ss_callwaiting_by_network"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCallwaitingByNetwork:Z

    const-string/jumbo v2, "ss_callbarring_by_network"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCallBarringByNetwork:Z

    const-string/jumbo v2, "rcs_ft_chunk_size"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsFtChunkSize:I

    const-string/jumbo v2, "rcs_ish_chunk_size"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsIshChunkSize:I

    const-string/jumbo v2, "msrp_cema"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsMsrpCema:Z

    const-string/jumbo v2, "pager_mode_size_limit"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mPagerModeSizeLimit:I

    const-string/jumbo v2, "closed_group_chat"

    invoke-direct {p0, p1, v2}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsClosedGroupChat:Z

    const-string/jumbo v2, "full_sf_group_chat"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsFullSFGroupChat:Z

    const-string/jumbo v2, "fthttp_trust_all_certs"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtHttpTrustAllCerts:Z

    const-string/jumbo v2, "ft_cancel_ims_deregistration"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtCancelImsDeregistration:Z

    const-string/jumbo v2, "ft_cancel_memory_full"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtCancelMemoryFull:Z

    const-string/jumbo v2, "ft_hide_download_file"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtHideDownloadFile:Z

    const-string/jumbo v2, "ft_fallback_all_fail"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtFallbackAllFail:Z

    const-string/jumbo v2, "ft_delete_temp_file"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtDeleteTempFile:Z

    const-string/jumbo v2, "is_server_header_enabled"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsServerHeaderEnabled:Z

    const-string/jumbo v2, "support_chat_on_default_mms_app"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportChatOnDefaultMmsApp:Ljava/lang/Integer;

    const-string/jumbo v2, "support_rcs_interworking_function"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportRcsInterworkingFuncion:Z

    const-string/jumbo v2, "rcs_im_include_declined_user"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mImIncludeDeclinedUser:Z

    const-string/jumbo v2, "rcs_im_include_subject_header"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mImIncludeSubjectHeader:Z

    const-string/jumbo v2, "conf_subscribe_enabled"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsConfSubscribeEnabled:Z

    const-string/jumbo v2, "aggr_imdn_supported"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsAggrImdnSupported:Z

    const-string/jumbo v2, "srvcc_version"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSrvccVersion:I

    const-string/jumbo v2, "volte_domestic_default_enabled"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVolteDomesticDefaultEnabled:Z

    const-string/jumbo v2, "volte_international_default_enabled"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVolteInternationalDefaultEnabled:Z

    const-string/jumbo v2, "vowifi_need_location_menu"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiNeedLocationMenu:Z

    const-string/jumbo v2, "show_regi_info_in_sec_settings"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mShowRegiInfoInSecSetting:Z

    const-string/jumbo v2, "iwlan_pani_format"

    const-string/jumbo v5, "[PREFIX][NODE_ID]"

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIwlanPaniFormat:Ljava/lang/String;

    const-string/jumbo v2, "fthttp_over_default_pdn"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mfThttpDefaultPdn:Z

    const-string/jumbo v2, "user_agent"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mUserAgent:Ljava/lang/String;

    const-string/jumbo v2, "legacy_latching"

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mLegacyLatching:Z

    const-string/jumbo v2, "rcs_groupchat_auto_rejoin"

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/ims/settings/GlobalSettings;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsGroupChatAutoRejoin:Z

    const-string/jumbo v2, "e911_pdn_selection_vowifi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mE911PdnSelectionVowifi:I

    const-string/jumbo v2, "support_configserver"

    const-string/jumbo v3, ""

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportConfigServer:Ljava/lang/String;

    return-void

    :cond_1
    move v2, v4

    goto/16 :goto_1

    :cond_2
    move v2, v4

    goto/16 :goto_2

    :cond_3
    move v2, v4

    goto/16 :goto_3

    :cond_4
    move v2, v4

    goto/16 :goto_4

    :cond_5
    move v2, v4

    goto/16 :goto_5

    :cond_6
    move v2, v4

    goto/16 :goto_6

    :cond_7
    move v2, v4

    goto/16 :goto_7

    :cond_8
    move v2, v4

    goto/16 :goto_8

    :cond_9
    move v2, v4

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/ContentValues;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/GlobalSettings;-><init>(Landroid/content/ContentValues;)V

    sput p2, Lcom/sec/ims/settings/GlobalSettings;->mPhoneId:I

    return-void
.end method

.method private getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/sec/ims/settings/GlobalSettings;->mPhoneId:I

    invoke-static {p0, v0}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GlobalSettings["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "getInstance:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v0, "GlobalSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[templog] getInstance, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "GlobalSettings"

    const-string/jumbo v3, "getInstance, cursor is not exist. return.."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string/jumbo v0, "GlobalSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadSettings: count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v6, v7}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/sec/ims/settings/GlobalSettings;

    invoke-direct {v0, v7, p1}, Lcom/sec/ims/settings/GlobalSettings;-><init>(Landroid/content/ContentValues;I)V

    return-object v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method private getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/ims/settings/GlobalSettings;->getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getIntegerValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    return-object v0
.end method

.method private getStringValue(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/ims/settings/GlobalSettings;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    return-object v0
.end method

.method private getUriValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAggProxyIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mAggProxyIp:Ljava/lang/String;

    return-object v0
.end method

.method public getApnSelection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getApnSelectionAsIntType()Ljava/lang/Integer;
    .locals 2

    const-string/jumbo v0, "Inet"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "Wifi"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "xcap"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAuthProxyIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mAuthProxyIp:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthProxyPort()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mAuthProxyPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBotRegistryAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mBotRegistryAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBsfIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mBsfIp:Ljava/lang/String;

    return-object v0
.end method

.method public getBsfPort()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mBsfPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCsfbErrorCodeList(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\\[.*\\]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getDefaultVolteValue(I)Ljava/lang/Boolean;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVolteDomesticDefaultEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVolteInternationalDefaultEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDmAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mDmAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getDmDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mDmDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getE911PdnSelectionVowifi()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mE911PdnSelectionVowifi:I

    return v0
.end method

.method public getEmergencyDomainPref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mEmergencyDomainPref:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableFtAutoResumable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableFtAutoResumable:Z

    return v0
.end method

.method public getEnableGba()I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableGba:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnableGroupChatListRetrieve()I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableGroupChatListRetrieve:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFtCancelImsDeregistration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtCancelImsDeregistration:Z

    return v0
.end method

.method public getFtCancelMemoryFull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtCancelMemoryFull:Z

    return v0
.end method

.method public getFtDeleteTempFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtDeleteTempFile:Z

    return v0
.end method

.method public getFtFallbackAllFail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtFallbackAllFail:Z

    return v0
.end method

.method public getFtHideDownloadFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtHideDownloadFile:Z

    return v0
.end method

.method public getFtHttpOverDefaultPdn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mfThttpDefaultPdn:Z

    return v0
.end method

.method public getFtHttpTrustAllCerts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mFtHttpTrustAllCerts:Z

    return v0
.end method

.method public getHttpPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mHttpPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mHttpUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mId:I

    return v0
.end method

.method public getImIncludeDeclinedUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mImIncludeDeclinedUser:Z

    return v0
.end method

.method public getImIncludeSubjectHeader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mImIncludeSubjectHeader:Z

    return v0
.end method

.method public getIpVersion()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIpVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIsAggrImdnSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsAggrImdnSupported:Z

    return v0
.end method

.method public getIsClosedGroupChat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsClosedGroupChat:Z

    return v0
.end method

.method public getIsConfSubscribeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsConfSubscribeEnabled:Z

    return v0
.end method

.method public getIsFullSFGroupChat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsFullSFGroupChat:Z

    return v0
.end method

.method public getIsMsrpCema()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsMsrpCema:Z

    return v0
.end method

.method public getIwlanPaniFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIwlanPaniFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepMsisdnValidation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mKeepMsisdnValidation:Z

    return v0
.end method

.method public getLegacyLatching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mLegacyLatching:Z

    return v0
.end method

.method public getLteE911FailTimer()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mLteE911FailTimer:I

    return v0
.end method

.method public getMaxAdhocGroupSize()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mMaxAdhocGroupSize:I

    return v0
.end method

.method public getMediaType()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportMediaType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getPagerModeSizeLimit()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mPagerModeSizeLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPdnAsConnectionType()I
    .locals 2

    const-string/jumbo v0, "cbs"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_CBS:I

    return v0

    :cond_0
    const-string/jumbo v0, "default"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v0, "wifi"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mApnSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    sget v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_XCAP:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    sget v0, Lcom/sec/ims/settings/GlobalSettings;->mPhoneId:I

    return v0
.end method

.method public getRcsAutoconfigurationPdn()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigPdn:I

    return v0
.end method

.method public getRcsAutoconfigurationSource()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsAutoconfigSource:I

    return v0
.end method

.method public getRcsCustomConfigServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsCustomConfigServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsDisableUnderUpsm()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsDisableUnderUpsm:I

    return v0
.end method

.method public getRcsFtChunkSize()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsFtChunkSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRcsIshChunkSize()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsIshChunkSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRcsModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsUPProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsUPProfile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRcsUPProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveIconNoSvc()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mRemoveIconNoSvc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public getShowVoWiFiRegIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mShowVoWiFiRegIcon:Z

    return v0
.end method

.method public getShowVolteRegIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mShowVolteRegIcon:Z

    return v0
.end method

.method public getSmsDestPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsDestPort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsDestPort:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsOrigPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsOrigPort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsOrigPort:Ljava/lang/String;

    return-object v0
.end method

.method public getSrvccVersion()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSrvccVersion:I

    return v0
.end method

.method public getSsCbMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCbMode:Z

    return v0
.end method

.method public getSsConfigDomain()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "UNKNOWN"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "XAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CS"

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsConfigDomain:Ljava/lang/String;

    return-object v1
.end method

.method public getSsCsfbOnImsError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCsfbOnImsError:Z

    return v0
.end method

.method public getSsMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsMode:Z

    return v0
.end method

.method public getSsRuleId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsRuleId:Ljava/util/Map;

    return-object v0
.end method

.method public getSupportConfigServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportConfigServer:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportCpElement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportCpElement:Z

    return v0
.end method

.method public getSupportMultiDns()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportMultiDns:Z

    return v0
.end method

.method public getSupportRetry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportRetry:Z

    return v0
.end method

.method public getSupportSimservsRetry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportSimservsRetry:Z

    return v0
.end method

.method public getSupportSsElement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportSsElement:Z

    return v0
.end method

.method public getSupportTls()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportTls:Z

    return v0
.end method

.method public getSupportVoWiFi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportVoWiFi:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUssdPreference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mUssdPreference:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getVoiceDomainPrefEutran()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVoiceDomainPrefEutran:I

    return v0
.end method

.method public getVoiceDomainPrefUtran()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVoiceDomainPrefUtran:I

    return v0
.end method

.method public getVolteRegIconId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVolteRegIconId:Ljava/lang/String;

    return-object v0
.end method

.method public getVowifiNeedLocationMenu()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiNeedLocationMenu:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getVowifiOperatorLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiOperatorLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getVowifiOperatorLabelOngoing()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiOperatorLabelOngoing:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVowifiRegIconId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiRegIconId:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSubtextOnLockScreen()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mVowifiSubtextOnLockScreen:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapRootUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mXcapRootUri:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapRootUriPref()I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mXcapRootUriPref:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getXdmUserAgent()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mXdmUserAgent:Landroid/net/Uri;

    return-object v0
.end method

.method public getXdmUserIdDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mXdmUserIdDomain:Ljava/lang/String;

    return-object v0
.end method

.method public isCallBarringByNetwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCallBarringByNetwork:Z

    return v0
.end method

.method public isCallwaitingByNetwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSsCallwaitingByNetwork:Z

    return v0
.end method

.method public isClosedGroupChat()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isDisconnectXcapPdn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mDisconnectXcapPdn:Z

    return v0
.end method

.method public isEhrpdEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableCiq()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableCiq:Ljava/lang/Integer;

    return-object v0
.end method

.method public isEnableHasati()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mEnableHasati:Ljava/lang/Integer;

    return-object v0
.end method

.method public isEpdgEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupChatAutoRejoin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsGroupChatAutoRejoin:Z

    return v0
.end method

.method public isImsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mImsEnabled:Z

    return v0
.end method

.method public isServerHeaderEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mIsServerHeaderEnabled:Z

    return v0
.end method

.method public isShowRegiInfoInSecSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mShowRegiInfoInSecSetting:Z

    return v0
.end method

.method public isSmsWriteUicc()Z
    .locals 2

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/sec/ims/settings/GlobalSettings;->mSmsWriteUicc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public supportChatOnDefaultMmsApp()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportChatOnDefaultMmsApp:Ljava/lang/Integer;

    return-object v0
.end method

.method public supportRCSInterworkingFunction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/settings/GlobalSettings;->mSupportRcsInterworkingFuncion:Z

    return v0
.end method
