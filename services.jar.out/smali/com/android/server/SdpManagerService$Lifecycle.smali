.class public Lcom/android/server/SdpManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mSdpManagerService:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$Lifecycle;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->-wrap23(Lcom/android/server/SdpManagerService;I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$Lifecycle;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->-wrap24(Lcom/android/server/SdpManagerService;I)V

    return-void
.end method

.method public onStart()V
    .locals 5

    new-instance v0, Lcom/android/server/SdpManagerService;

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$Lifecycle;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    const-string/jumbo v0, "sdp"

    iget-object v1, p0, Lcom/android/server/SdpManagerService$Lifecycle;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SdpManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "Mark the beginning of sdp service! [Version : %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/SdpManagerService$Lifecycle;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->-wrap11(Lcom/android/server/SdpManagerService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$Lifecycle;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->-wrap25(Lcom/android/server/SdpManagerService;I)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$Lifecycle;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->-wrap26(Lcom/android/server/SdpManagerService;I)V

    return-void
.end method
