.class public Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;
.super Landroid/app/AlertDialog;
.source "IrisConfirmBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;,
        Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;
    }
.end annotation


# instance fields
.field protected mAltPassword:Landroid/widget/EditText;

.field protected mAltPasswordBox:Landroid/widget/LinearLayout;

.field protected mAltPasswordError:Landroid/widget/TextView;

.field protected mAltPasswordGuide:Landroid/widget/TextView;

.field protected mBackupGuide:Ljava/lang/String;

.field protected mBackupInput:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mIsBPConfirmed:Z

.field private mPasswordTextRunnable:Ljava/lang/Runnable;

.field private mResult:I

.field private mSIPRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private onIrisConfirmBackupPasswordEventListener:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mResult:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->verifyPassword()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x10302d2

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mIsBPConfirmed:Z

    iput v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mResult:I

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->onIrisConfirmBackupPasswordEventListener:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private backupAndRestoreData(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "bBackup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mBackupInput:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mBackupGuide:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "bRestore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mBackupInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mBackupGuide:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0b077f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mBackupGuide:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mBackupGuide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkBackupValue(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private verifyPassword()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->checkBackupValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->resetFailedBiometricsBackupAttempts(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->reportFailedBiometricsAttempts(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mPasswordTextRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mPasswordTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->setRemaingTimeToUnlock(Landroid/content/Context;)V

    iput v6, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mResult:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b077d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mPasswordTextRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mPasswordTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$9;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mPasswordTextRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mPasswordTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    const-string/jumbo v0, "IrisConfirmBackupPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismiss() called. Result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->onIrisConfirmBackupPasswordEventListener:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mResult:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;->IrisConfirmBackupPasswordDialogEvent(I)V

    return-void
.end method

.method protected initLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setPasswordLayout()V

    const-string/jumbo v0, "bRestore"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->backupAndRestoreData(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v0, "IrisConfirmBackupPassword"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mView:Landroid/view/View;

    const v1, 0x7f1103f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordBox:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mView:Landroid/view/View;

    const v1, 0x7f1103f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mView:Landroid/view/View;

    const v1, 0x7f1103f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mView:Landroid/view/View;

    const v1, 0x7f1103f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    const v0, 0x7f0b077e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$1;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b12a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$2;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->initLayout()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$3;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method

.method protected setEditBoxListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$5;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$7;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method protected setPasswordLayout()V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setEditBoxListener()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0b077f

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    new-instance v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;-><init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mSIPRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
