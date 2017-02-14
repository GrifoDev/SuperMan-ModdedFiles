.class Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mLockVirgin:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 15

    const/16 v14, 0x64

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get8()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get3()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_7

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inside Pattern mIsSharedDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get3()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get3()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v6, v7, v10}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v6, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v3

    :cond_2
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge_2nd:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    const-string/jumbo v6, "ChooseLockPattern"

    const-string/jumbo v7, "critical: no token returned for known good pattern"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "hw_auth_token"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_5

    const-string/jumbo v6, "hw_auth_token_2nd"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get8()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_6
    :goto_2
    return-object v2

    :cond_7
    iget v5, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get3()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v11}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/ChooseLockPattern;

    invoke-static {v6, v10}, Lcom/android/settings/ChooseLockPattern;->-wrap1(Lcom/android/settings/ChooseLockPattern;I)V

    goto :goto_2

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v10}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_3
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJLjava/util/List;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJJ",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p10

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJJI)V

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->start()V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
