.class public Lcom/android/settings/CryptKeeperInterstitial;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CryptKeeperInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mSalesCode:Ljava/lang/String;


# instance fields
.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mChangePWButton:Landroid/widget/Button;

.field private mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mIsEncryptionInterstitial:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mRequirePasswordOff:Landroid/view/View;

.field private mRequirePasswordOn:Landroid/view/View;

.field private mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mSelectOptionLayout:Landroid/widget/LinearLayout;

.field private mUnlockMethodIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/CryptKeeperInterstitial;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperInterstitial;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CryptKeeperInterstitial;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    iput-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private hasTSafeLock()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "com.skt.t_smart_charge"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    return v7
.end method

.method private isSupportUCMSecureStartUp()Z
    .locals 9

    const/4 v1, 0x0

    const-string/jumbo v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v6, "CryptKeeperInterstitial"

    const-string/jumbo v7, "failed to get UCM Service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string/jumbo v6, "CryptKeeperInterstitial"

    const-string/jumbo v7, "ERROR, UCM keyguard is not enabled in QUALITY_SMARTCARDNUMERIC"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string/jumbo v6, ""

    invoke-static {v3, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v6, "CryptKeeperInterstitial"

    const-string/jumbo v7, "failed to get agent info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string/jumbo v6, "isODESupport"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v6, "CryptKeeperInterstitial"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UCM ODE Support : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isTSafeLock()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeperInterstitial;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "off_menu_setting"

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    return v4

    :cond_0
    const v2, 0x7f0b0631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private setRequirePasswordState(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    :cond_0
    const-string/jumbo v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 5

    const-string/jumbo v3, "CryptKeeperInterstitial"

    const-string/jumbo v4, "change encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "CryptKeeperInterstitial"

    const-string/jumbo v4, "Could not find the mount service to update the encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CryptKeeperInterstitial"

    const-string/jumbo v4, "Error changing encryption password"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method isEncryptionInterstitial()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "is_encryption_interstitial"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_0
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x64

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->finish()V

    :cond_0
    if-ne p2, v4, :cond_2

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "type"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptKeeperInterstitial;->showFinalConfirmation(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/16 v2, 0x37

    if-eq p1, v2, :cond_0

    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Lcom/android/settings/CryptKeeperInterstitial;->isTSafeLock()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0663

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->startLockIntent()V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeperInterstitial;->showDialog(I)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeperInterstitial;->runKeyguardConfirmation(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CryptKeeperInterstitial"

    const-string/jumbo v3, "Alert::Keyguard confirmation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-eq p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    if-ne p1, v2, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_8

    :cond_7
    invoke-direct {p0, v5}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeperInterstitial;->showDialog(I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const v10, 0x104000a

    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v5, :cond_0

    iget v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    :cond_0
    sparse-switch v3, :sswitch_data_0

    const v4, 0x7f0b19f6

    const v2, 0x7f0b19f9

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-virtual {p0, v2, v6}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :sswitch_0
    const v4, 0x7f0b19f5

    const v2, 0x7f0b19f8

    goto :goto_0

    :sswitch_1
    const v4, 0x7f0b0667

    const v2, 0x7f0b0668

    goto :goto_0

    :sswitch_2
    const v4, 0x7f0b19f4

    const v2, 0x7f0b19f7

    goto :goto_0

    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0664

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/CryptKeeperInterstitial$1;

    invoke-direct {v6, p0}, Lcom/android/settings/CryptKeeperInterstitial$1;-><init>(Lcom/android/settings/CryptKeeperInterstitial;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/CryptKeeperInterstitial$2;

    invoke-direct {v6, p0}, Lcom/android/settings/CryptKeeperInterstitial$2;-><init>(Lcom/android/settings/CryptKeeperInterstitial;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->isEncryptionInterstitial()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_unlock_method_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_password_quality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    sget-object v1, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    :cond_1
    const v0, 0x7f040089

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "selected_button"

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v13, 0x7f110200

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    const v13, 0x7f110201

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    const v13, 0x7f1101ff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const v13, 0x7f11000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const v13, 0x7f1101fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    const v13, 0x7f110203

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    const v13, 0x7f1101fe

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const v13, 0x7f110202

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/16 v15, 0x10

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    :cond_0
    const v2, 0x7f0b0666

    const v1, 0x7f0b19e7

    sparse-switch v11, :sswitch_data_0

    const/4 v13, 0x1

    if-ne v5, v13, :cond_e

    const v9, 0x7f0b19ed

    :goto_0
    const v4, 0x7f0b19f0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    const v14, 0x7f0b19e7

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v13, v4}, Landroid/widget/CheckedTextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const v14, 0x7f0b0666

    invoke-virtual {v13, v14}, Landroid/widget/CheckedTextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "extra_require_password"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    :cond_2
    if-eqz p2, :cond_12

    const-string/jumbo v13, "selected_button"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v13, v12}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-eqz v12, :cond_11

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v14, v13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    :goto_4
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "universal_lock_switch_state"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v13

    if-eqz v13, :cond_4

    const v9, 0x7f0b0661

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_4
    const v9, 0x7f0b0660

    goto :goto_5

    :cond_5
    const v9, 0x7f0b065f

    goto :goto_5

    :cond_6
    const v9, 0x7f0b0662

    goto :goto_5

    :sswitch_1
    const/4 v13, 0x1

    if-ne v5, v13, :cond_7

    const v9, 0x7f0b19ec

    :goto_6
    const v4, 0x7f0b19ef

    goto/16 :goto_1

    :cond_7
    const/4 v13, 0x1

    if-ne v6, v13, :cond_8

    const v9, 0x7f0b065c

    goto :goto_6

    :cond_8
    const v9, 0x7f0b19e9

    goto :goto_6

    :sswitch_2
    const/4 v13, 0x1

    if-ne v5, v13, :cond_9

    const v9, 0x7f0b065a

    :goto_7
    const v4, 0x7f0b0665

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x1

    if-ne v6, v13, :cond_a

    const v9, 0x7f0b065e

    goto :goto_7

    :cond_a
    const v9, 0x7f0b0659

    goto :goto_7

    :sswitch_3
    const/4 v13, 0x1

    if-ne v5, v13, :cond_b

    const v9, 0x7f0b19eb

    :goto_8
    const v4, 0x7f0b19ee

    goto/16 :goto_1

    :cond_b
    const/4 v13, 0x1

    if-ne v6, v13, :cond_c

    const v9, 0x7f0b065b

    goto :goto_8

    :cond_c
    const v9, 0x7f0b19e8

    goto :goto_8

    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->isSupportUCMSecureStartUp()Z

    move-result v7

    if-eqz v7, :cond_d

    const v9, 0x7f0b19e8

    const v4, 0x7f0b19f0

    goto/16 :goto_1

    :cond_d
    const v9, 0x7f0b065f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_e
    const/4 v13, 0x1

    if-ne v6, v13, :cond_f

    const v9, 0x7f0b065d

    goto/16 :goto_0

    :cond_f
    const v9, 0x7f0b19ea

    goto/16 :goto_0

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_12
    const/4 v10, 0x0

    :try_start_0
    const-string/jumbo v13, "mount"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v8

    invoke-interface {v8}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_9
    const/4 v13, 0x1

    if-eq v10, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto/16 :goto_4

    :catch_0
    move-exception v3

    const-string/jumbo v13, "CryptKeeperInterstitial"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error calling mount service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x70000 -> :sswitch_4
    .end sparse-switch
.end method

.method protected startLockIntent()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CryptKeeperInterstitial"

    const-string/jumbo v1, "have "

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CryptKeeperInterstitial"

    const-string/jumbo v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->finish()V

    goto :goto_0
.end method
