.class public Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;
.super Landroid/app/Activity;
.source "BiometricsSelectBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackupPasswordButton:Landroid/widget/Button;

.field private mIsButtonClicked:Z

.field private mSamsungAccountButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    return-void
.end method

.method private launchSamsungAccount()Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "BiometricsSelectBackupPassword"

    const-string/jumbo v3, "launchSamsungAccount"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "client_id"

    const-string/jumbo v3, "s5d189ajvs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "client_secret"

    const-string/jumbo v3, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "Is_From_SA_Verify"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "mypackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "OSP_VER"

    const-string/jumbo v3, "OSP_02"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "MODE"

    const-string/jumbo v3, "ADD_ACCOUNT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "Is_From_SA_Verify"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->setResult(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REQUEST_BACKUP_PASWORD_CREATE : Backup type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->setBiometricsBackupTypeDB(Landroid/content/Context;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->launchSamsungAccount()Z

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c8 -> :sswitch_1
        0x7f0a0734 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "BiometricsSelectBackupPassword"

    const-string/jumbo v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0d02b7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->setContentView(I)V

    invoke-static {p0, v5}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->setBiometricsBackupTypeDB(Landroid/content/Context;I)Z

    const v3, 0x7f0a0734

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mSamsungAccountButton:Landroid/widget/Button;

    const v3, 0x7f0a00c8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mBackupPasswordButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mSamsungAccountButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "biometricEnrollState"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v3, 0x7f0a08b7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v3, 0x7f1203ae

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_1
    const v3, 0x7f1203b0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const v3, 0x7f1203b1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const v3, 0x7f1203af

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "Finish BiometricsSelectBackupPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
