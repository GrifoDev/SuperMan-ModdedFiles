.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->showUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iput-object p2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v1, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visual_call_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$11;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
