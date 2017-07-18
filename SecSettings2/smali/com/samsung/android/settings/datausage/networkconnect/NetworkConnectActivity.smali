.class public Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;
.super Landroid/preference/PreferenceActivity;
.source "NetworkConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$1;,
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;,
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;
    }
.end annotation


# static fields
.field private static final DATA_SIZE_SUFFIX:[Ljava/lang/String;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSelectAllFlag:Z

.field public mDataTemplate:Landroid/net/NetworkTemplate;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEmailUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

.field private mIsDataLoadFinished:Z

.field private mListView:Landroid/widget/ListView;

.field private mMobileCheckBox:Landroid/widget/CheckBox;

.field private mMobileText:Landroid/widget/TextView;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mSubscriberId:Ljava/lang/String;

.field private mUidAllowedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

.field private mWIFICheckBox:Landroid/widget/CheckBox;

.field private mWIFISelectAllFlag:Z

.field private mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public mWifiTemplate:Landroid/net/NetworkTemplate;

.field private mWlanText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    return p1
.end method

.method static synthetic -wrap0(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->formatFileSizeMB(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "B"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "KB"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "MB"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "GB"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private dataReset()V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static formatFileSizeMB(J)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    long-to-int v3, p0

    long-to-float v0, p0

    const-string/jumbo v4, ""

    move v2, v1

    :goto_0
    if-lez v3, :cond_1

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    if-le v2, v5, :cond_0

    const-string/jumbo v5, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v0, v5

    float-to-int v3, v0

    move v2, v1

    goto :goto_0

    :cond_0
    float-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStartTime()J
    .locals 20

    const-wide/16 v18, 0x0

    const-string/jumbo v16, "set_package_start_date_value"

    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    const/4 v3, 0x1

    if-lt v5, v3, :cond_0

    const/16 v3, 0x1f

    if-le v5, v3, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    if-lt v14, v5, :cond_2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    :goto_1
    return-wide v18

    :catch_0
    move-exception v15

    const-string/jumbo v3, "NetworkConnect"

    const-string/jumbo v4, "startDay SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v5

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    goto :goto_1
.end method

.method private getWarningWhiteList()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "data_warning_app_whitelist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    const-string/jumbo v1, "data_normal_app_whitelist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    return-void
.end method

.method private init()V
    .locals 17

    const-string/jumbo v14, "NetworkConnect"

    const-string/jumbo v15, "init"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->dataReset()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getWarningWhiteList()V

    const/16 v14, 0x80

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.samsung.android.email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v14, "android.permission.INTERNET"

    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    if-eqz v12, :cond_1

    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v15, 0x2710

    if-lt v14, v15, :cond_1

    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v15, 0x4e1f

    if-gt v14, v15, :cond_1

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->isInWhiteList(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v14

    if-eqz v14, :cond_3

    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v6

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v7

    if-eqz v6, :cond_6

    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    :goto_3
    const/4 v5, 0x0

    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.samsung.android.email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    :cond_4
    new-instance v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V

    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    return-void
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0b03c2

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$4;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v0, 0x0

    :goto_4
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$6;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1104a9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04018b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const v0, 0x7f1104aa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    const v0, 0x7f110285

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    const v0, 0x7f1104a9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f1104ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 14

    const/4 v9, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v7, "NetworkConnect"

    const-string/jumbo v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    iget v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    if-eq v7, v9, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getSubscriptionId(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    :cond_0
    iget v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    if-ne v7, v9, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    :cond_1
    iput-boolean v13, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->init()V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v7, "netstats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsService:Landroid/net/INetworkStatsService;

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v7}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getStartTime()J

    move-result-wide v10

    invoke-static {v8, v10, v11, v4, v5}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    const/16 v10, 0xb

    invoke-virtual {v7, v10, v8, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    const v8, 0x7f0b0c50

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    const v8, 0x7f0b0c4f

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_1
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_4
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v0, v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v12, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    :goto_2
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v12, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    :goto_3
    return-void

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v13, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v12, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    goto :goto_3
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
