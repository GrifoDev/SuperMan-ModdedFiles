.class public final Lcn/com/xy/sms/util/a;
.super Ljava/lang/Thread;
.source "Unknown"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Z

.field private static j:J


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    sput-boolean v1, Lcn/com/xy/sms/util/a;->b:Z

    sput-boolean v1, Lcn/com/xy/sms/util/a;->c:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/com/xy/sms/util/a;->j:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    iput v0, p0, Lcn/com/xy/sms/util/a;->h:I

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->i:Z

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    iput v0, p0, Lcn/com/xy/sms/util/a;->h:I

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->i:Z

    iput-boolean p1, p0, Lcn/com/xy/sms/util/a;->d:Z

    iput-object p2, p0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    iput p3, p0, Lcn/com/xy/sms/util/a;->f:I

    iput p4, p0, Lcn/com/xy/sms/util/a;->g:I

    iput-boolean p5, p0, Lcn/com/xy/sms/util/a;->i:Z

    const-string/jumbo v0, "before_parse_thread"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/util/a;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ZLjava/lang/String;IIZ)V
    .locals 6

    new-instance v0, Lcn/com/xy/sms/util/a;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/util/a;-><init>(ZLjava/lang/String;IIZ)V

    invoke-virtual {v0}, Lcn/com/xy/sms/util/a;->start()V

    return-void
.end method

.method private static b()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Lcn/com/xy/sms/util/a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x1e

    if-gt v0, v2, :cond_3

    sget-boolean v2, Lcn/com/xy/sms/sdk/util/e;->a:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    if-nez v2, :cond_0

    return v4

    :cond_2
    sget-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    if-nez v2, :cond_1

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getRunPower: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3
    return v1
.end method

.method private c()V
    .locals 15

    :goto_0
    sget-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-wide v0, Lcn/com/xy/sms/util/a;->j:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->findObjectByPhone(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    add-long v4, v0, v2

    :cond_3
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iget v6, p0, Lcn/com/xy/sms/util/a;->f:I

    invoke-virtual/range {v0 .. v6}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getReceiveMsgByReceiveTime(Ljava/lang/String;JJI)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_7

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "BEFORE_HAND_PARSE_SMS_TIME"

    const-wide/16 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v4

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "maxReceiveTime"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_7
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    move v12, v0

    move-wide v6, v4

    :goto_2
    if-ge v12, v14, :cond_13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo v0, "smsReceiveTime"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_b

    move-wide v10, v4

    :goto_4
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "isSafeVerifyCode"

    const-string/jumbo v0, "isSafeVerifyCode"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "msgId"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "phone"

    invoke-static {v3, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "msg"

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "centerNum"

    invoke-static {v3, v6}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v6, p0, Lcn/com/xy/sms/util/a;->g:I

    iget-boolean v7, p0, Lcn/com/xy/sms/util/a;->d:Z

    iget-boolean v8, p0, Lcn/com/xy/sms/util/a;->i:Z

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->parseSmsToBubbleResultMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZLjava/util/Map;)Ljava/util/Map;

    add-int/lit8 v0, v12, 0x1

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_c

    :goto_5
    sget-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    if-eqz v0, :cond_e

    :cond_8
    :goto_6
    iget-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    if-nez v0, :cond_f

    :goto_7
    iget v0, p0, Lcn/com/xy/sms/util/a;->h:I

    add-int/2addr v0, v14

    iput v0, p0, Lcn/com/xy/sms/util/a;->h:I

    sget-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    if-eqz v0, :cond_12

    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    move-wide v10, v6

    goto :goto_4

    :cond_c
    iget-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    if-nez v0, :cond_d

    :goto_8
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/a;->sleep(J)V

    goto :goto_5

    :cond_d
    const-string/jumbo v0, "BEFORE_HAND_PARSE_SMS_TIME"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_8

    :cond_e
    sget-wide v0, Lcn/com/xy/sms/util/a;->j:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    move-wide v6, v10

    goto/16 :goto_2

    :cond_f
    if-eq v12, v14, :cond_11

    :cond_10
    const-string/jumbo v0, "BEFORE_HAND_PARSE_SMS_TIME"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_7

    :cond_11
    rem-int/lit8 v0, v14, 0xa

    if-nez v0, :cond_10

    goto :goto_7

    :cond_12
    iget-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcn/com/xy/sms/util/a;->h:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcn/com/xy/sms/util/a;->f:I

    if-lt v14, v0, :cond_9

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/a;->sleep(J)V

    goto/16 :goto_0

    :cond_13
    move-wide v10, v6

    goto :goto_6
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    sget-boolean v0, Lcn/com/xy/sms/util/a;->c:Z

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/util/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    sget-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sput-wide v2, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-direct {p0}, Lcn/com/xy/sms/util/a;->c()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_5
    sput-boolean v0, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_6
    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catch_0
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_9
    sput-boolean v0, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    return-void

    :cond_1
    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_a
    sput-boolean v0, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_c
    sput-boolean v0, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1

    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_e
    sput-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method
