.class public Lcn/com/xy/sms/util/ParseRichBubbleManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:J

.field private static b:J

.field private static c:Ljava/util/concurrent/ExecutorService;

.field public static isBusy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/ParseRichBubbleManager;->isBusy:Z

    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcn/com/xy/sms/util/ParseRichBubbleManager;->a:J

    const-wide/32 v0, 0x4d3f6400

    sput-wide v0, Lcn/com/xy/sms/util/ParseRichBubbleManager;->b:J

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/ParseRichBubbleManager;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEffectiveBubbleData(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "msg_num_md5"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    const-string/jumbo v0, "viewPartParam"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    :try_start_7
    const-string/jumbo v0, "msg_num_md5"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_8
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addEffectiveBubbleData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addEffectiveBubbleData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearCacheBubbleData(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    return-void
.end method

.method public static deleteBubbleDataFromCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/x;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcn/com/xy/sms/sdk/util/x;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void
.end method

.method public static loadBubbleDataByPhoneNum(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->clearCacheBubbleData(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "phoneNum=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseMsgToSimpleBubbleResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "B",
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

    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static {v8}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2, p3, p4, p6}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToBubble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eq p5, v7, :cond_2

    if-nez v1, :cond_5

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    return-object v2

    :cond_2
    const-wide/16 v4, 0x0

    invoke-static {p2, p4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "CACHE_SDK_MSG_ID"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "CACHE_SDK_MSG_RESULT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "msg_num_md5"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/4 v0, 0x2

    const-string/jumbo v4, "phonenum"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "msg_id"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object p1, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, "session_reuslt"

    aput-object v4, v3, v0

    const/4 v4, 0x7

    if-eqz v1, :cond_4

    move-object v0, v1

    :goto_2
    aput-object v0, v3, v4

    const/16 v0, 0x8

    const-string/jumbo v4, "save_time"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string/jumbo v4, "session_lasttime"

    aput-object v4, v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0, v7}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    move-result-wide v4

    goto :goto_1

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "CACHE_SDK_MSG_RESULT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static pubBubbleData(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    monitor-enter v1

    if-nez p2, :cond_0

    :goto_0
    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "duoqu_xiaoyuan"

    const-string/jumbo v2, "pubBubbleData data size is null "

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/x;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v0, "duoqu_xiaoyuan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pubBubbleData data size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static queryBubbleDataFromApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->parseSmsToBubbleResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZLjava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v1, "BUBBLE_JSON_RESULT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static queryBubbleDataFromDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getDataByParam(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    const-string/jumbo v0, "msg_num_md5"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1
.end method

.method public static queryDataByMsgItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lorg/json/JSONObject;
    .locals 9

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "msgid or phoneNum or smsContent is null but they need value."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_5

    if-eqz v0, :cond_6

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    :cond_3
    move-object v8, v0

    move v0, v2

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    :goto_1
    return-object v8

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    return-object v0

    :cond_6
    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_7
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "msg_num_md5"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v1, 0x3

    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_2
    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v0

    move v0, v1

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_8

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    if-eq p4, v1, :cond_b

    :cond_a
    move v1, v2

    goto :goto_2

    :cond_b
    const-string/jumbo v1, "bubble_result"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    const-string/jumbo v3, "bubble_lasttime"

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const/16 v1, 0x17

    sget-wide v6, Lcn/com/xy/sms/util/ParseRichBubbleManager;->a:J

    invoke-static {v1, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_a

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v1, 0x2

    goto :goto_2

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const/16 v3, 0x16

    sget-wide v6, Lcn/com/xy/sms/util/ParseRichBubbleManager;->b:J

    invoke-static {v3, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_d

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_a

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryDataByMsgItem: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v8}, Lcn/com/xy/sms/sdk/queue/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryDataByMsgItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcn/com/xy/sms/util/SdkCallBack;ZLjava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "msgid or phoneNum or smsContent is null but they need value."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_6

    if-eqz v2, :cond_7

    :cond_2
    const/4 v5, 0x0

    if-eqz v2, :cond_8

    :cond_3
    :goto_0
    if-nez v5, :cond_d

    :cond_4
    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz p8, :cond_f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " is scrolling"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "phonenum is null"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_6
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p0, v3, v2

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_7
    sget-object v3, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " invalidBubbleData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_8
    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    const-string/jumbo v3, "need_parse_bubble"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v4, 0x3

    const-string/jumbo v3, "msg_num_md5"

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    :cond_9
    const/4 v2, 0x3

    :goto_1
    sget-object v3, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v2

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_9

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    move/from16 v0, p6

    if-eq v0, v3, :cond_b

    move v2, v4

    goto :goto_1

    :cond_b
    :try_start_0
    const-string/jumbo v3, "bubble_result"

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_c

    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v2, 0x2

    goto :goto_1

    :cond_c
    sget-object v3, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p0, v3, v2

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryDataByMsgItem: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    const/4 v2, 0x3

    if-eq v5, v2, :cond_4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " invalidBubbleData dataStatu: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_e
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " inQueueBubbleData2 "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_f
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " need parse "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    sget-object v2, Lcn/com/xy/sms/util/ParseRichBubbleManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/com/xy/sms/util/r;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p7

    move-object/from16 v11, p5

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcn/com/xy/sms/util/r;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
