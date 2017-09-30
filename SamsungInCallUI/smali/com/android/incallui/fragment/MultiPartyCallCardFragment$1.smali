.class Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/MultiPartyCallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onReceive called multi"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MENU_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiPartyCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value of string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "support_call_transfer_blind_ect"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isNEESupportBlindECT()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setMenuText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
