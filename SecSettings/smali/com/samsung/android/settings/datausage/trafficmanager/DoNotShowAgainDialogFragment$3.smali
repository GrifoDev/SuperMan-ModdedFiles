.class Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;
.super Ljava/lang/Object;
.source "DoNotShowAgainDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

.field final synthetic val$isNeedSendSms:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    iput-boolean p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->val$isNeedSendSms:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const v4, 0x7f1213db

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v2, "DoNotShowAgainDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the dialog setPositiveButton:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b013c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0157

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v11, v9}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "donnotshow_checked_flag"

    invoke-static {v2, v5, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "DoNotShowAgainDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the dialog wlanupdate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get4(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get4(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v12, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "auto_update_sdk_value"

    invoke-static {v2, v5, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-nez v2, :cond_3

    :cond_0
    return-void

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->val$isNeedSendSms:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->val$isNeedSendSms:Z

    if-eqz v2, :cond_5

    return-void

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    goto :goto_2

    :catch_0
    move-exception v8

    const-string/jumbo v2, "DoNotShowAgainDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DialogFragemnt dismiss Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_4
    return-void

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v6

    move-object v5, v3

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_4
.end method
