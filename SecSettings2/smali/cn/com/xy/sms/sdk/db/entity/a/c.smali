.class public final Lcn/com/xy/sms/sdk/db/entity/a/c;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String; = ";&XY_PIX&;"

.field private static b:Ljava/lang/String; = "id"

.field private static c:Ljava/lang/String; = "num"

.field private static d:Ljava/lang/String; = "name"

.field private static e:Ljava/lang/String; = "cnum"

.field private static f:Ljava/lang/String; = "cmd"

.field private static g:Ljava/lang/String; = "mark_time"

.field private static final h:Ljava/lang/String; = "tb_num_name"

.field private static i:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_num_name"

.field private static j:Ljava/lang/String; = "ALTER TABLE tb_num_name ADD COLUMN cnum TEXT "

.field private static k:Ljava/lang/String; = "ALTER TABLE tb_num_name ADD COLUMN mark_time LONG DEFAULT 0"

.field private static l:Ljava/lang/String; = "ALTER TABLE tb_num_name ADD COLUMN cmd TEXT "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CREATE TABLE  IF NOT EXISTS tb_num_name (id INTEGER PRIMARY KEY, num TEXT NOT NULL UNIQUE, name TEXT NOT NULL,cmd TEXT , cnum TEXT,mark_time  LONG DEFAULT 0)"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x3

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->e(Ljava/lang/String;Z)Lcn/com/xy/sms/sdk/db/entity/a/b;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "num"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "cnum"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mark_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void

    :cond_2
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    move-object p1, v0

    :cond_4
    :goto_1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cnum"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mark_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    const-string/jumbo v2, "num =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "cmd"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "cnum"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object p2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "mark_time"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string/jumbo v2, "1"

    aput-object v2, v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    const-string/jumbo v2, "num =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, ";&XY_PIX&;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ";&XY_PIX&;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveOrUpdateNumCmd: "

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

.method public static a(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "num"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "msg"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "cnum"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v0, "smsTime"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_a

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-ltz v0, :cond_b

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/db/entity/a/d;

    invoke-direct {v1, v5}, Lcn/com/xy/sms/sdk/db/entity/a/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v5, v3}, Lcn/com/xy/sms/sdk/db/entity/a/c;->e(Ljava/lang/String;Z)Lcn/com/xy/sms/sdk/db/entity/a/b;

    move-result-object v3

    if-nez v3, :cond_4

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "num"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "name"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "cmd"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    aput-object v4, v3, v6

    const/4 v4, 0x6

    const-string/jumbo v6, "cnum"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    aput-object v0, v3, v4

    const/16 v0, 0x8

    const-string/jumbo v4, "mark_time"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string/jumbo v4, "1"

    aput-object v4, v3, v0

    const/4 v0, 0x0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v3, "tb_num_name"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveOrUpdateNumCmd: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseCmdForMsg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    :try_start_3
    iget-object v6, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iget-object v6, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v3, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    :goto_4
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "cmd"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v6, "cnum"

    aput-object v6, v4, v3

    const/4 v3, 0x3

    aput-object v0, v4, v3

    const/4 v0, 0x4

    const-string/jumbo v3, "mark_time"

    aput-object v3, v4, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "1"

    aput-object v3, v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v3, "tb_num_name"

    const-string/jumbo v4, "num =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v0, v4, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v6, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "cmd"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v3, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v6, "cnum"

    aput-object v6, v4, v3

    const/4 v3, 0x3

    aput-object v0, v4, v3

    const/4 v0, 0x4

    const-string/jumbo v3, "mark_time"

    aput-object v3, v4, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "1"

    aput-object v3, v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v3, "tb_num_name"

    const-string/jumbo v4, "num =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v0, v4, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, ""

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v6, ";&XY_PIX&;"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-gt v6, v8, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ";&XY_PIX&;"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto/16 :goto_4

    :cond_9
    move-object v3, v4

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_2
.end method

.method public static b(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/a/b;
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->f(Ljava/lang/String;Z)Lcn/com/xy/sms/sdk/db/entity/a/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x3

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->f(Ljava/lang/String;Z)Lcn/com/xy/sms/sdk/db/entity/a/b;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "num"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cnum"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mark_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void

    :cond_2
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    move-object p1, v0

    :cond_4
    :goto_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cnum"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mark_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    const-string/jumbo v2, "num =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "cnum"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object p2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "mark_time"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string/jumbo v2, "1"

    aput-object v2, v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    const-string/jumbo v2, "num =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveOrUpdateNumName: "

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

.method public static b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "SAMCLASSFIYVwIDAQAB"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/db/entity/a/e;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/db/entity/a/e;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static b()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v2, "HUAWEICARD"

    aput-object v2, v3, v0

    move v2, v0

    :goto_0
    if-gtz v2, :cond_0

    aget-object v4, v3, v0

    sget-object v5, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "num_name_power"

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getBooleanParam(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v2, v7, [Ljava/lang/String;

    aput-object p0, v2, v3

    :try_start_0
    const-string/jumbo v0, "num = ? "

    if-nez p1, :cond_3

    :goto_0
    const-string/jumbo v3, "tb_num_name"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    aput-object v6, v4, v5

    invoke-static {v3, v4, v0, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_4

    :cond_0
    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-nez p1, :cond_7

    :cond_1
    :goto_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    return-object v0

    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " and mark_time = 1 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-nez p1, :cond_5

    :goto_2
    return-object v0

    :cond_5
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getNameByNum: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-nez p1, :cond_6

    :goto_3
    throw v0

    :cond_6
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mark_time"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    const-string/jumbo v2, "num = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateCmdNameIsMark: "

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

.method public static c(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "num"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "msg"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getCorp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "cnum"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "smsTime"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_8

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-ltz v0, :cond_9

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/db/entity/a/f;

    invoke-direct {v1, v5}, Lcn/com/xy/sms/sdk/db/entity/a/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v5, v3}, Lcn/com/xy/sms/sdk/db/entity/a/c;->f(Ljava/lang/String;Z)Lcn/com/xy/sms/sdk/db/entity/a/b;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "num"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "name"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const/4 v4, 0x4

    const-string/jumbo v6, "cnum"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    const/4 v0, 0x6

    const-string/jumbo v4, "mark_time"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string/jumbo v4, "1"

    aput-object v4, v3, v0

    const/4 v0, 0x0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v3, "tb_num_name"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveOrUpdateNumName: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseNumNameForMsg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    :try_start_3
    iget-object v6, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iget-object v3, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    :goto_3
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v6, "cnum"

    aput-object v6, v4, v3

    const/4 v3, 0x3

    aput-object v0, v4, v3

    const/4 v0, 0x4

    const-string/jumbo v3, "mark_time"

    aput-object v3, v4, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "1"

    aput-object v3, v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v3, "tb_num_name"

    const-string/jumbo v4, "num =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v0, v4, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v6, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v3, v3, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v6, "cnum"

    aput-object v6, v4, v3

    const/4 v3, 0x3

    aput-object v0, v4, v3

    const/4 v0, 0x4

    const-string/jumbo v3, "mark_time"

    aput-object v3, v4, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "1"

    aput-object v3, v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v3, "tb_num_name"

    const-string/jumbo v4, "num =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v0, v4, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-gt v6, v8, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto/16 :goto_3

    :cond_7
    move-object v3, v4

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2
.end method

.method private static d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v2, v7, [Ljava/lang/String;

    aput-object p0, v2, v3

    :try_start_0
    const-string/jumbo v0, "num = ? "

    if-nez p1, :cond_3

    :goto_0
    const-string/jumbo v3, "tb_num_name"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "cmd"

    aput-object v6, v4, v5

    invoke-static {v3, v4, v0, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_4

    :cond_0
    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-nez p1, :cond_7

    :cond_1
    :goto_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    return-object v0

    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " and mark_time = 1 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-nez p1, :cond_5

    :goto_2
    return-object v0

    :cond_5
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getCmdByNum: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    if-nez p1, :cond_6

    :goto_3
    throw v0

    :cond_6
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mark_time"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_num_name"

    const-string/jumbo v2, "num = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateNumNameIsMark: "

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

.method private static e(Ljava/lang/String;Z)Lcn/com/xy/sms/sdk/db/entity/a/b;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "num"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "tb_num_name"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "num"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "cmd"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "cnum"

    aput-object v5, v3, v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v1, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcn/com/xy/sms/sdk/db/entity/a/b;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/db/entity/a/b;-><init>()V

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    const-string/jumbo v3, "num"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    const-string/jumbo v3, "cnum"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/com/xy/sms/sdk/db/entity/a/b;->d:Ljava/lang/String;

    const-string/jumbo v3, "cmd"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/com/xy/sms/sdk/db/entity/a/b;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryCMDForNum: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;Z)Lcn/com/xy/sms/sdk/db/entity/a/b;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "num"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_1

    :goto_0
    const-string/jumbo v2, "tb_num_name"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "num"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "cnum"

    aput-object v5, v3, v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v1, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "mark_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " = 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryNumNameForNum: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcn/com/xy/sms/sdk/db/entity/a/b;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/db/entity/a/b;-><init>()V

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    const-string/jumbo v3, "num"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/com/xy/sms/sdk/db/entity/a/b;->c:Ljava/lang/String;

    const-string/jumbo v3, "cnum"

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/com/xy/sms/sdk/db/entity/a/b;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->d(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method
