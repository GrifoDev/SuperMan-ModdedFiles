.class final Lcn/com/xy/sms/util/g;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z

.field private final synthetic e:Z

.field private final synthetic f:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/xy/sms/util/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/g;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/com/xy/sms/util/g;->d:Z

    iput-boolean p5, p0, Lcn/com/xy/sms/util/g;->e:Z

    iput-object p6, p0, Lcn/com/xy/sms/util/g;->f:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/util/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcn/com/xy/sms/util/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/g;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/com/xy/sms/util/g;->d:Z

    iget-boolean v4, p0, Lcn/com/xy/sms/util/g;->e:Z

    iget-object v5, p0, Lcn/com/xy/sms/util/g;->f:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->initParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V

    iget-object v0, p0, Lcn/com/xy/sms/util/g;->b:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/util/o;->a()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initParams time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/g;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/e;->c()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getBubbleViewVersion(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMdd"

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/com/xy/sms/util/ParseManager;->addViewVersion(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    new-instance v0, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->changeIccidAreaCode(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/util/g;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ParseManager.initSdk "

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
