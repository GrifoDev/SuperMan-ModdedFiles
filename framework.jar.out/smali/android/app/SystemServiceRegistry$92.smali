.class final Landroid/app/SystemServiceRegistry$92;
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
        "Lcom/samsung/android/aod/AODManager;",
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
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/aod/AODManager;
    .locals 3

    const-string/jumbo v1, "AODManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AODManager;

    invoke-static {v0}, Lcom/samsung/android/aod/IAODManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/aod/AODManager;-><init>(Landroid/content/Context;Lcom/samsung/android/aod/IAODManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$92;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/aod/AODManager;

    move-result-object v0

    return-object v0
.end method
