.class public Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;
.super Landroid/app/TabActivity;
.source "NetworkManagerActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static mApplicationNetInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mDataBackupWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsCurrentSlotWarning:Z

.field public static mIsNeedReLoad:Z

.field public static mIsWarningStatus:Z

.field public static mSlotIndex:I

.field public static mSubId:I

.field public static mSubscriberId:Ljava/lang/String;

.field public static mUidDataLongTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidWifiLongTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidWifiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWarningWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mWhiteList:[Ljava/lang/String;


# instance fields
.field private mBackgroundApp_endTime:J

.field private mBackgroundApp_startTime:J

.field private mContext:Landroid/content/Context;

.field private mCurrentTab:Ljava/lang/String;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSharedpre:Landroid/content/SharedPreferences;

.field private mTabHost:Landroid/widget/TabHost;

.field private mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    sput-boolean v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    sput-boolean v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    sput-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.contacts"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.stk"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.stk2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mCurrentTab:Ljava/lang/String;

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mBackgroundApp_startTime:J

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mBackgroundApp_endTime:J

    return-void
.end method

.method private checkWarningStatus()V
    .locals 13

    new-instance v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getTotalUsedData()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getActiveSubId()I

    move-result v1

    const/4 v0, 0x0

    const-string/jumbo v2, "max"

    const-string/jumbo v9, "off"

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set_data_limit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "max"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data_warning_set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "off"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data_warning_whitelist_enable_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "switch_traffic_settings"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v2, :cond_0

    const-string/jumbo v2, "max"

    :cond_0
    if-nez v9, :cond_1

    const-string/jumbo v9, "off"

    :cond_1
    const-string/jumbo v10, "off"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    return-void

    :cond_3
    if-eqz v4, :cond_2

    const-string/jumbo v10, "max"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/high16 v8, -0x40800000    # -1.0f

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/high16 v11, 0x44800000    # 1024.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    mul-float/2addr v10, v11

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v10, v11

    :goto_0
    long-to-float v10, v6

    cmpl-float v10, v10, v8

    if-ltz v10, :cond_4

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    const/4 v10, 0x1

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    sget v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    if-ne v1, v10, :cond_5

    const/4 v10, 0x1

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    goto :goto_1
.end method

.method private getActiveSubId()I
    .locals 2

    sget v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    :cond_0
    sget v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    return v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupNormalTab()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.datausage.networkconnect.NetworkConnectActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "subscriberId"

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "subId"

    sget v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "normal"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0c37

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private setupWarningTab()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.datausage.networkconnect.DataWarningLimitActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "subscriberId"

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "subId"

    sget v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "warning"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0c38

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iput-object p0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    if-eq v1, v3, :cond_0

    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    sget v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getSubscriptionId(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    :cond_0
    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    if-ne v1, v3, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->setupNormalTab()V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->setupWarningTab()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v2, "normal"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    new-instance v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_app_whitelist_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    const-string/jumbo v3, "data_normal_app_whitelist"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->checkWarningStatus()V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
