.class public Lcom/samsung/android/knox/tima/SemTimaServiceManager;
.super Ljava/lang/Object;
.source "SemTimaServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemTimaServiceManager"


# instance fields
.field private mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SemTimaServiceManager"

    const-string/jumbo v1, "SemTimaServiceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    iget-object v0, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemTimaServiceManager"

    const-string/jumbo v1, "failed to get Tima Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getTimaVersion()Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, "SemTimaServiceManager"

    const-string/jumbo v3, "getTimaVersion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemTimaServiceManager"

    const-string/jumbo v3, "failed to et Tima Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/tima/SemTimaServiceManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SemTimaServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ""

    return-object v2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SemTimaServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ""

    return-object v2
.end method
