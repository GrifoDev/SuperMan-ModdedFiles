.class final Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$2;
.super Landroid/content/BroadcastReceiver;
.source "SocialNetworkServiceGooglePlusQueryArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->registerReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 80
    const-string v0, "SocialNetworkServiceGooglePlusQueryArgs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - SocialNetworkServiceGooglePlusQueryArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    # getter for: Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    # getter for: Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    :cond_0
    # getter for: Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    return-void
.end method
