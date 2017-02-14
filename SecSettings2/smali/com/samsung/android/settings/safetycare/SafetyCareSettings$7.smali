.class Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;
.super Ljava/lang/Object;
.source "SafetyCareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->warnAppInstallationFromPackageInstaller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

.field final synthetic val$mCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->val$mCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-wrap0(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "one_time_operate"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v3, "SafetyCareSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->finish()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-wrap4(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get3(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get3(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-wrap0(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "one_time_operate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->finish()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2
.end method
