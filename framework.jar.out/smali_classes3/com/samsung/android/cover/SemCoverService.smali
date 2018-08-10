.class public Lcom/samsung/android/cover/SemCoverService;
.super Landroid/app/Service;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;,
        Lcom/samsung/android/cover/SemCoverService$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemCoverService"


# instance fields
.field private mAttach:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/cover/SemCoverService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/cover/SemCoverService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/cover/SemCoverService$MyHandler;

    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cover/SemCoverService$MyHandler;-><init>(Lcom/samsung/android/cover/SemCoverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;-><init>(Lcom/samsung/android/cover/SemCoverService;Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    return-object v0
.end method

.method public onCoverAppCovered(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCoverAttached()V
    .locals 0

    return-void
.end method

.method public onCoverDetached()V
    .locals 0

    return-void
.end method

.method public onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public onSystemReady()V
    .locals 0

    return-void
.end method
