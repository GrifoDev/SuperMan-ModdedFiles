.class Lcom/android/server/policy/CombinationKeyManager$1;
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

    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$1;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager$1;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/CombinationKeyManager;->-set0(Lcom/android/server/policy/CombinationKeyManager;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager$1;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v1, v1, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "CombinationKeyManager"

    const-string/jumbo v2, "Access Control mesage : broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
