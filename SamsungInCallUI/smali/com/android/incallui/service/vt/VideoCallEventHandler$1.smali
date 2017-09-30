.class Lcom/android/incallui/service/vt/VideoCallEventHandler$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallEventHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/vt/VideoCallEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;->this$0:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;->this$0:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->expiredSwapProgressing()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;->this$0:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->expiredResumeCameraForActivityState()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;->this$0:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->expiredPauseCameraForActivityState()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;->this$0:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/Call;

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->onVideoCallChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method
