.class public Lcom/android/settings/fingerprint/FingerprintConfirm;
.super Landroid/app/Activity;
.source "FingerprintConfirm.java"


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintConfirm;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintConfirm;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v1, p0, v2, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0672

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b06a8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$4;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirm$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$5;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4

    const v1, 0x7f0b0674

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f0b0675

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0672

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$2;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirm$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$3;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v5, "FpstFingerprintConfirm"

    const-string/jumbo v6, "[onCreate]"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v5, :cond_0

    const-string/jumbo v5, "FpstFingerprintConfirm"

    const-string/jumbo v6, "mSecFingerprintManager is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0b0674

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "password"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "persona"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "FpstFingerprintConfirm"

    const-string/jumbo v6, "isEnabledFingerprintIndex is true."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    const-string/jumbo v5, "FpstFingerprintConfirm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finger index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "request_template_index_list"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->identifyFinger(Landroid/os/Bundle;)I

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v5, "FpstFingerprintConfirm"

    const-string/jumbo v6, "identifyFinger start"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    const-string/jumbo v5, "FpstFingerprintConfirm"

    const-string/jumbo v6, "personaInfo.isEnabledFingerprintIndex is null."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "FpstFingerprintConfirm"

    const-string/jumbo v6, "personaInfo.isEnabledFingerprintIndex is false."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v5, -0x4

    if-ne v4, v5, :cond_6

    const-string/jumbo v5, "FpstFingerprintConfirm"

    const-string/jumbo v6, "RESULT_DATABASE_FAILURE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V

    goto :goto_2

    :cond_6
    const-string/jumbo v5, "FpstFingerprintConfirm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Other Error occured : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
