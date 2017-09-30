.class public abstract Lcom/samsung/android/sdk/bixby/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceBound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/data/b;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onPathRuleStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceUnbound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
