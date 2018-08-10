.class public Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;
.super Landroid/preference/PreferenceActivity;
.source "DataWarningLimitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$3;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$4;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;
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
.field TAG:Ljava/lang/String;

.field private mBixbyObserver:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;

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

.field public mDataTemplate:Landroid/net/NetworkTemplate;

.field private mDataWarningAdapter:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

.field private mEnableWarningStatus:I

.field private mIsDataLoadFinished:Z

.field private mListView:Landroid/widget/ListView;

.field private mMobileText:Landroid/widget/TextView;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mSubscriberId:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Landroid/widget/LinearLayout;

.field public mSwitchBarClickListener:Landroid/view/View$OnClickListener;

.field public mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchtext:Landroid/widget/TextView;

.field private mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

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


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->isWarningFunctionActive()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->formatFileSizeMB(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getStartTime()J

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

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string/jumbo v0, "DataWarningLimitActivity"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mBixbyObserver:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$4;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

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

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

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

    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

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

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

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

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

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

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "data_warning_app_whitelist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

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
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "init"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v20, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v20, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->dataReset()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getWarningWhiteList()V

    const/16 v20, 0x80

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v13

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v16

    const/4 v15, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_8

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "com.samsung.android.email"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v20, "android.permission.INTERNET"

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_2

    if-eqz v17, :cond_2

    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_2

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->isInWhiteList(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    iget v6, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v20, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v20

    if-eqz v20, :cond_4

    sget-object v20, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v9

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_7

    sget-object v20, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    :goto_4
    const/4 v7, 0x0

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "com.samsung.android.email"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object v7, v14

    :cond_5
    new-instance v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V

    sget-object v20, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
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

.method private isWarningFunctionActive()Z
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v0, "max"

    const-string/jumbo v3, "off"

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_data_limit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data_warning_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_traffic_settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, "max"

    :cond_0
    if-nez v3, :cond_1

    const-string/jumbo v3, "off"

    :cond_1
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    xor-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_2

    const-string/jumbo v4, "max"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    return v7

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d00c4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00c5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0597

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0596

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a088c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    const v2, 0x7f0a053b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mBixbyObserver:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    return-void
.end method

.method public onResume()V
    .locals 12

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    new-instance v8, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mBixbyObserver:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "afterwarning_bixby"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mBixbyObserver:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$BixbyObserver;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getSubscriptionId(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    :cond_0
    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "data_warning_whitelist_enable_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->isWarningFunctionActive()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_1
    iput v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "data_warning_whitelist_enable_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->init()V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v8, "netstats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsService:Landroid/net/INetworkStatsService;

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v8}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getStartTime()J

    move-result-wide v10

    invoke-static {v9, v10, v11, v4, v5}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    const/16 v11, 0xb

    invoke-virtual {v8, v11, v9, v10}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    const v9, 0x7f120bf6

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const v8, 0x7f121b3e

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    new-instance v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->putUsedSubId(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->sortInWarningStatus()V

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    const v9, 0x7f120bf6

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v8, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v8, 0x0

    sput-boolean v8, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b013a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b013a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b013b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v3}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    :cond_5
    const v8, 0x7f121b3d

    goto/16 :goto_3
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
