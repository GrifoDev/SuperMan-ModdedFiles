.class final Landroid/app/SystemServiceRegistry$105;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/os/SemDmfManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/SemDmfManager;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DmfManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISemDmfManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISemDmfManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "SystemServiceRegistry"

    const-string/jumbo v3, "Failed to get Dmf manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    new-instance v2, Landroid/os/SemDmfManager;

    invoke-direct {v2, v1}, Landroid/os/SemDmfManager;-><init>(Landroid/os/ISemDmfManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$105;->createService(Landroid/app/ContextImpl;)Landroid/os/SemDmfManager;

    move-result-object v0

    return-object v0
.end method
