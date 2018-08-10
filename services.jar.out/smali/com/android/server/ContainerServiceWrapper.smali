.class public Lcom/android/server/ContainerServiceWrapper;
.super Ljava/lang/Object;
.source "ContainerServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ContainerServiceWrapper$1;,
        Lcom/android/server/ContainerServiceWrapper$2;
    }
.end annotation


# static fields
.field private static final MSG_SERVICE_DIED:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field info:Lcom/android/server/ContainerServiceInfo;

.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContainerService:Lcom/samsung/android/knox/IContainerService;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field mService:Lcom/android/server/pm/PersonaServiceProxy;

.field public name:Landroid/content/ComponentName;

.field public userid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ContainerServiceWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/ContainerServiceWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/ContainerServiceWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/ContainerServiceWrapper;Lcom/samsung/android/knox/IContainerService;)Lcom/samsung/android/knox/IContainerService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/ContainerServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ContainerServiceWrapper;->triggerRestart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "KnoxService::ContainerServiceWrapper"

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/ContainerServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$1;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/ContainerServiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$2;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    iput-object p3, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    iget v0, p3, Lcom/android/server/ContainerServiceInfo;->userid:I

    iput v0, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    iget-object v0, p3, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->category:Ljava/lang/String;

    iget-object v0, p3, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    return-void
.end method

.method private triggerRestart()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already bound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    iget-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t bind to container service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return v1
.end method

.method public disconnect()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    iput-boolean v2, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ubinding service is successful..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return v0
.end method

.method public onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/IContainerService;->onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException: name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-object v4
.end method
