.class final Lcn/com/xy/sms/sdk/action/d;
.super Ljava/lang/Thread;
.source "Unknown"


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/action/NearbyPoint;


# direct methods
.method private constructor <init>(Lcn/com/xy/sms/sdk/action/NearbyPoint;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/xy/sms/sdk/action/NearbyPoint;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/xy/sms/sdk/action/d;-><init>(Lcn/com/xy/sms/sdk/action/NearbyPoint;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->a(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->c(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->c(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->c(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->a(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D

    move-result-wide v2

    iget-object v4, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D

    move-result-wide v4

    const/16 v6, 0x4e20

    iget-object v7, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v7}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->e(Lcn/com/xy/sms/sdk/action/NearbyPoint;)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->a(Lcn/com/xy/sms/sdk/action/NearbyPoint;Ljava/lang/String;DDII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcn/com/xy/sms/sdk/action/c;

    invoke-direct {v2, v0}, Lcn/com/xy/sms/sdk/action/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "queryResult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_4
    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/d;->a:Lcn/com/xy/sms/sdk/action/NearbyPoint;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
