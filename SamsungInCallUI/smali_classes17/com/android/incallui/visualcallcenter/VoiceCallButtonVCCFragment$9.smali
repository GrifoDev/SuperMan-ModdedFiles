.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;
.super Ljava/lang/Object;
.source "VoiceCallButtonVCCFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$checkboxupdate:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iput-object p2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkboxupdate:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1163
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    :goto_0
    return-void

    .line 1166
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "visual_call_update_type"

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkboxupdate:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1167
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 1168
    .local v0, "val":I
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->saveAgreementFlag(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)V

    .line 1169
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->process(Z)V
    invoke-static {v1, v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)V

    goto :goto_0

    .end local v0    # "val":I
    :cond_1
    move v1, v3

    .line 1166
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1167
    goto :goto_2
.end method
