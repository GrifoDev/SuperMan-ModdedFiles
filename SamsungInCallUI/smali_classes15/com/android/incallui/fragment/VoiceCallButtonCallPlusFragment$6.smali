.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;
.super Ljava/lang/Object;
.source "VoiceCallButtonCallPlusFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateCallPlus(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: toggle :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1892
    const/4 v1, -0x1

    .line 1893
    .local v1, "mToggleState":I
    if-eqz p2, :cond_1

    .line 1894
    const/4 v1, 0x1

    .line 1897
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1898
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # setter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mImportance:I
    invoke-static {v2, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2802(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)I

    .line 1899
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1900
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1901
    const-string v2, "callerNumber"

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->msisdn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1902
    const-string v2, "com.samsung.crane.callcomposer.IMPORTANCETOGGLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1903
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: toggle :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1907
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1896
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
