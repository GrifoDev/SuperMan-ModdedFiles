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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-set1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const-string/jumbo v1, "ConfirmLockDirection"

    const-string/jumbo v2, "startVerifyPattern onVerified:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "ConfirmLockDirection"

    const-string/jumbo v2, "startVerifyPattern token is not null setting token in intent:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_2nd"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v0, v2, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V

    return-void
.end method
