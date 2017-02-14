.class public Lcn/com/xy/sms/util/PublicInfoParseManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/util/HashMap;
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

.field private static b:Ljava/util/concurrent/ExecutorService;

.field public static mins:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/PublicInfoParseManager;->b:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcn/com/xy/sms/util/PublicInfoParseManager;->mins:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-static/range {p0 .. p7}, Lcn/com/xy/sms/util/PublicInfoParseManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

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
    sget-object v1, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p4, p5, p6}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->createBitmapByPath2(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez p7, :cond_4

    :goto_2
    if-eqz v0, :cond_0

    sget-object v1, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

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

.method public static findBitmapLogoByLogoName(Landroid/content/Context;Ljava/lang/String;IILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
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

    if-nez v5, :cond_2

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_a

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "http://down2.bizport.cn/publicnum/upload/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcn/com/xy/sms/util/PublicInfoParseManager;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcn/com/xy/sms/util/u;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Lcn/com/xy/sms/util/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v14, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_15

    :goto_0
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v5, 0xc

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "state"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "256"

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    return-object v13

    :cond_2
    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-nez v5, :cond_4

    :try_start_2
    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_8

    :goto_2
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v4, 0x0

    return-object v4

    :cond_4
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_6

    :goto_3
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v5

    :cond_6
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

    if-gtz v4, :cond_7

    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_5

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-gtz v4, :cond_9

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_3

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x13

    sget-wide v14, Lcn/com/xy/sms/util/PublicInfoParseManager;->mins:J

    const-wide/16 v16, 0x3c

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v6, v14, v15}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v14

    add-long/2addr v4, v14

    cmp-long v4, v10, v4

    if-ltz v4, :cond_c

    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "logoPath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \u8fd8\u6ca1\u5230\u65f6\u95f4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_d

    :goto_7
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/4 v4, 0x0

    return-object v4

    :cond_c
    const/4 v4, 0x0

    goto :goto_6

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-gtz v4, :cond_e

    const/4 v4, 0x1

    :goto_8
    if-nez v4, :cond_b

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    :catch_0
    move-exception v4

    move-object v5, v13

    :goto_9
    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_10

    :goto_a
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object v13, v5

    goto/16 :goto_1

    :cond_10
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

    if-gtz v4, :cond_11

    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_f

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    goto :goto_b

    :catchall_0
    move-exception v4

    move-object v5, v4

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_13

    :goto_c
    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string/jumbo v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    throw v5

    :cond_13
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

    if-gtz v4, :cond_14

    const/4 v4, 0x1

    :goto_d
    if-nez v4, :cond_12

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    goto :goto_d

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-gtz v4, :cond_16

    const/4 v4, 0x1

    :goto_e
    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x0

    goto :goto_e

    :catch_1
    move-exception v4

    goto/16 :goto_9
.end method

.method public static varargs getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    return-object v1
.end method

.method public static getLogoNameByNum(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
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

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/util/v;

    invoke-direct {v0, p3, p6}, Lcn/com/xy/sms/util/v;-><init>(ILcn/com/xy/sms/util/SdkCallBack;)V

    invoke-static {p1, p2, p4, p5, v0}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const-string/jumbo v0, "logoc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "logo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "findBitmapLogoByLogoName"

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

.method public static getNameAndLogoNameByNum(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(B)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p6, :cond_1

    move-object v0, v1

    :goto_0
    invoke-static {p1, p2, p4, p5, v0}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return-object v1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Lcn/com/xy/sms/util/w;

    invoke-direct {v0, p3, p6}, Lcn/com/xy/sms/util/w;-><init>(ILcn/com/xy/sms/util/SdkCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "findBitmapLogoByLogoName"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eq p3, v3, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "logoName"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "logoc"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "logoName"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "logo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public static queryLocalSmsSignByNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryLocalSmsSignByNum: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static queryLogoByPhone(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;IILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p7

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getLogoNameByNum(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p5

    move v3, p6

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/PublicInfoParseManager;->findBitmapLogoByLogoName(Landroid/content/Context;Ljava/lang/String;IILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p8, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "logoName is null"

    aput-object v2, v0, v1

    invoke-static {p8, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "logo drawable is null"

    aput-object v2, v0, v1

    invoke-static {p8, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "-1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p8, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
