.class public Lcn/com/xy/sms/util/ParseManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final UPDATE_ICCID_INFO_CACHE_ACTION:Ljava/lang/String; = "cn.com.xy.sms.iccidinfo.action"

.field private static final a:Ljava/lang/String; = "yyyyMMdd"

.field private static b:Ljava/util/concurrent/ExecutorService; = null

.field private static final c:J = 0x240c8400L

.field public static checkDataForUpdateTime:J

.field private static d:Z

.field private static e:Landroid/content/BroadcastReceiver;

.field private static f:J

.field private static g:Ljava/lang/String;

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/concurrent/ExecutorService;

.field public static isCheckDataForUpdate:Z

.field public static isupdateData:Z

.field public static mins:J

.field public static updateDataTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/ParseManager;->b:Ljava/util/concurrent/ExecutorService;

    sput-boolean v1, Lcn/com/xy/sms/util/ParseManager;->d:Z

    sput-object v5, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    sput-wide v2, Lcn/com/xy/sms/util/ParseManager;->f:J

    sput-object v5, Lcn/com/xy/sms/util/ParseManager;->g:Ljava/lang/String;

    sput-boolean v1, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    sput-wide v2, Lcn/com/xy/sms/util/ParseManager;->checkDataForUpdateTime:J

    sput-boolean v1, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    sput-wide v2, Lcn/com/xy/sms/util/ParseManager;->updateDataTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/ParseManager;->i:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcn/com/xy/sms/util/ParseManager;->mins:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-static/range {p0 .. p7}, Lcn/com/xy/sms/util/ParseManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
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

    const-class v5, Lcn/com/xy/sms/util/ParseManager;

    monitor-enter v5

    if-eqz p0, :cond_4

    if-eqz p1, :cond_5

    if-eqz p3, :cond_6

    const/4 v2, 0x0

    if-eqz p6, :cond_7

    :goto_0
    :try_start_0
    const-string/jumbo v3, "ALLOW_VERCODE_MSG"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    const-string/jumbo v3, "ALLOW_PERSONAL_MSG"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_0
    :goto_2
    const-string/jumbo v3, "version"

    invoke-static {}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getSceneVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "channel"

    const-string/jumbo v4, "CHANNEL"

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "smsCenterNum"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/com/xy/sms/util/ParseManager;->g:Ljava/lang/String;

    if-eqz v3, :cond_a

    :goto_3
    sget-object v3, Lcn/com/xy/sms/util/ParseManager;->g:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_4
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "RECOGNIZE_LEVEL"

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    :goto_5
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "parseUtilMain"

    const-string/jumbo v7, "jar"

    invoke-static {v3, v4, v7}, Lcn/com/xy/sms/sdk/util/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_1
    move-object v4, v2

    :goto_6
    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v8, Lcn/com/xy/sms/util/ParseManager;->f:J

    const/4 v7, 0x7

    const-wide/32 v10, 0x927c0

    invoke-static {v7, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v2, v2, v8

    if-gez v2, :cond_12

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_2

    new-instance v2, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v3, 0x2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcn/com/xy/sms/util/ParseManager;->f:J

    :cond_2
    if-nez v4, :cond_13

    :cond_3
    :goto_8
    new-instance v2, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v3, 0x9

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "num"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "msg"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "cnum"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p2, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "smsTime"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v2, v3, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    new-instance v2, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v3, 0xa

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "num"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "msg"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    const/4 v6, 0x4

    const-string/jumbo v8, "cnum"

    aput-object v8, v7, v6

    const/4 v6, 0x5

    aput-object p2, v7, v6

    const/4 v6, 0x6

    const-string/jumbo v8, "smsTime"

    aput-object v8, v7, v6

    const/4 v6, 0x7

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v2, v3, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    new-instance v2, Lcn/com/xy/sms/util/j;

    invoke-direct {v2, v4, p0}, Lcn/com/xy/sms/util/j;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, " Context is null."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, " phoneNumber is null."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, " smsContent is null."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance p6, Ljava/util/HashMap;

    invoke-direct/range {p6 .. p6}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "ALLOW_VERCODE_MSG"

    const-string/jumbo v4, "true"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ALLOW_PERSONAL_MSG"

    const-string/jumbo v4, "false"

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getProvince()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/com/xy/sms/util/ParseManager;->g:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v3, "provice"

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->g:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v4, "RECOGNIZE_LEVEL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getJarPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/net/util/o;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "parseVerifyCode"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p6

    invoke-static {p1, v6, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseMsgToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    :goto_9
    if-eqz v3, :cond_f

    :goto_a
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v7, 0xe

    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v9, "phoneNumber"

    aput-object v9, v8, v2

    const/4 v2, 0x1

    aput-object p1, v8, v2

    const/4 v2, 0x2

    const-string/jumbo v9, "isSuccess"

    aput-object v9, v8, v2

    const/4 v9, 0x3

    if-nez v3, :cond_10

    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-direct {v4, v7, v8}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    move-object v4, v3

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p6

    invoke-static {p1, v6, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->parseVerifyCodeToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_9

    :cond_f
    const-string/jumbo v4, "parseMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "result is null phoneNumber:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " smsContent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " msgID: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v2, "msgId"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v4, v2, v7}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_10
    const/4 v2, 0x1

    goto :goto_b

    :cond_11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "parseStatu"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_13
    :try_start_3
    const-string/jumbo v2, "simIndex"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :goto_c
    const-string/jumbo v2, "msgTime"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_d
    const-string/jumbo v2, "title_num"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    :goto_e
    const-string/jumbo v2, "pickUrl"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, ""

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-static {v2, p1, v6, v3, v0}, Lcn/com/xy/sms/util/ParseMsgUrlManager;->pickUrlFromMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "url"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_14
    const-string/jumbo v3, "simIndex"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_15
    const-string/jumbo v2, "msgTime"

    const-string/jumbo v3, "msgTime"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_16
    const-string/jumbo v3, "simIccid"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    :goto_f
    new-instance v3, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v7, 0x6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "titleNo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-direct {v3, v7, v8}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    new-instance v3, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v7, 0x3

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "titleNo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-direct {v3, v7, v8}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    new-instance v3, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v7, 0x8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "titleNo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-direct {v3, v7, v8}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    new-instance v3, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v7, 0x5

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "titleNo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v2, 0x2

    const-string/jumbo v9, "type"

    aput-object v9, v8, v2

    const/4 v2, 0x3

    const-string/jumbo v9, "0"

    aput-object v9, v8, v2

    invoke-direct {v3, v7, v8}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    goto/16 :goto_e

    :cond_17
    new-instance v7, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v8, 0x1

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "simIccid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v3, 0x2

    const-string/jumbo v10, "receiveNum"

    aput-object v10, v9, v3

    const/4 v3, 0x3

    aput-object p1, v9, v3

    const/4 v3, 0x4

    const-string/jumbo v10, "sms"

    aput-object v10, v9, v3

    const/4 v3, 0x5

    aput-object v6, v9, v3

    const/4 v3, 0x6

    const-string/jumbo v10, "centerNum"

    aput-object v10, v9, v3

    const/4 v3, 0x7

    aput-object p2, v9, v3

    const/16 v3, 0x8

    const-string/jumbo v10, "sceneId"

    aput-object v10, v9, v3

    const/16 v3, 0x9

    aput-object v2, v9, v3

    invoke-direct {v7, v8, v9}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v7}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_f
.end method

.method private static a(ZJLjava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "isValidCodeSms"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "validTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "parseResult"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    aget-object v0, v3, v2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->queryTrainInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v7

    :cond_2
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_6

    aget-object v0, v3, v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->queryTrainInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v0, "station_list"

    invoke-static {v5, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_5
    invoke-static {v0, p1, p2, v2}, Lcn/com/xy/sms/util/ParseManager;->checkStationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v5

    :cond_6
    return-object v7
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/com/xy/sms/util/i;

    invoke-direct {v0}, Lcn/com/xy/sms/util/i;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "cn.com.xy.sms.iccidinfo.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "initSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerReceiver error "

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

.method private static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcn/com/xy/sms/util/j;

    invoke-direct {v0, p1, p0}, Lcn/com/xy/sms/util/j;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 6

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->queryTrainInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "data_time"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_8

    :goto_1
    if-nez v1, :cond_9

    :goto_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    :cond_2
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {p4, p0, v0, p2, p3}, Lcn/com/xy/sms/sdk/db/TrainManager;->checkDataOnline(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->queryTrainInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "station_list"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    invoke-static {v0, p2, p3, v5}, Lcn/com/xy/sms/util/ParseManager;->checkStationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_5

    :cond_8
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    goto :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const/16 v0, 0x15

    const-wide/32 v4, 0x240c8400

    invoke-static {v0, v4, v5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_d

    :cond_a
    :try_start_2
    const-string/jumbo v0, "station_list"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_e

    :goto_8
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_2

    :cond_e
    :try_start_3
    const-string/jumbo v2, "station_list"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryTrainInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "offNetwork"

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_10
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_9
    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-static {p4, p0, v3, p2, p3}, Lcn/com/xy/sms/sdk/db/TrainManager;->checkDataOnline(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_9

    :cond_12
    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private static a(J)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p0

    const/16 v0, 0x15

    const-wide/32 v6, 0x240c8400

    invoke-static {v0, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static addQueryTrafficAndChargeToMenuData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addViewVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "bubbleViewVersion"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v2, "bubbleViewVersion"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcn/com/xy/sms/sdk/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    if-nez p7, :cond_5

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p7, :cond_2

    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p4, p5, p6}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->createBitmapByPath2(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez p7, :cond_4

    :goto_2
    if-eqz v0, :cond_0

    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 6

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->queryTrainInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "data_time"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_8

    :goto_1
    if-nez v1, :cond_9

    :goto_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    :cond_2
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {p4, p0, v0, p2, p3}, Lcn/com/xy/sms/sdk/db/TrainManager;->checkDataOnline(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->queryTrainInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "station_list"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    invoke-static {v0, p2, p3, v5}, Lcn/com/xy/sms/util/ParseManager;->checkStationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_5

    :cond_8
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    goto :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const/16 v0, 0x15

    const-wide/32 v4, 0x240c8400

    invoke-static {v0, v4, v5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_d

    :cond_a
    :try_start_2
    const-string/jumbo v0, "station_list"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_e

    :goto_8
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_2

    :cond_e
    :try_start_3
    const-string/jumbo v2, "station_list"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryTrainInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "offNetwork"

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_10
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_9
    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-static {p4, p0, v3, p2, p3}, Lcn/com/xy/sms/sdk/db/TrainManager;->checkDataOnline(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_9

    :cond_12
    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public static checkDataForUpdate(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcn/com/xy/sms/util/ParseManager;->checkDataForUpdateTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    :cond_0
    sget-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcn/com/xy/sms/util/ParseManager;->checkDataForUpdateTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/g;->b(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sput-boolean v1, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "-2"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-boolean v1, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    return-void

    :cond_3
    :try_start_2
    const-string/jumbo v0, "-1"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkDataForUpdate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sput-boolean v1, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    return-void

    :cond_4
    :try_start_4
    const-string/jumbo v0, "0"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v1, Lcn/com/xy/sms/util/ParseManager;->isCheckDataForUpdate:Z

    throw v0

    :cond_5
    :try_start_5
    const-string/jumbo v0, "1"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static checkStationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_0
    return v4

    :cond_3
    return v4

    :cond_4
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_5
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_6
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eq v0, v5, :cond_2

    if-eq v1, v5, :cond_2

    if-ge v0, v1, :cond_2

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryTrainInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static clearHistorySmsByNum(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->removeBusinessMessageByNum(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public static deleteMatchCache(Ljava/lang/String;J)V
    .locals 5

    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteMatchCache(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteMatchCache: "

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

.method public static deleteMatchCache(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteMatchCache(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteMatchCache: "

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

.method public static doAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->doAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static executeQueryTrainInfoRunnable(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcn/com/xy/sms/util/ParseManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized findLogoByLogoName(Landroid/content/Context;Ljava/lang/String;IIILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    const-class v14, Lcn/com/xy/sms/util/ParseManager;

    monitor-enter v14

    const/4 v13, 0x0

    :try_start_0
    const-string/jumbo v4, "duoqu_publiclogo"

    invoke-static {v4}, Lcn/com/xy/sms/sdk/constant/Constant;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_b

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "http://down2.bizport.cn/publicnum/upload/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    if-nez p5, :cond_10

    :cond_1
    :goto_0
    if-eqz v4, :cond_11

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p6

    invoke-static/range {v5 .. v12}, Lcn/com/xy/sms/util/ParseManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    :goto_1
    :try_start_1
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_17

    :goto_2
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v6, 0xc

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "state"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "256"

    aput-object v9, v7, v8

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    return-object v5

    :cond_3
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "logoPath="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6587\u4ef6\u5b58\u5728\uff0cdecode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->createBitmapByPath2(Landroid/content/Context;Ljava/io/File;II)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    if-nez v5, :cond_5

    :try_start_3
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_9

    :goto_4
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    const/4 v4, 0x0

    monitor-exit v14

    return-object v4

    :cond_5
    const/4 v4, 0x1

    :try_start_5
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_7

    :goto_5
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    monitor-exit v14

    return-object v5

    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-gtz v4, :cond_8

    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_6

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-gtz v4, :cond_a

    const/4 v4, 0x1

    :goto_7
    if-nez v4, :cond_4

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    :cond_b
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x13

    sget-wide v16, Lcn/com/xy/sms/util/ParseManager;->mins:J

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v16

    add-long v4, v4, v16

    cmp-long v4, v10, v4

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    :goto_8
    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "logoPath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \u8fd8\u6ca1\u5230\u65f6\u95f4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_e

    :goto_9
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_c
    const/4 v4, 0x0

    monitor-exit v14

    return-object v4

    :cond_d
    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-gtz v4, :cond_f

    const/4 v4, 0x1

    :goto_a
    if-nez v4, :cond_c

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    goto :goto_a

    :cond_10
    :try_start_b
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "syn"

    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0

    :cond_11
    sget-object v15, Lcn/com/xy/sms/util/ParseManager;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcn/com/xy/sms/util/l;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcn/com/xy/sms/util/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v15, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v5, v13

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v5, v13

    :goto_b
    :try_start_c
    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_12

    :goto_c
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v14

    throw v4

    :cond_12
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-gtz v4, :cond_13

    const/4 v4, 0x1

    :goto_d
    if-nez v4, :cond_2

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    goto :goto_d

    :catchall_1
    move-exception v4

    move-object v5, v4

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_15

    :goto_e
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/ParseManager;->h:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    throw v5

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-gtz v4, :cond_16

    const/4 v4, 0x1

    :goto_f
    if-nez v4, :cond_14

    goto :goto_e

    :cond_16
    const/4 v4, 0x0

    goto :goto_f

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-gtz v4, :cond_18

    const/4 v4, 0x1

    :goto_10
    if-nez v4, :cond_2

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    goto :goto_10

    :catch_1
    move-exception v4

    goto/16 :goto_b
.end method

.method public static getAlgorithmVerion()Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHH"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAlgorithmVerion"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getBubbleViewVersion(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, "20151014"

    sget-object v1, Lcn/com/xy/sms/sdk/constant/Constant;->current_bubble_version:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "bubbleViewVersion"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sput-object v0, Lcn/com/xy/sms/sdk/constant/Constant;->current_bubble_version:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string/jumbo v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v3

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sput-object v0, Lcn/com/xy/sms/sdk/constant/Constant;->current_bubble_version:Ljava/lang/String;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "yyyyMMdd"

    invoke-static {v2, v1, v3}, Lcn/com/xy/sms/sdk/util/DateUtils;->compareDateString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcn/com/xy/sms/util/m;

    invoke-direct {v1, v2}, Lcn/com/xy/sms/util/m;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOperatorByNum(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorByNum(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getOperatorNumByPubNum(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/g;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getParseVersion(Landroid/content/Context;Ljava/util/Map;)I
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "PARSE_VERSION"

    invoke-static {p0, v0}, Lcn/com/xy/sms/util/SdkParamUtil;->getParamValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getParseVersion"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static initSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/constant/Constant;->initContext(Landroid/content/Context;)V

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getCurProcessName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcn/com/xy/sms/util/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/xy/sms/util/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V

    if-nez p5, :cond_4

    :cond_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "context is null,please check."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcn/com/xy/sms/util/i;

    invoke-direct {v0}, Lcn/com/xy/sms/util/i;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "cn.com.xy.sms.iccidinfo.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "initSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerReceiver error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "xiaoyuan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processName is not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v1, "SYNCHRONIZED"

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x7

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "parseUtilMain"

    const-string/jumbo v2, "jar"

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getJarPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static isInitData()Z
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v0

    return v0
.end method

.method public static isVerifyCodeSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p4, :cond_1

    move-object v6, p4

    :goto_0
    :try_start_0
    const-string/jumbo v0, "popup_type"

    const-string/jumbo v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "parseVerifyCode"

    const-string/jumbo v1, "true"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v8

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isVerifyCodeSms: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getSmsTypeByMap(Ljava/util/Map;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eq v0, v7, :cond_3

    return v8

    :cond_3
    return v7
.end method

.method public static ismUseNewDes()Z
    .locals 1

    sget-boolean v0, Lcn/com/xy/sms/util/ParseManager;->d:Z

    return v0
.end method

.method public static loadAllPubInfo(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static loadAllPubNum(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Ljava/util/Set;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static loadLocation(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    return-void
.end method

.method public static multiParse(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v0, 0xc

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->multiParse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static needUpdateJar()Z
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->f()Z

    move-result v0

    return v0
.end method

.method public static parseMsgCallBack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->backGroundHandleMapByType(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseMsgToBubble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {v9}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_2

    move-object v6, p4

    :goto_0
    const-string/jumbo v0, "popup_type"

    const-string/jumbo v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    return-object v7

    :cond_1
    return-object v7

    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "ADACTION"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v2, 0xc

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "state"

    aput-object v4, v3, v8

    const/4 v4, 0x1

    const-string/jumbo v5, "64"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    return-object v0
.end method

.method public static parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/util/Map;
    .locals 13
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseMsg time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v10

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcn/com/xy/sms/sdk/db/ParseItemManager;->execNqSql:Z

    if-nez v0, :cond_2

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lcn/com/xy/sms/sdk/util/PopupUtil;->parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "msgId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " parseMsgToBubbleCardResult power not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return-object v0

    :cond_1
    return-object v9

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ParseItemManager.execNqSql: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcn/com/xy/sms/sdk/db/ParseItemManager;->execNqSql:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_3

    :goto_1
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    const-string/jumbo v0, "parseStatu"

    const-string/jumbo v1, "-2"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cardResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parseMsgToMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    if-eqz p4, :cond_0

    move-object v6, p4

    :goto_0
    const-string/jumbo v0, "popup_type"

    const-string/jumbo v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parseMsgToMap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
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

    if-nez p4, :cond_1

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-nez p6, :cond_3

    :cond_2
    invoke-static {p0, p1, p3, p4}, Lcn/com/xy/sms/sdk/util/PopupUtil;->parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p5, :cond_5

    :cond_4
    :goto_1
    invoke-static {p6, p4}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->backGroundHandleMapByType(Ljava/util/Map;Ljava/util/Map;)V

    const-string/jumbo v0, "POPUP_SHOW_MASTER"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "1"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "2"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "01025"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "02044"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "03006"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "03015"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "04010"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "05035"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "08104"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "12003"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "13004"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "15003"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "16002"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string/jumbo v1, "17005"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string/jumbo v1, "00000"

    aput-object v1, v3, v0

    const-string/jumbo v0, "title_num"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0xd

    if-ge v2, v4, :cond_11

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "msgId"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "msgTime"

    invoke-interface {p6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->backGroundParseSmsBubble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/util/Map;)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, "title_num"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "POPUP_SHOW_LIFE"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_8
    const-string/jumbo v0, "POPUP_SHOW_BANK"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_9
    const-string/jumbo v0, "POPUP_SHOW_SP"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    if-nez p6, :cond_c

    :goto_4
    invoke-static {v1, p1, p3, v0, p0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    :cond_d
    if-nez p6, :cond_f

    :cond_e
    const/4 v0, 0x0

    if-nez p6, :cond_10

    :goto_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, p1, p3, v0, p0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "POPUP_SHOW_MASTER"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string/jumbo v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_5

    :cond_11
    move v0, v1

    goto :goto_3
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    if-eqz p5, :cond_4

    move-object v6, p5

    :goto_1
    const-string/jumbo v0, "popup_type"

    const-string/jumbo v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8c03\u7528parseMsg\u5f00\u59cb="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8c03\u7528parseMsg\u7ed3\u675f="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " Context is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " phoneNumber is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " smsContent is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method

.method public static parseMsgToRichAndSimpleBubble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;)Ljava/util/Map;
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lcn/com/xy/sms/sdk/util/PopupUtil;->parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cardResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseSmsToClassify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    const/4 v0, 0x6

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseSmsType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    const/4 v7, -0x1

    if-eqz p4, :cond_1

    move-object v6, p4

    :goto_0
    :try_start_0
    const-string/jumbo v0, "popup_type"

    const-string/jumbo v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v7

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v1

    if-eq v1, v7, :cond_0

    invoke-static {v0, p5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getSmsTypeByMap(Ljava/util/Map;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseSmsType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static parseValidCodeSms(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    move v0, v7

    :goto_0
    if-nez v0, :cond_3

    const-string/jumbo v0, "error:receiveTime <= 0"

    invoke-static {v8, v10, v11, v0}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "error:number is null or empty"

    invoke-static {v8, v10, v11, v0}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "error:smsBody is null or empty"

    invoke-static {v8, v10, v11, v0}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "popup_type"

    const-string/jumbo v1, "2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "parseVerifyCode"

    const-string/jumbo v1, "true"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    const-wide/16 v0, -0x1

    const-string/jumbo v2, "error:parse sms failure"

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static {v0}, Lcn/com/xy/sms/util/ParseBubbleManager;->getParseStatu(Ljava/util/Map;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getSmsTypeByMap(Ljava/util/Map;I)I

    move-result v1

    if-eq v1, v7, :cond_6

    const-wide/16 v0, -0x1

    const-string/jumbo v2, "not a valid code sms"

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_6
    const-string/jumbo v1, "smsReceiveTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handleValidTime(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    const-wide/16 v0, -0x1

    const-string/jumbo v2, "error:get valid time failure"

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_8
    const-string/jumbo v1, "validTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "validTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "validTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "succeed"

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseValidCodeSms: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v10, v11, v0}, Lcn/com/xy/sms/util/ParseManager;->a(ZJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static queryAllSimCardTrafficAndChargeActionData(Landroid/content/Context;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getIccidAreaCodeMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v5, Lcn/com/xy/sms/util/h;

    invoke-direct {v5, p2, v3}, Lcn/com/xy/sms/util/h;-><init>(Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/ParseManager;->queryMenuByPhoneNum(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryAllSimCardTrafficAndChargeActionData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-interface {p2, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "iccidMap is null"

    aput-object v2, v0, v1

    invoke-interface {p2, v0}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_1
    return-void
.end method

.method public static queryDefService(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "defService"

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryFlightData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {p2 .. p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "flight_form"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v1, "flight_to"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v1, "flight_from_airport"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v1, "flight_to_airport"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v1, "phoneNumber"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v1, "titleNo"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v1, "msgId"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v1, "bubbleJsonObj"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v1, "messageBody"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v1, "notSaveToDb"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Lcn/com/xy/sms/util/n;

    move-object/from16 v8, p4

    move-object v13, p0

    invoke-direct/range {v1 .. v13}, Lcn/com/xy/sms/util/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "flight_num"

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "flight_date"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcn/com/xy/sms/sdk/net/NetWebUtil;->WEB_SERVER_URL_FLIGHT:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryFlightData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized queryMenuByPhoneNum(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v1, Lcn/com/xy/sms/util/ParseManager;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized queryMenuByPhoneNum(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x0

    const-class v2, Lcn/com/xy/sms/util/ParseManager;

    monitor-enter v2

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {p1, p2, p3, p4, p5}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v5

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "ParseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryPublicInfo error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "ParseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryMenuByPhoneNum error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    monitor-exit v2

    return-object v5

    :catch_2
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "ParseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPublicInfo error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v3, "ParseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryPublicInfo error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized queryPublicInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v1, Lcn/com/xy/sms/util/ParseManager;

    monitor-enter v1

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "state"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "2"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized queryPublicInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x0

    const-class v2, Lcn/com/xy/sms/util/ParseManager;

    monitor-enter v2

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3, p4, p5}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v5

    :cond_1
    :try_start_3
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v2

    return-object v5

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "ParseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPublicInfo error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v3, "ParseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryPublicInfo error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "ParseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPublicInfo error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    monitor-exit v2

    return-object v5

    :catch_3
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "ParseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPublicInfo error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_3
    :try_start_a
    throw v0

    :catch_4
    move-exception v1

    const-string/jumbo v3, "ParseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryPublicInfo error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method public static declared-synchronized queryPublicInfoWithId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x0

    const-class v2, Lcn/com/xy/sms/util/ParseManager;

    monitor-enter v2

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {p1, p2, p3, p4, p5}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v5

    :cond_1
    monitor-exit v2

    return-object v5

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "ParseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryPublicInfo error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "ParseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPublicInfo 2error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    monitor-exit v2

    return-object v5

    :catch_2
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "ParseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPublicInfo error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v3, "ParseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryPublicInfo error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method public static queryTrainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 13
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
            "Ljava/lang/Object;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const-string/jumbo v1, "phoneNumber"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v1, "titleNo"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v1, "bubbleJsonObj"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v1, "messageBody"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v1, "notSaveToDb"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueWithMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v12, Lcn/com/xy/sms/util/ParseManager;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/util/p;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcn/com/xy/sms/util/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v12, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDefServiceSwitch(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    :try_start_0
    const-string/jumbo v0, "defService"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static setLogSdkDoAction(Lcn/com/xy/sms/sdk/util/j;)V
    .locals 0

    sput-object p0, Lcn/com/xy/sms/sdk/util/DuoquUtils;->logSdkDoAction:Lcn/com/xy/sms/sdk/util/j;

    return-void
.end method

.method public static setSdkDoAction(Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;)V
    .locals 0

    sput-object p0, Lcn/com/xy/sms/sdk/util/DuoquUtils;->sdkAction:Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    return-void
.end method

.method public static setSmartEnhance(Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smartsms_enhance"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v1, "smartsms_enhance"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setSmartEnhance: "

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

.method public static setmUseNewDes(Z)V
    .locals 0

    sput-boolean p0, Lcn/com/xy/sms/util/ParseManager;->d:Z

    return-void
.end method

.method public static unRegisterReceiver(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/util/ParseManager;->e:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ParseManager.unRegisterReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unRegisterReceiver error "

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

.method public static updateData(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcn/com/xy/sms/util/ParseManager;->updateDataTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    :cond_0
    sget-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/com/xy/sms/util/ParseManager;->updateDataTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    new-instance v0, Lcn/com/xy/sms/util/k;

    invoke-direct {v0, p0, p1}, Lcn/com/xy/sms/util/k;-><init>(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "-3"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateData: "

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

.method public static updateMatchCacheManager(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;)V
    .locals 5

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "phoneNum"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getTitleNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getSmsId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcn/com/xy/sms/util/ParseManager;->updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateMatchCacheManager: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static updateMatchCacheManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcn/com/xy/sms/util/o;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/util/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateNow()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/g;->a(ZZ)V

    return-void
.end method
