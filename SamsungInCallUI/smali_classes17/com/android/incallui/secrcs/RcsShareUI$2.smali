.class Lcom/android/incallui/secrcs/RcsShareUI$2;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;

.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$localAddCallButton:Landroid/widget/Button;

.field final synthetic val$localBluetoothButton:Landroid/widget/ToggleButton;

.field final synthetic val$localPromotedButton:Landroid/widget/Button;

.field final synthetic val$localPromotedButtonStub:Landroid/view/ViewStub;

.field final synthetic val$localShareButton:Landroid/widget/Button;

.field final synthetic val$localShareButtonStub:Landroid/view/ViewStub;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/Call;Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/view/ViewStub;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$call:Lcom/android/incallui/Call;

    iput-object p3, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    iput-object p4, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    iput-object p5, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButton:Landroid/widget/Button;

    iput-object p6, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    iput-object p7, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButtonStub:Landroid/view/ViewStub;

    iput-object p8, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButtonStub:Landroid/view/ViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupLegacyInCallButtons runOnUiThread :"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$call:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "State = Dialing  or Hold"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, " setupLegacyInCallButtons mBluetoothButton.setVisibility(View.VISIBLE); "

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsConference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mHasRcsServices:Z

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2100()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupLegacyInCallButtons ,Cursor not null"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v1, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1402(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    const-string v1, "MENU_STRING"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mIsVSHButtonAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1400(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mPromotedService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2200(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mIsISHButtonAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1500(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsCallPlusAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsCallPlusAvailable:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsConference:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2100()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v1, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1502(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupLegacyInCallButtons 2nd button if part"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "MENU_STRING"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "broadcast sent for menu change"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v1, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1402(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    const-string v1, "MENU_STRING"

    const-string v2, "HOLD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons mIsVSHButtonAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1400(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v1, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1502(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1400(Lcom/android/incallui/secrcs/RcsShareUI;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "MENU_STRING"

    const-string v2, "HOLD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLegacyInCallButtons 2nd button else part  mIsExtraVolumeAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, " setupLegacyInCallButtons mBluetoothButton.setVisibility(View.VISIBLE); 2 "

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupLegacyInCallButtons no RCS"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localAddCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->mIsExtraVolumeAvailable:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, " setupLegacyInCallButtons mBluetoothButton.setVisibility(View.VISIBLE); 3 "

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_c
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localPromotedButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$700()Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_e
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$2;->val$localShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_1
.end method
