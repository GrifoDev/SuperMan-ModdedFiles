.class public Lcom/samsung/android/settings/iris/UseIrisLockSettings;
.super Landroid/app/Activity;
.source "UseIrisLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mFaceUnlock:Landroid/widget/CheckedTextView;

.field private mFaceUnlockBtnArea:Landroid/view/View;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisUnlock:Landroid/widget/CheckedTextView;

.field private mIrisUnlockBtnArea:Landroid/view/View;

.field private mLaterBtn:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeArea:Landroid/widget/RadioGroup;

.field private mOkBtn:Landroid/widget/Button;

.field private mOneBtnContainer:Landroid/widget/LinearLayout;

.field private mTurnOnBtn:Landroid/widget/Button;

.field private mTwoBtnContainer:Landroid/widget/LinearLayout;

.field private mUserId:I

.field private misFaceLockEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    return-void
.end method

.method private getCurrentLockType()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v0, ""

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c99

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c95

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c97

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c93

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c91

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120849

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

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

.method private setIrisLockDescription()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120e56

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120924

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getCurrentLockType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120923

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getCurrentLockType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x100

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Turn on pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->finish()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLaterBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Later pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "OK pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1, v2, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1, v2, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    if-ne p1, v1, :cond_8

    :cond_7
    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Face unlock button enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    if-eq p1, v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    if-ne p1, v1, :cond_1

    :cond_9
    const-string/jumbo v1, "UseIrisLockSettings"

    const-string/jumbo v2, "Iris unlock button enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const v0, 0x7f0d0361

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isFaceLockEnabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "knox_userId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    const-string/jumbo v0, "UseIrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "UseIrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Face is enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a044c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->descriptionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setIrisLockDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a04e5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    const v0, 0x7f0a0457

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a0456

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a05eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a090e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0487

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLaterBtn:Landroid/widget/Button;

    const v0, 0x7f0a0902

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    const v0, 0x7f0a05e7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->misFaceLockEnabled:Z

    if-eqz v0, :cond_3

    const v0, 0x7f120e57

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTwoBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLaterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlockBtnArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mIrisUnlockBtnArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mFaceUnlock:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mUserId:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mTurnOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f120922

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mLockTypeArea:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->mOneBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "UseIrisLockSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "UseIrisLockSettings"

    const-string/jumbo v1, "isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseIrisLockSettings;->finish()V

    return-void

    :cond_1
    return-void
.end method
