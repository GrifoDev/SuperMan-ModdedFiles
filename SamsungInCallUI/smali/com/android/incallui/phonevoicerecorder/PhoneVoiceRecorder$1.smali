.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    const-string v0, "time out for waiting ready to start record"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$002(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$100(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$300(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1e0f3
        :pswitch_0
    .end packed-switch
.end method
