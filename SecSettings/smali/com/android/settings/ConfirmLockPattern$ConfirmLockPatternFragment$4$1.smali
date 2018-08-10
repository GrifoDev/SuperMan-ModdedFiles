.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$localUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    iput p5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set4(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    invoke-virtual {v1, v8, v2, p2, v3}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_0
    return-void

    :cond_2
    if-eqz v8, :cond_1

    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    iget v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;Landroid/content/Intent;IILjava/util/List;)V

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v9, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    iget v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v4

    iget v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    :goto_1
    invoke-static {v9, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v3, v3, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v4

    iget v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localUserId:I

    const/4 v3, 0x1

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    goto :goto_1
.end method
