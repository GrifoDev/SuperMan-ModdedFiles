.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$localUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;Landroid/content/Intent;IILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localEffectiveUserId:I

    iput p4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localUserId:I

    iput-object p5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$pattern:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token_iris"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-nez v8, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localEffectiveUserId:I

    move/from16 v0, p2

    invoke-virtual {v2, v8, v3, v0, v4}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_0
    return-void

    :cond_2
    new-instance v7, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1$1;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2, v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v0, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localUserId:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$pattern:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v4, v4, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v4, v4, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localUserId:I

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    :goto_1
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set5(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v9, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$pattern:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localUserId:I

    const/4 v11, 0x1

    move-object v15, v7

    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    goto :goto_1
.end method
