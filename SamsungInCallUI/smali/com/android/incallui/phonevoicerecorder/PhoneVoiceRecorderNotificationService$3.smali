.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->dismissTimedOutView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    iget-object v0, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    iget-object v0, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
