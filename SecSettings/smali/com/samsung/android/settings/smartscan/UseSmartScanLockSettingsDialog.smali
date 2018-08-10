.class public Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;
.super Landroid/app/Activity;
.source "UseSmartScanLockSettingsDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsSecured:Z

.field private mIsTurnOnClicked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mIsSecured:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mIsTurnOnClicked:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mIsTurnOnClicked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mIsTurnOnClicked:Z

    return-void
.end method

.method private getSmartScanLockDescription()Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v3, "SsstUseSmartScanLockSettingsDialog"

    const-string/jumbo v4, "Wrong case!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f1219c4

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SsstUseSmartScanLockSettingsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "description : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c99

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c95

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c97

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c93

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c91

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120849

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_4
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private showUseSmartScanLockSettingsDailog()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1219c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getSmartScanLockDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12038b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog$1;-><init>(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12038a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog$2;-><init>(Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "SsstUseSmartScanLockSettingsDialog"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SsstUseSmartScanLockSettingsDialog"

    const v1, 0x7f120379

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isSecured"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mIsSecured:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->mUserId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/UseSmartScanLockSettingsDialog;->showUseSmartScanLockSettingsDailog()V

    return-void
.end method
