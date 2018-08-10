.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;
.super Landroid/os/ContainerStateReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v0, p2, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, p2, v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, p2, v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, p2, v2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_0
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v0, p2, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v0, p2, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method
