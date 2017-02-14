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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getNetworkClass(Landroid/content/Context;)I
    invoke-static {v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network State :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # setter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z
    invoke-static {v2, v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3302(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z

    sput-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # setter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->is2G:Z
    invoke-static {v2, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3302(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Z)Z

    sput-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$ConnectivityReceiver;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCallPlus:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
