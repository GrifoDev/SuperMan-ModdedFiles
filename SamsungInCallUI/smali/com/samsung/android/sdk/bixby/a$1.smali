.class Lcom/samsung/android/sdk/bixby/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/bixby/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/bixby/data/State;

.field final synthetic b:Lcom/samsung/android/sdk/bixby/a;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/a;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/a$1;->a:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a;)Lcom/samsung/android/sdk/bixby/a$d;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    invoke-static {v1}, Lcom/samsung/android/sdk/bixby/a;->b(Lcom/samsung/android/sdk/bixby/a;)I

    move-result v1

    const/16 v2, 0x21

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to call onStateReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    iget-object v1, v1, Lcom/samsung/android/sdk/bixby/a;->b:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/a;->c(Lcom/samsung/android/sdk/bixby/a;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interim Listener is not set. Waiting for it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call onStateReceived() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/a$1;->a:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a;)Lcom/samsung/android/sdk/bixby/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a$1;->a:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/bixby/a$d;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a$1;->b:Lcom/samsung/android/sdk/bixby/a;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
