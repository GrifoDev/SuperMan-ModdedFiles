.class public Lcom/sec/android/app/sysscope/engine/n;
.super Lcom/sec/android/app/sysscope/engine/h;


# instance fields
.field final a:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/h;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sysscope/engine/n;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sysscope/engine/n;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/n;->b:Lcom/sec/android/app/sysscope/engine/d;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/n;->b:Lcom/sec/android/app/sysscope/engine/d;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/sec/android/app/sysscope/engine/d;->a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/g;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sysscope/service/g;->g:Lcom/sec/android/app/sysscope/service/g;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/sysscope/engine/n;->c:I

    :cond_1
    sget-object v1, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/n;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v1}, Lcom/sec/android/app/sysscope/engine/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sysscope/engine/n;->a(Landroid/os/Bundle;)V

    const-string v3, "result"

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/g;->a()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "kernelStatus"

    iget v3, p0, Lcom/sec/android/app/sysscope/engine/n;->c:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "info"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/n;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
