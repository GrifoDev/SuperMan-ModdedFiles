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

.field private mDialog:Landroid/app/AlertDialog;

.field private mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mIfForgetPasswdMessage:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mIsEncryptionInterstitial:Z

.field private mIsNavigationBarEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mRequirePasswordOff:Landroid/view/View;

.field private mRequirePasswordOn:Landroid/view/View;

.field private mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mSUWBottomBar:Landroid/widget/RelativeLayout;

.field private mSUWContinueBtn:Landroid/widget/LinearLayout;

.field private mSUWContinueBtnImg:Landroid/widget/ImageView;

.field private mSUWContinueText:Landroid/widget/TextView;

.field private mSUWPrevBtn:Landroid/widget/LinearLayout;

.field private mSUWPrevBtnImg:Landroid/widget/ImageView;

.field private mSavedInstanceState:Landroid/os/Bundle;

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

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSavedInstanceState:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsNavigationBarEnabled:Z

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDialog:Landroid/app/AlertDialog;

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
    const v2, 0x7f120687

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

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

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
.end method

.method private setupUI(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "show_button_background"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueBtn:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueBtn:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0807c2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    :cond_1
    const v4, 0x7f120939

    const v3, 0x7f12094f

    const v9, 0x7f120958

    const v16, 0x7f1206a5

    sparse-switch v14, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_b

    const v12, 0x7f12095d

    :goto_0
    const v16, 0x7f1206a5

    const v6, 0x7f12093f

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIfForgetPasswdMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIfForgetPasswdMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const v20, 0x7f120958

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const v19, 0x7f12094f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsNavigationBarEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f12094f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v18, v0

    const v19, 0x7f120939

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckedTextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "extra_require_password"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    :cond_3
    if-eqz p1, :cond_e

    const-string/jumbo v18, "selected_button"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v18, v0

    xor-int/lit8 v19, v17, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    :goto_4
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void

    :sswitch_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v18

    const-string/jumbo v19, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "universal_lock_switch_state"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_5

    const v12, 0x7f120953

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIfForgetPasswdMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const v19, 0x7f120697

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_5
    const v12, 0x7f120955

    goto :goto_5

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_6

    const v12, 0x7f12095d

    :goto_6
    const v16, 0x7f1206a6

    const v6, 0x7f120940

    goto/16 :goto_1

    :cond_6
    const v12, 0x7f120959

    goto :goto_6

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    const v12, 0x7f12095d

    :goto_7
    const v16, 0x7f1206a4

    const v6, 0x7f12093e

    goto/16 :goto_1

    :cond_7
    const v12, 0x7f120959

    goto :goto_7

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    const v12, 0x7f12095d

    :goto_8
    const v16, 0x7f1206a7

    const v6, 0x7f120941

    goto/16 :goto_1

    :cond_8
    const v12, 0x7f120959

    goto :goto_8

    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->isSupportUCMSecureStartUp()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_9

    const v12, 0x7f12095d

    :goto_9
    const v16, 0x7f1206a7

    const v6, 0x7f12093f

    goto/16 :goto_1

    :cond_9
    const v12, 0x7f120959

    goto :goto_9

    :cond_a
    const v12, 0x7f120951

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIfForgetPasswdMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_b
    const v12, 0x7f120959

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const v19, 0x7f1213b5

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v13, 0x0

    :try_start_0
    const-string/jumbo v18, "mount"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/os/storage/IStorageManager;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :goto_a
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto/16 :goto_4

    :catch_0
    move-exception v5

    const-string/jumbo v18, "CryptKeeperInterstitial"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error calling mount service "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x10001 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x70000 -> :sswitch_4
    .end sparse-switch
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v2, "CryptKeeperInterstitial"

    const-string/jumbo v4, "change encryption password"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0468

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "SSUP"

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Require 3P when device turns on"

    :goto_1
    invoke-static {v4, v5, v6, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v2, "CryptKeeperInterstitial"

    const-string/jumbo v3, "Could not find the mount service to update the encryption password"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Do not require"

    goto :goto_1

    :cond_2
    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    new-instance v2, Lcom/android/settings/CryptKeeperInterstitial$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/settings/CryptKeeperInterstitial$4;-><init>(Lcom/android/settings/CryptKeeperInterstitial;Landroid/os/storage/IStorageManager;ILjava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeperInterstitial$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
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

.method isNavigationBarEnabled()Z
    .locals 7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "config_showNavigationBar"

    const-string/jumbo v5, "bool"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CryptKeeperInterstitial"

    const-string/jumbo v4, "Fail to get service bool value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->finish()V

    :cond_0
    if-ne p2, v4, :cond_1

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "type"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptKeeperInterstitial;->showFinalConfirmation(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x37

    if-eq p1, v2, :cond_0

    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
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
    .locals 9

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueBtn:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_8

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v8

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0468

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v4, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "SSUP"

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Require 3P when device turns on"

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->startLockIntent()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Do not require"

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperInterstitial;->isTSafeLock()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120956

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->showDialog(I)V

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "ode_password_quality"

    const-string/jumbo v1, "password"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f121c88

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/CryptKeeperInterstitial;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    :cond_7
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CryptKeeperInterstitial"

    const-string/jumbo v1, "Alert::Keyguard confirmation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    if-ne p1, v2, :cond_d

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    :goto_3
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->showDialog(I)V

    :goto_4
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2

    :cond_b
    move v2, v1

    goto :goto_3

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_4

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x104000a

    const/high16 v6, 0x1040000

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    :cond_0
    sparse-switch v1, :sswitch_data_0

    const v2, 0x7f12094a

    const v0, 0x7f120946

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/CryptKeeperInterstitial$1;

    invoke-direct {v4, p0}, Lcom/android/settings/CryptKeeperInterstitial$1;-><init>(Lcom/android/settings/CryptKeeperInterstitial;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDialog:Landroid/app/AlertDialog;

    return-object v3

    :sswitch_0
    const v2, 0x7f12094b

    const v0, 0x7f120947

    goto :goto_0

    :sswitch_1
    const v2, 0x7f120949

    const v0, 0x7f120945

    goto :goto_0

    :sswitch_2
    const v2, 0x7f12094c

    const v0, 0x7f120948

    goto :goto_0

    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120950

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/CryptKeeperInterstitial$2;

    invoke-direct {v4, p0}, Lcom/android/settings/CryptKeeperInterstitial$2;-><init>(Lcom/android/settings/CryptKeeperInterstitial;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/CryptKeeperInterstitial$3;

    invoke-direct {v4, p0}, Lcom/android/settings/CryptKeeperInterstitial$3;-><init>(Lcom/android/settings/CryptKeeperInterstitial;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x10001 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->isEncryptionInterstitial()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->isNavigationBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsNavigationBarEnabled:Z

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

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

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
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0466

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    const v0, 0x7f0d0099

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

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

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setupUI(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSavedInstanceState:Landroid/os/Bundle;

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
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a06fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    const v0, 0x7f0a06fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    const v0, 0x7f0a02cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a02ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a02d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    const v0, 0x7f0a0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIfForgetPasswdMessage:Landroid/widget/TextView;

    const v0, 0x7f0a016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    const v0, 0x7f0a02d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0858

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0875

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0874

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWPrevBtnImg:Landroid/widget/ImageView;

    const v0, 0x7f0a0870

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueBtn:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0871

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueText:Landroid/widget/TextView;

    const v0, 0x7f0a086f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueBtnImg:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsNavigationBarEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWContinueBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method protected startLockIntent()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CryptKeeperInterstitial"

    const-string/jumbo v1, "startLockIntent have "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string/jumbo v1, "startLockIntent no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->finish()V

    goto :goto_0
.end method
