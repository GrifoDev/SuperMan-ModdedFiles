.class final Lcn/com/xy/sms/sdk/dex/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/dex/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-wide/32 v2, 0x927c0

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/dex/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/dex/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x7

    if-le v0, v4, :cond_0

    const-wide/16 v4, 0x0

    sget-object v0, Lcn/com/xy/sms/sdk/constant/Constant;->checkJarMap:Landroid/util/LruCache;

    iget-object v6, p0, Lcn/com/xy/sms/sdk/dex/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/dex/DexUtil;->a()Lcn/com/xy/sms/sdk/Iservice/OnlineUpdateCycleConfigInterface;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v2, v4

    cmp-long v0, v6, v2

    if-gez v0, :cond_4

    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/com/xy/sms/sdk/dex/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "-1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcn/com/xy/sms/sdk/constant/Constant;->checkJarMap:Landroid/util/LruCache;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/dex/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->a()V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v2, v3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getClassLoaderBymap: "

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
