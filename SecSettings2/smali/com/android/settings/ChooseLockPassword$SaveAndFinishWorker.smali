.class Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 15

    const/16 v14, 0x64

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get11()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get5()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_7

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get13()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    :cond_1
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get11()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get5()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_2
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v6, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v3

    :goto_2
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge_2nd:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    const-string/jumbo v6, "ChooseLockPassword"

    const-string/jumbo v7, "critical: no token returned for known good password."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "hw_auth_token"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_6

    const-string/jumbo v6, "hw_auth_token_2nd"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_6
    return-object v2

    :cond_7
    iget v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    goto :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get14()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_9
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get14()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_3

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v11, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-nez v6, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v10}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_1

    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v11}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x1

    :try_start_1
    new-array v3, v6, [B

    const/4 v6, -0x1

    const/4 v7, 0x0

    aput-byte v6, v3, v7

    const-string/jumbo v6, "ChooseLockPassword"

    const-string/jumbo v7, "critical: challenge returned zero."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 12

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p11

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJJI)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    move/from16 v0, p11

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->start()V

    return-void
.end method
