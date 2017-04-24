.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->lockSecureFolderIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    const-string/jumbo v3, "SecureFolder"

    const-string/jumbo v4, "lockSecureFolderIfNeeded"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/server/am/ActivityStackSupervisor$1$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor$1$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor$1;ILcom/android/server/am/ActivityRecord;Lcom/android/server/pm/PersonaManagerService;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
