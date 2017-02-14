.class final Lcn/com/xy/sms/sdk/db/entity/a/j;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->a:I

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->c:Ljava/lang/String;

    iput p4, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->d:I

    iput-object p5, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v0, 0x12

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pubId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "areaCode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "num"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ptype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "lastloadtime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "isrulenum"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "purpose"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "extend"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "isuse"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_public_num_info"

    const-string/jumbo v2, " num = ? and ptype = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->saveOrUpdateTableData(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "asyncInsertRuleMatchNum: "

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
