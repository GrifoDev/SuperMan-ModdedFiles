.class public Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
.super Ljava/lang/Object;
.source "NetworkManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils$1;
    }
.end annotation


# static fields
.field public static final ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

.field public static mIsWarningStatus:Z

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

.field private mEnd:J

.field private mNetWorkHistory:Landroid/net/NetworkStatsHistory;

.field private mNetWorkTemplate:Landroid/net/NetworkTemplate;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSharedpre:Landroid/content/SharedPreferences;

.field private mStart:J

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mWhiteListSlot1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListSlot2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.onlinevideo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.qiyi.video.oemplayer"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mWhiteListSlot1:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mWhiteListSlot2:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    return-void
.end method

.method private getActiveSubId()I
    .locals 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const-string/jumbo v1, "NetworkManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getBounds(I)V
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-lt v10, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    goto :goto_0
.end method

.method private getConfirmTime()J
    .locals 7

    const-string/jumbo v0, "check_time"

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    return-wide v2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "NetworkManagerUtils"

    const-string/jumbo v5, "lConfirmTime SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getConfirmTraffic()J
    .locals 12

    const-wide/16 v10, 0x0

    const-string/jumbo v2, "data_used_by_check_time"

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "NetworkManagerUtils"

    const-string/jumbo v8, "getConfirmTraffic : false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v10

    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v4, v8

    double-to-long v0, v4

    const-string/jumbo v7, "NetworkManagerUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getConfirmTraffic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from setting, confirm bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :catch_0
    move-exception v3

    return-wide v10
.end method

.method private getStartDay()I
    .locals 6

    const-string/jumbo v2, "set_package_start_date_value"

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "iStart SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkStatus(Z)V
    .locals 14

    const/high16 v13, 0x44800000    # 1024.0f

    const/4 v12, 0x0

    const-string/jumbo v9, "netstats"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getTotalUsedData()J

    move-result-wide v6

    sput-boolean v12, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "max"

    const-string/jumbo v8, "off"

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_data_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "data_warning_set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "switch_traffic_settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "data_warning_whitelist_enable_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v1, :cond_0

    const-string/jumbo v1, "max"

    :cond_0
    if-nez v8, :cond_1

    const-string/jumbo v8, "off"

    :cond_1
    const-string/jumbo v9, "off"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v0, :cond_5

    :cond_2
    sput-boolean v12, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_2

    const-string/jumbo v9, "max"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const/high16 v5, -0x40800000    # -1.0f

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    mul-float/2addr v9, v13

    mul-float/2addr v9, v13

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    div-float v5, v9, v10

    :goto_1
    long-to-float v9, v6

    cmpl-float v9, v9, v5

    if-ltz v9, :cond_6

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    const/4 v9, 0x1

    sput-boolean v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    :cond_6
    if-nez p1, :cond_7

    return-void

    :catch_0
    move-exception v2

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_1

    :cond_7
    sget-boolean v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-nez v9, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    :goto_2
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->runWarning()V

    goto :goto_2
.end method

.method public getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "NetworkManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscriberId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSubscriptionId(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTotalUsedData()J
    .locals 24

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getStartDay()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getBounds(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getConfirmTime()J

    move-result-wide v12

    const-wide/16 v18, 0x0

    const-wide/16 v16, 0x0

    const-string/jumbo v15, "middle_real_value"

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    cmp-long v3, v12, v4

    if-ltz v3, :cond_0

    cmp-long v3, v12, v8

    if-gtz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getConfirmTraffic()J

    move-result-wide v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    if-nez v3, :cond_1

    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v4, -0x1

    return-wide v4

    :catch_0
    move-exception v11

    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "realTraffic SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v16, 0x0

    goto :goto_0

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v14

    iget-wide v4, v14, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    add-long v22, v4, v6

    sub-long v4, v22, v16

    add-long v20, v4, v18

    return-wide v20

    :catch_1
    move-exception v2

    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public getUsedSubIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getWhiteList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isCurrentSlotWarning(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public putUsedSubId(Ljava/lang/String;)V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "used_subId"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public putWhiteList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public runWarning()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setWifiAssociateApps(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_app_whitelist_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "data_normal_app_whitelist"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setDataAssociateApps(Landroid/content/Context;)V

    return-void
.end method

.method public setDataAssociateApps(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v2, 0x0

    :goto_0
    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    aget-object v6, v9, v2

    const/4 v0, 0x0

    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v4

    const/4 v3, 0x1

    :goto_1
    array-length v9, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v9, :cond_0

    :try_start_1
    aget-object v9, v6, v3

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v8, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWifiAssociateApps(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v2, 0x0

    :goto_0
    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    aget-object v6, v9, v2

    const/4 v0, 0x0

    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v4

    const/4 v3, 0x1

    :goto_1
    array-length v9, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v9, :cond_0

    :try_start_1
    aget-object v9, v6, v3

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v8, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sortInNormalStatus()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public sortInWarningStatus()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public turnToNormalStatus()V
    .locals 5

    const-string/jumbo v2, "NetworkManagerUtils"

    const-string/jumbo v3, "turnToNormalStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setWifiAssociateApps(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "data_normal_app_whitelist"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setDataAssociateApps(Landroid/content/Context;)V

    return-void
.end method
