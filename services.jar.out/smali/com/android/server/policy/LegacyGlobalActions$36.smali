.class Lcom/android/server/policy/LegacyGlobalActions$36;
.super Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->getLockdownAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$36;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 3

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$36;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LegacyGlobalActions"

    const-string/jumbo v2, "Error while trying to lock device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
