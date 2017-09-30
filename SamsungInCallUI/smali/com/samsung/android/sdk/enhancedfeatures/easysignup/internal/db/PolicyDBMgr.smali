.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;
.super Ljava/lang/Object;


# static fields
.field public static final FEATURE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTable()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper;

    move-result-object v0

    const-string v1, "policy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper;->clearTable(Ljava/lang/String;)V

    return-void
.end method

.method private static containsKey(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "sid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "sid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    :goto_1
    const-string v2, "containsKey cursor not null "

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contains Key1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    move v0, v6

    goto :goto_2

    :cond_2
    move-object v1, v7

    goto :goto_0
.end method

.method private static initPolicyDb(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "cannot get DbHandler instance. fail initPolicyDb"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isCoreAppsAgent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "sid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getServiceId(Landroid/content/Context;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "sid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removePolicy(I)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static sendPolicyChangedBroadcast()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_POLICY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "sendBroadcastcom.samsung.android.coreapps.easysignup.ACTION_POLICY_CHANGED"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setPolicies([Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v12, 0x1

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;

    monitor-enter v2

    :try_start_0
    const-string v1, "policy_set_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p0, :cond_1

    const-string v0, "Wrong Supported Service is received, ignore."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->initPolicyDb(Landroid/content/Context;)V

    array-length v4, p0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_6

    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->getServiceId()I

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->getFeature()I

    move-result v7

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->getConfigurationDocument()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPolicies - sid :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", feature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", config : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v7, v12, :cond_5

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "sid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "config"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "coreapps_configuration_sid_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->getServiceId()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "sid=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-virtual {v5, v8, v7, v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "sid=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->sendPolicyChangedBroadcast()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isCoreAppsAgent(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_3
    const/4 v3, 0x3

    if-gt v0, v3, :cond_9

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v3

    if-gez v3, :cond_7

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v3

    if-ne v3, v12, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getServiceId(Landroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_9

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v3

    if-gez v3, :cond_9

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v3

    if-ne v3, v12, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->serviceOff(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static updatePolicy(I)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "sid"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
