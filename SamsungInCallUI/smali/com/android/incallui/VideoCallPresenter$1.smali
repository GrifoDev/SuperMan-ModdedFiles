.class Lcom/android/incallui/VideoCallPresenter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "VideoCallPresenter - "

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

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$000(Lcom/android/incallui/VideoCallPresenter;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/VideoCallPresenter;->notifyForCaptureImage(Lcom/android/incallui/Call;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_0
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method
