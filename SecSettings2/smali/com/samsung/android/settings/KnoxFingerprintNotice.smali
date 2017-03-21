.class public Lcom/samsung/android/settings/KnoxFingerprintNotice;
.super Landroid/app/Activity;
.source "KnoxFingerprintNotice.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContName:Ljava/lang/String;

.field private mDisplayKnoxName:Ljava/lang/String;

.field private mFingerprintHelpText:Landroid/widget/TextView;

.field private mFingerprintText:Landroid/widget/TextView;

.field private mHeading:Landroid/widget/TextView;

.field private mIsFromKnoxSetupWizard:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordText:Landroid/widget/TextView;

.field private mRequested:I

.field private mStartBtn:Landroid/widget/Button;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/KnoxFingerprintNotice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "KnoxFingerprintNotice"

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "KNOX"

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mContName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mIsFromKnoxSetupWizard:Z

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/samsung/android/settings/KnoxFingerprintNotice;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "knox_notice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private isEnabledShowBtnBg(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4

    const-string/jumbo v1, "KnoxFingerprintNotice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setBiometricSetupView()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    const v9, 0x7f110419

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f11041a

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v9, 0x7f11041e

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v9, 0x7f11041f

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f11041b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f1101c1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v9, 0x7f11041d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v9, 0x10000

    if-gt v0, v9, :cond_8

    const v9, 0x7f0b1069

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    :goto_0
    const-string/jumbo v9, "KnoxFingerprintNotice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "strLockType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mContName:Ljava/lang/String;

    aput-object v10, v9, v12

    const v10, 0x7f0b0ad2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u2022 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v8, v10, v12

    const v11, 0x7f0b0ea7

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mContName:Ljava/lang/String;

    aput-object v10, v9, v12

    const v10, 0x7f0b079c

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v6, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u2022 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v8, v10, v12

    const v11, 0x7f0b0ea8

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v7, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u2022 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mContName:Ljava/lang/String;

    aput-object v11, v10, v12

    const v11, 0x7f0b0eaa

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v3, :cond_6

    const v9, 0x7f02040c

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    if-eqz v5, :cond_7

    const v9, 0x7f02040d

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    iget v9, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    packed-switch v9, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const v10, 0x7f0b0eb2

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setTitle(I)V

    :goto_1
    const v9, 0x7f11041c

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mStartBtn:Landroid/widget/Button;

    iget-object v9, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mStartBtn:Landroid/widget/Button;

    new-instance v10, Lcom/samsung/android/settings/KnoxFingerprintNotice$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice$2;-><init>(Lcom/samsung/android/settings/KnoxFingerprintNotice;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    const/high16 v9, 0x40000

    if-ge v0, v9, :cond_9

    const v9, 0x7f0b106b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_9
    const v9, 0x7f0b106d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const v10, 0x7f0b0eb3

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f0b0ea4

    const v11, 0x7f0b0eab

    const/16 v10, 0xb

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "isFromKnoxSetupWizard"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mIsFromKnoxSetupWizard:Z

    const-string/jumbo v5, "displayKnoxName"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mDisplayKnoxName:Ljava/lang/String;

    const-string/jumbo v5, "persona"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-boolean v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mIsFromKnoxSetupWizard:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mDisplayKnoxName:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mContName:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string/jumbo v5, "KnoxFingerprintNotice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[KNOX] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDisplayKnoxName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "knox_notice"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "securefolder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    iget v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    if-ne v5, v10, :cond_3

    const v5, 0x7f04014f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->setContentView(I)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->setBiometricSetupView()V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mContName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v5, 0x7f04014e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->setContentView(I)V

    goto :goto_1

    :cond_4
    const v5, 0x7f040150

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->setContentView(I)V

    const v5, 0x7f1101a5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    const v5, 0x7f110421

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintText:Landroid/widget/TextView;

    const v5, 0x7f110422

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const v5, 0x7f110424

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const-string/jumbo v5, "KnoxFingerprintNotice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deviceQuality:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x10000

    if-gt v1, v5, :cond_7

    iget v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    if-ne v5, v10, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const v6, 0x7f0b0ea5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f0b1069

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string/jumbo v5, "KnoxFingerprintNotice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requested value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v5, "KnoxFingerprintNotice"

    const-string/jumbo v6, "invalid request valued"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :pswitch_0
    const v5, 0x7f11041c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mStartBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->isEnabledShowBtnBg(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mStartBtn:Landroid/widget/Button;

    const v6, 0x7f0204c4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mStartBtn:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/KnoxFingerprintNotice$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice$1;-><init>(Lcom/samsung/android/settings/KnoxFingerprintNotice;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f0b1069

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    const/high16 v5, 0x40000

    if-ge v1, v5, :cond_9

    iget v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    if-ne v5, v10, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const v6, 0x7f0b0ea5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f0b106b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f0b106b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    iget v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mRequested:I

    if-ne v5, v10, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const v6, 0x7f0b0ea5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f0b106d

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f0b106d

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_1
    const-string/jumbo v5, "KnoxFingerprintNotice"

    const-string/jumbo v6, "wrong request valued"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    const v6, 0x7f0b0eae

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintText:Landroid/widget/TextView;

    const v6, 0x7f0b0e98

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    const v6, 0x7f0b0eae

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintText:Landroid/widget/TextView;

    const v6, 0x7f0b0e98

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    const v6, 0x7f0b0eae

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->sendIntentToKnoxKeyguard(I)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
