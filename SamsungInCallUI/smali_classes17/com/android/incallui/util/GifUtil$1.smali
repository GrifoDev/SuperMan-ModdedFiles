.class Lcom/android/incallui/util/GifUtil$1;
.super Ljava/lang/Thread;
.source "GifUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/GifUtil;->startAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/GifUtil;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/GifUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/GifUtil$1;->this$0:Lcom/android/incallui/util/GifUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/util/GifUtil$1;->this$0:Lcom/android/incallui/util/GifUtil;

    # getter for: Lcom/android/incallui/util/GifUtil;->bAnimate:Z
    invoke-static {v1}, Lcom/android/incallui/util/GifUtil;->access$000(Lcom/android/incallui/util/GifUtil;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/util/GifUtil$1;->this$0:Lcom/android/incallui/util/GifUtil;

    # getter for: Lcom/android/incallui/util/GifUtil;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/util/GifUtil;->access$100(Lcom/android/incallui/util/GifUtil;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/util/GifUtil$1$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/GifUtil$1$1;-><init>(Lcom/android/incallui/util/GifUtil$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    return-void
.end method
