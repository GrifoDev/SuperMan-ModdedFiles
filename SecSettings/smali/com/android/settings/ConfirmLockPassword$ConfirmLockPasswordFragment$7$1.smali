.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$localUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;Landroid/content/Intent;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localEffectiveUserId:I

    iput p4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localUserId:I

    iput-object p5, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$pin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set4(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token_iris"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get1(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-nez v8, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get3(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localEffectiveUserId:I

    move/from16 v0, p2

    invoke-virtual {v2, v8, v3, v0, v4}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_0
    return-void

    :cond_2
    new-instance v7, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1$1;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2, v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1$1;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v0, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localUserId:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$pin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v4, v4, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get1(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localUserId:I

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    :goto_1
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set3(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v9, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$pin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$2:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get1(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->val$localUserId:I

    const/4 v11, 0x0

    move-object v15, v7

    invoke-static/range {v9 .. v15}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    goto :goto_1
.end method
