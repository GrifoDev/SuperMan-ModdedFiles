.class public Lcom/android/settings/fingerprint/FingerprintConfirm;
.super Landroid/app/Activity;
.source "FingerprintConfirm.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;
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

    const v2, 0x7f120b20

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120b3e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

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
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "FpstFingerprintConfirm"

    const-string/jumbo v3, "[onCreate]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "FpstFingerprintConfirm"

    const-string/jumbo v3, "mSecFingerprintManager is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f120b6a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->identifyFinger(Landroid/os/Bundle;)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "FpstFingerprintConfirm"

    const-string/jumbo v3, "identifyFinger start"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    const-string/jumbo v2, "FpstFingerprintConfirm"

    const-string/jumbo v3, "RESULT_DATABASE_FAILURE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "FpstFingerprintConfirm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Other Error occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0
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
