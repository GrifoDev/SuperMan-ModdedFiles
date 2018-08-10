.class public Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;
.super Landroid/app/Activity;
.source "UseFaceLockSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mIsIrisLockEnabled:Z

.field private mIsSecured:Z

.field private mIsTurnOnClicked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSelectedLockType:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsSecured:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsTurnOnClicked:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mSelectedLockType:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsTurnOnClicked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;)Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mSelectedLockType:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsTurnOnClicked:Z

    sget-object v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->IrisLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mSelectedLockType:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    return-void
.end method

.method private getFaceLockDescription()Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120ad7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v3, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v4, "Wrong case!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f120ad5

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "FcstUseFaceLockSettingsDialog"

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
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c99

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c95

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c97

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c93

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c91

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

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

.method private showUseFaceLockSettingsDailog()V
    .locals 11

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    if-eqz v6, :cond_2

    new-array v5, v8, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f120ac4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f120e49

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x7f120ada

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;-><init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V

    invoke-virtual {v6, v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1205fd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;-><init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$3;-><init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iget-boolean v6, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f0d02c2

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1, v9, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120ad9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getFaceLockDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12038b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;-><init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12038a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$5;-><init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const v1, 0x7f120379

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const v0, 0x7f0d02c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isSecured"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsSecured:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mUserId:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Iris is enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->mIsIrisLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->showUseFaceLockSettingsDailog()V

    return-void
.end method
