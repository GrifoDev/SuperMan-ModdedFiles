.class Lcom/android/incallui/agif/AgifImageManager$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifImageManager;->startAgifAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifImageManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager$1;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$1;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$000(Lcom/android/incallui/agif/AgifImageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$1;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$100(Lcom/android/incallui/agif/AgifImageManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/agif/AgifImageManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/AgifImageManager$1$1;-><init>(Lcom/android/incallui/agif/AgifImageManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    return-void
.end method
