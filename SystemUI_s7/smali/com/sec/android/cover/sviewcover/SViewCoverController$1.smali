.class Lcom/sec/android/cover/sviewcover/SViewCoverController$1;
.super Landroid/os/Handler;
.source "SViewCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDensityHandled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get1(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-wrap1(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-wrap0(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
