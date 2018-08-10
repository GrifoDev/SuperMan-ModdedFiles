.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-set0(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startVerifyPattern onVerified:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startVerifyPattern token is not null setting token in intent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-nez v6, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v6, v1, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get10(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$pattern:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J

    move-result-wide v2

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$localEffectiveUserId:I

    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$pattern:Ljava/util/List;

    iget v10, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$localEffectiveUserId:I

    invoke-direct {v5, p0, v8, v9, v10}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;Landroid/content/Intent;Ljava/util/List;I)V

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-set2(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
