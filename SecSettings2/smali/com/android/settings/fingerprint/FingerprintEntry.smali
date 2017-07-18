.class public Lcom/android/settings/fingerprint/FingerprintEntry;
.super Landroid/app/Activity;
.source "FingerprintEntry.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEntry$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static isSearchEntry:Z

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIdentifyFingerprint:Z

.field private mIsAfw:Z

.field private mIsWaitingResult:Z

.field private mToken:[B


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintEntry;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEntry$1;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    return-void
.end method

.method private authenticateFingerprint()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    sget v3, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintEntry"

    const-string/jumbo v3, "authenticateFingerprint : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0
.end method

.method private deleteAllFingerprints()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3e8

    const/4 v4, -0x1

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "deleteAllFingerprints Success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "deleteAllFingerprints Fail"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    const/4 v4, 0x0

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v2, "launchConfirmLock "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    const v0, 0x7f0b1149

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    sget v8, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    const/16 v2, 0x65

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    :cond_0
    return-void
.end method

.method private runRegister()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "FpstFingerprintEntry"

    const-string/jumbo v6, "There is no enrolled fingerprint. Run RegisterFingerprint!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "always_finish_activities"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0b0108

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0b067a

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0672

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerprintEntry$2;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintEntry$3;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$3;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0b06e8

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "fingerprint_entry"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "hw_auth_token"

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "isAfw"

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.USER_ID"

    sget v6, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0x67

    :try_start_0
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/fingerprint/FingerprintEntry;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "FpstFingerprintEntry"

    const-string/jumbo v6, "runRegister : Activity Not Found !"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_1
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0672

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b06a8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEntry$6;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$6;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$7;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$7;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

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

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0672

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEntry$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$4;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$5;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 8

    move-object v7, p1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0xa

    new-array v3, v1, [B

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "onCreate DB Corrupt"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->deleteAllFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b0674

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "fromSearch"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "support_samsung_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "support_web_signin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "set_screen_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "alipay_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "samsung_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    const-string/jumbo v0, "FpstFingerprintEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFragment subMenuSearch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    if-eqz v0, :cond_6

    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_6
    const-string/jumbo v0, "identifyFingerprint"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    if-eqz v0, :cond_7

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b066d

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings"

    const v3, 0x7f0b066d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b066d

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v0, "FpstFingerprintEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    const/16 v0, 0x65

    if-ne p1, v0, :cond_4

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_0

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x67

    if-ne p1, v0, :cond_8

    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_5

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_8
    const/16 v0, 0x68

    if-ne p1, v0, :cond_c

    if-ne p2, v3, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0b0674

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v4, "FpstFingerprintEntry"

    const-string/jumbo v5, "=====onCreate()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    sput-boolean v7, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v6, :cond_0

    const-string/jumbo v4, "FpstFingerprintEntry"

    const-string/jumbo v5, "Mobile keyboard attached"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0b066d

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b0701

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, ":settings:fragment_args_key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, ":settings:fragment_args_key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "isAfw"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    const-string/jumbo v4, "FpstFingerprintEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "FpstFingerprintEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsAfw : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v4, :cond_2

    const-string/jumbo v4, "FpstFingerprintEntry"

    const-string/jumbo v5, "onCreate mGFingerprintManager == null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v3

    if-eqz v0, :cond_3

    const v4, 0x186c8

    if-eq v3, v4, :cond_4

    const v4, 0x186c9

    if-eq v3, v4, :cond_4

    :cond_3
    const-string/jumbo v4, "FpstFingerprintEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate isHardwareDetected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", requestGetSensorStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    return-void

    :cond_4
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_5

    const-string/jumbo v4, "IsWaitingResult"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-eqz v4, :cond_5

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "fingerprint_guide_shown"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v5, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    sget v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    :goto_0
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_8
    sget v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_9

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->launchChooseOrConfirmLock()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    const-string/jumbo v1, "FpstFingerprintEntry"

    const-string/jumbo v2, "=====onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0
.end method
