.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceCallButtonCallPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getNetworkClass(Landroid/content/Context;)I
    invoke-static {v4, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network State :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # setter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z
    invoke-static {v4, v6}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3302(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z

    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # setter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z
    invoke-static {v4, v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3302(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z

    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
