.class final Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/sns/SecLinkedInHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedinBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/sns/SecLinkedInHelper;


# direct methods
.method private constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast arrived : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$900(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$900(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$900(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v1}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$900(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
