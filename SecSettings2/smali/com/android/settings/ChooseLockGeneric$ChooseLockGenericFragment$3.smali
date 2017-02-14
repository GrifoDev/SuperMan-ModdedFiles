.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    const/high16 v7, 0x10000

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_0
    const-string/jumbo v6, "SetSwipe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6, v8, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Swipe"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Swipe"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_5
    const-string/jumbo v6, "DirectionLock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v6, 0x1000

    if-ne v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DirectionLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DirectionLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v2, :cond_9

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.accessibility.directionlock.ChooseLockDirection"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    iget-boolean v6, v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "for_fingerprint"

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    iget-boolean v7, v7, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "for_iris"

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/16 v7, 0x66

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DirectionLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DirectionLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_c
    const-string/jumbo v6, "Pattern"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    if-ne v4, v7, :cond_d

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PatternLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PatternLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_d
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6, v7, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;IZ)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PatternLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PatternLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v6, "PIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/high16 v6, 0x20000

    if-eq v4, v6, :cond_10

    const/high16 v6, 0x30000

    if-ne v4, v6, :cond_11

    :cond_10
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PinLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PinLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_11
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/high16 v7, 0x20000

    invoke-static {v6, v7, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;IZ)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PinLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PinLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v6, "Password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/high16 v6, 0x40000

    if-eq v4, v6, :cond_14

    const/high16 v6, 0x50000

    if-ne v4, v6, :cond_15

    :cond_14
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PasswordLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PasswordLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_15
    const/high16 v6, 0x60000

    if-eq v4, v6, :cond_14

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/high16 v7, 0x40000

    invoke-static {v6, v7, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;IZ)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PasswordLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PasswordLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v6, "SetNone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    if-nez v3, :cond_18

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_18
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6, v8, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ScreenLockType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v6, "Fingerprints"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    if-nez v6, :cond_1b

    return-void

    :cond_1b
    if-nez v3, :cond_1c

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_1c
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get5()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get5()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v9, :cond_1f

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FingerprintLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FingerprintLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_1e
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_1f
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FingerprintLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FingerprintLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v6, "Irises"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v6

    if-nez v6, :cond_22

    return-void

    :cond_22
    if-nez v3, :cond_23

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_23
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v6

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get5()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v6

    if-eqz v6, :cond_25

    :cond_24
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get5()I

    move-result v7

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-ne v6, v9, :cond_26

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "IrisesLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "IrisesLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_25
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_26
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "IrisesLock"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "IrisesLock"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
