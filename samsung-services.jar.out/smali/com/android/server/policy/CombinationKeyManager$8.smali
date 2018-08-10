.class Lcom/android/server/policy/CombinationKeyManager$8;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$8;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager$8;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CombinationKeyManager"

    const-string/jumbo v3, "Stop Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CombinationKeyManager"

    const-string/jumbo v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
