.class Lcom/android/incallui/fragment/view/CallCardVolteView$1;
.super Landroid/content/BroadcastReceiver;
.source "CallCardVolteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/view/CallCardVolteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/view/CallCardVolteView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 102
    const-string v2, "CallCardVolteView"

    const-string v3, "onReceive called"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 106
    const-string v2, "MENU_STRING"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "CallCardVolteView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value of string:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    const-string v2, "support_call_transfer_blind_ect"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardVolteView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;
    invoke-static {v2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$000(Lcom/android/incallui/fragment/view/CallCardVolteView;)Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/fragment/CallCardFragment;->setMenuText(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method
