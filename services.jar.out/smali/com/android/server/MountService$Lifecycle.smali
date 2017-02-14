.class public Lcom/android/server/MountService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMountService:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap18(Lcom/android/server/MountService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap8(Lcom/android/server/MountService;)V

    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap12(Lcom/android/server/MountService;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/MountService;

    invoke-virtual {p0}, Lcom/android/server/MountService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    const-string/jumbo v0, "mount"

    iget-object v1, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MountService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap17(Lcom/android/server/MountService;)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-set1(Lcom/android/server/MountService;I)I

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;I)V

    return-void
.end method
