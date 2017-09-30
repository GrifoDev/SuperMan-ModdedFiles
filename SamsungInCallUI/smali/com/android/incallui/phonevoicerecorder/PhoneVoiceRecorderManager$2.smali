.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "PhoneVoiceRecorderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    const-string v3, "com.nttdocomo.android.phonemotion.intent.action.RELEASED_MIC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->access$100()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->access$302(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;Z)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x39b0d5f8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
