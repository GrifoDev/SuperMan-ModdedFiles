.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$902(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Z)Z

    :cond_0
    const-string v0, "VoiceCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWiFiConnected for SoftPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$900(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$900(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setEndCallButtonIcon(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
