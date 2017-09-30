.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    iput-object p2, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkboxupdate:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->ivrDialog_agree()V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkboxupdate:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->ivrDialog_autoUpdate(J)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "visual_call_update_type"

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkboxupdate:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_2
    invoke-static {v1, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    invoke-static {v2, v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->ivrDialog_show(J)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0, v7}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1900(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;I)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$9;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-static {v0, v6}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Z)V

    goto :goto_0

    :cond_1
    move-wide v0, v4

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_2

    :cond_3
    move v7, v6

    goto :goto_3

    :cond_4
    move-wide v2, v4

    goto :goto_4
.end method
