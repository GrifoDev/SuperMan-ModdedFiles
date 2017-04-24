.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneVoiceRecorderNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "recieve intent screen off"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->animateForHide()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x7ed8ea7f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
