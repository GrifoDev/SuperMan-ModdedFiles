.class public Lcom/android/settings/KnoxActiveProtectionEulaActivity;
.super Landroid/app/Activity;
.source "KnoxActiveProtectionEulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnNextReboot:Landroid/widget/Button;

.field private btnRebootNow:Landroid/widget/Button;

.field private chkConfirm:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

.field private tvEula:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    return-void
.end method

.method private isKoreaCountryCode()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "KOREA"

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "btn_reboot_now : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;-><init>(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    goto :goto_0

    :sswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "btn_cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a011d -> :sswitch_2
        0x7f0a0120 -> :sswitch_1
        0x7f0a0121 -> :sswitch_0
        0x7f0a045c -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d0160

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f120e7b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    new-instance v2, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const v2, 0x7f0a045e

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->isKoreaCountryCode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    const v3, 0x7f120e76

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v2, 0x7f0a0121

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const v3, 0x7f1213b5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const v2, 0x7f0a0120

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const v2, 0x7f0a011d

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a045c

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    const-string/jumbo v1, "kapCheckBox"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxActiveProtectionEulaActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "kapCheckBox"

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
