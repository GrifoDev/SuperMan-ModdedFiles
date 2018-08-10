.class public Lcom/android/server/friends/FrsService;
.super Lcom/android/server/SystemService;
.source "FrsService.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "mate_service"


# instance fields
.field private final mImpl:Lcom/samsung/android/friends/FrsServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/friends/FrsService;)Lcom/samsung/android/friends/FrsServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->onBootPhase(I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->onCleanupUser(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "mate_service"

    iget-object v1, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/friends/FrsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/friends/FrsServiceLocal;

    new-instance v1, Lcom/android/server/friends/FrsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/friends/FrsService$1;-><init>(Lcom/android/server/friends/FrsService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/friends/FrsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->onStartUser(I)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->onStopUser(I)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->onSwitchUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->onUnlockUser(I)V

    return-void
.end method
