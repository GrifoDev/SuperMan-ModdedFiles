.class public Lcn/com/xy/sms/util/ParseBubbleManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/ParseBubbleManager;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/util/ParseBubbleManager;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/ParseBubbleManager;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 2

    invoke-static/range {p0 .. p5}, Lcn/com/xy/sms/util/ParseBubbleManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    sget-object v0, Lcn/com/xy/sms/util/ParseBubbleManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/util/c;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/com/xy/sms/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/x;->c(Ljava/lang/String;)V

    if-nez p0, :cond_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/util/ParseBubbleManager;->b:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v0, 0xc8

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->beforeHandParseReceiveSms(II)V

    goto :goto_0
.end method

.method public static addEffectiveBubbleData(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :cond_2
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

.method public static addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 12

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    invoke-static/range {v1 .. v9}, Lcn/com/xy/sms/util/ParseBubbleManager;->parseMsgToSimpleBubbleResultKuai(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    move-object v0, v10

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "querySimpleDataFromApi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearAllCache(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcn/com/xy/sms/util/ParseBubbleManager;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static clearCacheBubbleData(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/com/xy/sms/util/ParseBubbleManager;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static deleteBubbleData(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteDataByPhoneNum(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/util/x;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    return v0
.end method

.method public static deleteBubbleData(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/util/d;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/util/d;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteBubbleData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static deleteBubbleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-static {p1, p0}, Lcn/com/xy/sms/util/ParseBubbleManager;->deleteBubbleDataFromCache(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->deleteBubbleDataFromCache(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteBubbleData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static deleteBubbleDataFromCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/x;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public static equalPhoneNum(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lcn/com/xy/sms/util/ParseBubbleManager;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/util/ParseBubbleManager;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getParseStatu(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v0, "parseStatu"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1
.end method

.method public static loadBubbleDataByPhoneNum(Ljava/lang/String;Z)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcn/com/xy/sms/util/a;->a()V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phoneNum=?"

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v3

    iget-object v4, v3, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->clearCacheBubbleData(Ljava/lang/String;)V

    sput-object v0, Lcn/com/xy/sms/util/ParseBubbleManager;->b:Ljava/lang/String;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v4, "save_time desc"

    const-string/jumbo v5, "15"

    invoke-static {v1, v2, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-static {v1, v2, p1, v3, v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->loadBubbleDataByPhoneNumSecond(Ljava/lang/String;[Ljava/lang/String;ZLcn/com/xy/sms/sdk/util/x;Ljava/lang/String;)V

    const/16 v1, 0x32

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v7}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->beforeHandParseReceiveSms(Ljava/lang/String;IIZ)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_0
    iget-object v5, v3, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    monitor-enter v5

    :try_start_1
    iget-object v6, v3, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1
    invoke-static {v0, v4, v7}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->pubBubbleData(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_1
.end method

.method public static loadBubbleDataByPhoneNumSecond(Ljava/lang/String;[Ljava/lang/String;ZLcn/com/xy/sms/sdk/util/x;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "save_time desc"

    const-string/jumbo v1, "500"

    invoke-static {p0, p1, v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->loadDataByParam(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    if-nez p2, :cond_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadBubbleDataByPhoneNumSecond: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p3, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v2, p3, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    invoke-static {p4, v0, v4}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->pubBubbleData(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_2
.end method

.method public static parseMsgToSimpleBubbleResultKuai(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v2, 0xb

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p8

    invoke-static {p0, p2, p3, p4, v0}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToBubble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcn/com/xy/sms/util/ParseBubbleManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/com/xy/sms/util/c;

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcn/com/xy/sms/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v7

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static queryDataByMsgItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lorg/json/JSONObject;
    .locals 11

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

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v3

    iget-object v1, v3, Lcn/com/xy/sms/sdk/util/x;->b:Ljava/util/Map;

    if-nez v1, :cond_6

    :cond_2
    if-eqz v0, :cond_7

    :cond_3
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    :cond_4
    move v1, v2

    move-object v9, v0

    :goto_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_d

    :goto_1
    return-object v9

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v3, Lcn/com/xy/sms/sdk/util/x;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    return-object v0

    :cond_7
    iget-object v1, v3, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v1, v3, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v0, v3, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "need_parse_simple"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "msg_num_md5"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    :cond_9
    const/4 v1, 0x3

    :goto_2
    iget-object v2, v3, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    goto :goto_0

    :cond_a
    if-eqz v1, :cond_9

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    if-eq p4, v1, :cond_b

    move v1, v2

    goto :goto_2

    :cond_b
    const-string/jumbo v1, "session_reuslt"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v3, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v1, 0x2

    goto :goto_2

    :cond_c
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "session_reuslt"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v3, Lcn/com/xy/sms/sdk/util/x;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryDataByMsgItem: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v3, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    iget-object v0, v3, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v3, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p5

    move v8, p4

    invoke-static/range {v1 .. v9}, Lcn/com/xy/sms/sdk/queue/BubbleTaskQueue;->addDataToQueue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryDataByMsgItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcn/com/xy/sms/util/SdkCallBack;Z)V
    .locals 13

    if-nez p0, :cond_1

    :cond_0
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

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/x;->b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/util/x;

    move-result-object v4

    iget-object v3, v4, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    if-nez v3, :cond_7

    :cond_2
    if-eqz v2, :cond_8

    :cond_3
    const/4 v3, 0x0

    if-eqz v2, :cond_9

    :cond_4
    move v2, v3

    :goto_0
    if-nez v2, :cond_d

    :cond_5
    iget-object v2, v4, Lcn/com/xy/sms/sdk/util/x;->e:Ljava/util/HashSet;

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

    :cond_6
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

    :cond_7
    iget-object v2, v4, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

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

    :cond_8
    iget-object v3, v4, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " invalidBubbleData "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_9
    iget-object v2, v4, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    const-string/jumbo v5, "need_parse_simple"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v3, "msg_num_md5"

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    :cond_a
    const/4 v2, 0x3

    :goto_1
    iget-object v3, v4, Lcn/com/xy/sms/sdk/util/x;->a:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    if-eqz v3, :cond_a

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_0
    const-string/jumbo v3, "session_reuslt"

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-nez v2, :cond_c

    iget-object v2, v4, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    goto :goto_1

    :cond_c
    iget-object v3, v4, Lcn/com/xy/sms/sdk/util/x;->c:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const/4 v2, 0x2

    aput-object p0, v3, v2

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    iget-object v3, v4, Lcn/com/xy/sms/sdk/util/x;->d:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    const-string/jumbo v5, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryDataByMsgItem: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_1

    :cond_d
    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " invalidBubbleData "

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

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v5, " need parse"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    sget-object v2, Lcn/com/xy/sms/util/ParseBubbleManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/com/xy/sms/util/b;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v3 .. v12}, Lcn/com/xy/sms/util/b;-><init>(Lcn/com/xy/sms/sdk/util/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
