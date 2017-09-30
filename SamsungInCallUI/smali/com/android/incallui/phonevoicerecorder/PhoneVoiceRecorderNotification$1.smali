.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->constructActionButtons(Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

.field final synthetic val$action:Landroid/app/Notification$Action;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Landroid/app/Notification$Action;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    iput-object p2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;->val$action:Landroid/app/Notification$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;->val$action:Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->animateForHide()V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->cancelQuickPanelNotification()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method
