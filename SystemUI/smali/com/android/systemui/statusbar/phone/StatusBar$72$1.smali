.class Lcom/android/systemui/statusbar/phone/StatusBar$72$1;
.super Ljava/lang/Thread;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$72;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$72;

.field final synthetic val$intent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$72;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$72$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$72;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$72$1;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$72$1;->val$intent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$72$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$72;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$72$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$72$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$72;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$72;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending intent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_0
.end method
