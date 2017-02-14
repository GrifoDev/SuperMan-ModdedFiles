.class public Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final a:Ljava/lang/String; = "iccid"

.field private static b:J

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z

.field public static final iccidPool:Ljava/util/concurrent/ExecutorService;

.field public static final pubInfoPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->pubInfoPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcn/com/xy/sms/sdk/db/entity/IccidInfo;ZZ)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    if-nez p0, :cond_1

    move-object v2, v1

    move-object v3, v0

    move-object v0, v1

    :goto_0
    const/4 v4, 0x1

    invoke-static {v3, v2, v0, p2, v4}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    move-object v5, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "10000"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "10010"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "10086"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->changeIccidAreaCode(Z)V

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorByNum(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    move-object v3, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_1
    move-object v4, v1

    :goto_1
    if-nez v3, :cond_b

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_13

    move-object v3, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_4
    if-eqz p3, :cond_5

    :goto_2
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, p2, v2}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return-object v0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/4 v1, 0x4

    const-wide/16 v4, 0x7530

    invoke-static {v1, v4, v5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_3

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "CN"

    return-object v0

    :cond_8
    if-eqz p3, :cond_9

    :goto_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    sget-object v4, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v0, v4, p2, v7}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v1, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/4 v4, 0x4

    const-wide/16 v10, 0x7530

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-gtz v4, :cond_a

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_f

    const/4 v0, 0x0

    :goto_6
    if-nez v2, :cond_10

    :cond_d
    if-nez v2, :cond_11

    if-nez v0, :cond_12

    const-string/jumbo v0, "CN"

    return-object v0

    :cond_e
    if-eqz v2, :cond_c

    return-object v3

    :cond_f
    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    if-eqz v0, :cond_d

    const-string/jumbo v0, "CN"

    return-object v0

    :cond_11
    return-object v3

    :cond_12
    const/4 v0, 0x0

    aget-object v0, v4, v0

    return-object v0

    :cond_13
    const/4 v0, 0x1

    move v2, v0

    move-object v3, v1

    goto/16 :goto_0

    :cond_14
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    return-object v3

    :cond_15
    const-string/jumbo v0, "CN"

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcn/com/xy/sms/sdk/db/entity/IccidInfo;Z)V
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x10

    const-wide v4, 0x120642000L

    invoke-static {v3, v4, v5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v4

    if-nez p1, :cond_4

    :cond_2
    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_1
    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "loadIccidLocate-------: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->operator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->city:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " locateEnable: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "info.updateTime < System.currentTimeMillis()-weekTime: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    iget-wide v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->updateTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    if-nez p1, :cond_a

    move-object v3, v0

    move-object v0, v2

    :goto_3
    invoke-static {v3, v2, v0, p2, v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    const-string/jumbo v6, "\u672a\u77e5"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->updateTime:J

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-ltz v3, :cond_6

    move v3, v1

    :goto_4
    if-nez v3, :cond_2

    :cond_5
    :goto_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    move v3, v0

    goto :goto_4

    :cond_7
    iget-wide v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->updateTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_5

    goto/16 :goto_1

    :cond_8
    iget-wide v6, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->updateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    cmp-long v3, v6, v8

    if-ltz v3, :cond_9

    move v3, v1

    :goto_6
    if-nez v3, :cond_3

    goto :goto_5

    :cond_9
    move v3, v0

    goto :goto_6

    :cond_a
    iget-object v2, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_7
    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    iget-object v2, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    move-object v10, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_3

    :cond_b
    const-string/jumbo v2, "10000"

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v0, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const-string/jumbo v2, "10010"

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "10086"

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Lcn/com/xy/sms/sdk/db/entity/IccidInfo;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/iccid/a;

    invoke-direct {v1, p1}, Lcn/com/xy/sms/sdk/iccid/a;-><init>(Lcn/com/xy/sms/sdk/db/entity/IccidInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-static {v1, p0, v1, v2, v2}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestTokenIfNeed(Ljava/lang/String;)V

    new-instance v2, Lcn/com/xy/sms/sdk/iccid/b;

    invoke-direct {v2, p1, p0}, Lcn/com/xy/sms/sdk/iccid/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/net/util/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "990005"

    const-string/jumbo v5, "location"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeAllNetHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryLocationRequest: "

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

.method public static changeIccidAreaCode(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0, v3, v3, v3, v3}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->putIccidAreaCodeToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/com/xy/sms/sdk/iccid/a;

    invoke-direct {v2, v0}, Lcn/com/xy/sms/sdk/iccid/a;-><init>(Lcn/com/xy/sms/sdk/db/entity/IccidInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {v3, p0, v3, v2, v2}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->operator:Ljava/lang/String;

    iget-object v3, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userOperator:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->putIccidAreaCodeToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static changeIccidAreaCode(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :cond_0
    sput-boolean v2, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->d:Z

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getIccidBySimIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getIccidBySimIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return-void

    :cond_1
    sget-boolean v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->changeIccidAreaCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->changeIccidAreaCode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, p1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getUserAreaCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    if-nez v2, :cond_4

    :cond_0
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    :goto_1
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    invoke-static {p2, p3, p4, p5}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v3

    :cond_3
    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/a/a;->a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/a;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v4, v2, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v2, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    return-object v0

    :cond_5
    if-nez v2, :cond_7

    :cond_6
    :goto_3
    const/4 v0, 0x1

    invoke-static {v3, p2, p3, p4, v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAreaCodeByCnumOrIccid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "CN"

    return-object v0

    :cond_7
    :try_start_1
    iget-wide v4, v2, Lcn/com/xy/sms/sdk/db/entity/a;->g:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide v8, 0x1cf7c5800L

    invoke-static {v6, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, v2, Lcn/com/xy/sms/sdk/db/entity/a;->g:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_8

    :goto_4
    if-nez v0, :cond_1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    invoke-static {p2}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->changeIccidAreaCode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getICCID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    return-object v0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIccidAreaCodeMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getIccidAreaCodeMapValueByIndex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    return-object v2

    :cond_3
    array-length v1, v0

    if-le v1, p1, :cond_2

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getIccidInfoArr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getOperatorByICCID(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x6

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, -0x2

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const-string/jumbo v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_4
    const/4 v0, 0x2

    return v0
.end method

.method public static getOperatorByNum(Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "10086,1008611,1008601"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "10010,10011"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "10000,10001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public static getOperatorNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u79fb\u52a8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u8054\u901a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u7535\u4fe1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "-2"

    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorByICCID(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "1"

    return-object v0

    :cond_2
    const-string/jumbo v0, "2"

    return-object v0

    :cond_3
    const-string/jumbo v0, "3"

    return-object v0
.end method

.method public static getProvince()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAreaCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getIccidAreaCodeMapValueByIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-gez p1, :cond_2

    :cond_0
    return-object v2

    :cond_1
    return-object v0

    :cond_2
    invoke-static {v2, p1}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u901a\u8fc7\u5361\u4f4d\u83b7\u53d6\u7528\u6237\u8bbe\u7f6e\u7684\u533a\u57df\u7f16\u7801 areaCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserOperatorNum([Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x4

    const/4 v0, -0x2

    array-length v1, p0

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v1, p0, v2

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static putIccidAreaCodeToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_1

    aput-object p1, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p0, p2}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object p3, v0, v7

    const/4 v1, 0x4

    invoke-static {v4, p4}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v0, v1

    sget-object v1, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p0, p2}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object p3, v0, v7

    const/4 v1, 0x4

    invoke-static {v4, p4}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getOperatorNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static queryAreaCode(Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "simIccid"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->getIccid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->startQueryIccidLocation(Ljava/util/HashMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryAreaCode: "

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

.method public static queryIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    sget-object v0, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->iccidPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/iccid/c;

    invoke-direct {v1, p0, p1, p2}, Lcn/com/xy/sms/sdk/iccid/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2, v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static startQueryIccidLocation(Ljava/util/HashMap;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "simIccid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "receiveNum"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "centerNum"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "sceneId"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "sms"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "smsLocate"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    if-nez v2, :cond_5

    :cond_1
    :goto_2
    if-nez v1, :cond_6

    :cond_2
    :goto_3
    move-object v0, v3

    iget-object v3, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v2, v1, v4}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->updateIccidCnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "SMSLOCATEENABLE"

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getBooleanParam(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {v1, v0, p1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->a(Landroid/content/Context;Lcn/com/xy/sms/sdk/db/entity/IccidInfo;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    invoke-direct {v3}, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;-><init>()V

    iput-object v2, v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    iput-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    iput-object v1, v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v2, v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object v1, v3, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    goto :goto_3
.end method
