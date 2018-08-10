.class Lcom/android/systemui/pip/tv/PipNotification$4;
.super Landroid/content/BroadcastReceiver;
.source "PipNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$4;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/pip/tv/PipNotification;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PipNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from the notification UI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PipNotification.menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$4;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->-get4(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->showPictureInPictureMenu()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "PipNotification.close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$4;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->-get4(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    goto :goto_0
.end method
