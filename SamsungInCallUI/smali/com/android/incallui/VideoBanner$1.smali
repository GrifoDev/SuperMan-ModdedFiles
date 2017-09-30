.class Lcom/android/incallui/VideoBanner$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoBanner;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VideoBanner$1;->this$0:Lcom/android/incallui/VideoBanner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "VideoBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/VideoBanner$1;->this$0:Lcom/android/incallui/VideoBanner;

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->hideVideoBanner()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/VideoBanner$1;->this$0:Lcom/android/incallui/VideoBanner;

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->expiredModifyReceiveTimer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
