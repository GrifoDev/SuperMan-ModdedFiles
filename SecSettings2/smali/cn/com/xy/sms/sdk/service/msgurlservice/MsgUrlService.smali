.class public Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final RESULT_BLACK_LIST:I = -0x1

.field public static final RESULT_ERROR_PARA:I = -0x4

.field public static final RESULT_NOT_IMPL:I = -0x3e7

.field public static final RESULT_NOT_YUMING:I = 0x1

.field public static final RESULT_NO_NET:I = 0x195

.field public static final RESULT_SERVER_ERROR:I = 0x194

.field public static final RESULT_THIRD_MIN_LEVLE:I = -0x1

.field public static final RESULT_TOKEN_FLASH:I = 0x193

.field public static final RESULT_WHITE_LIST:I = 0x2

.field private static a:Z

.field public static pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->pool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v2, -0x4

    const/4 v6, 0x0

    const/4 v10, -0x1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;I)I

    move-result v8

    :try_start_0
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "_ARR_"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-nez v9, :cond_3

    :cond_0
    if-ne v8, v10, :cond_5

    :goto_0
    return v2

    :cond_1
    if-ne v8, v10, :cond_2

    :goto_1
    return v2

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_1

    :cond_3
    :try_start_1
    array-length v0, v9

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "arr.length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_6

    move v5, v6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v9

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->queryLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "localfind"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v5, :cond_9

    if-eq v8, v10, :cond_b

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v9

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->checkValidUrlNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;ZLjava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v8, v10, :cond_e

    :cond_4
    :goto_3
    invoke-virtual {v7, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_5
    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    :try_start_2
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u672c\u5730\u67e5\u8be2\u5230 result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-ne v8, v10, :cond_8

    :goto_4
    return v0

    :cond_8
    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_4

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v9

    move-object v5, p4

    :try_start_3
    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->thirdValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateCheckStatu(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v8, v10, :cond_a

    :goto_5
    return v0

    :cond_a
    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_5

    :cond_b
    if-ne v8, v10, :cond_c

    :goto_6
    const/16 v0, 0x195

    return v0

    :cond_c
    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_6

    :catch_0
    move-exception v0

    if-eq v8, v10, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-ne v8, v10, :cond_d

    :goto_7
    throw v0

    :cond_d
    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_7

    :cond_e
    invoke-static {}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->updateCheckValidUrl()V

    goto :goto_3
.end method

.method public static checkValidUrlNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;ZLjava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p4}, Lcn/com/xy/sms/sdk/net/util/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p5}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    new-instance v2, Lcn/com/xy/sms/sdk/service/msgurlservice/b;

    invoke-direct {v2, p5, p7, p3, p6}, Lcn/com/xy/sms/sdk/service/msgurlservice/b;-><init>(Ljava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Z)V

    const-string/jumbo v0, "URLValidity"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p6

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkValidUrlNet: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static checkValidUrlNetBatch(Lorg/json/JSONArray;Z)V
    .locals 7

    if-nez p0, :cond_1

    :cond_0
    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    new-instance v2, Lcn/com/xy/sms/sdk/service/msgurlservice/f;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/service/msgurlservice/f;-><init>()V

    const-string/jumbo v0, "URLValidity"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkValidUrlNetBatch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_5
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_6
    sput-boolean v2, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static executeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getVailResult(Lorg/json/JSONArray;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    const/16 v0, 0x194

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7fffffff

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "validStatus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_2

    :goto_1
    if-ltz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    return v0

    :cond_4
    return v1
.end method

.method public static pickUrlFromMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->catchUrls(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/com/xy/sms/sdk/service/msgurlservice/a;

    invoke-direct {v1, v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static queryLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    array-length v0, p4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-static {p4, p5}, Lcn/com/xy/sms/sdk/db/entity/h;->a([Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v0, "statu"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v0, "hasNotCheck"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p5, :cond_5

    if-ltz v3, :cond_6

    :cond_0
    move v8, v0

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->checkValidUrlNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;ZLjava/util/HashMap;)V

    if-nez v8, :cond_7

    :cond_1
    return-object v9

    :cond_2
    invoke-static {p3, p5}, Lcn/com/xy/sms/sdk/db/entity/h;->a(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "result"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "localfind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "result"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "localfind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_5
    if-gez v3, :cond_0

    :cond_6
    const/4 v0, 0x1

    move v8, v0

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "result"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "localfind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9
.end method

.method public static saveLeft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/msgurlservice/d;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public static saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;I)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/h;->a(Lorg/json/JSONArray;)V

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->updateCheckStatu(Ljava/lang/String;I)V

    return-void
.end method

.method public static saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;IZ)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p3, :cond_2

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;

    invoke-direct {v0, p0, p1, p2}, Lcn/com/xy/sms/sdk/service/msgurlservice/c;-><init>(Lorg/json/JSONArray;Ljava/lang/String;I)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static thirdValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    array-length v2, p4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move v6, v0

    move v7, v8

    move v9, v1

    :goto_0
    :try_start_0
    array-length v0, p4

    if-ge v6, v0, :cond_9

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    aget-object v4, p4, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    aget-object v1, p4, v6

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/entity/h;->a(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v9, :cond_1

    move v1, v9

    :goto_1
    if-ltz v0, :cond_2

    add-int/lit8 v0, v6, 0x1

    move v7, v6

    move v9, v1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/db/entity/h;->a(Ljava/lang/String;I)J

    return v0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    if-gez v6, :cond_4

    :cond_3
    :goto_2
    return v8

    :cond_4
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_3

    invoke-static {p0, p1, p2, p4, p5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveLeft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :catch_0
    move-exception v0

    if-gez v7, :cond_6

    :cond_5
    :goto_3
    return v9

    :cond_6
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_5

    invoke-static {p0, p1, p2, p4, p5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveLeft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-gez v7, :cond_8

    :cond_7
    :goto_4
    throw v0

    :cond_8
    array-length v1, p4

    add-int/lit8 v1, v1, -0x1

    if-ge v7, v1, :cond_7

    invoke-static {p0, p1, p2, p4, p5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveLeft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    :cond_9
    if-ltz v7, :cond_5

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_5

    invoke-static {p0, p1, p2, p4, p5}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveLeft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3
.end method

.method public static declared-synchronized updateCheckValidUrl()V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a:Z

    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/e;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/e;-><init>()V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->executeRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
