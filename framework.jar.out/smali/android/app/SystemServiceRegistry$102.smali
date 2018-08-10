.class final Landroid/app/SystemServiceRegistry$102;
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
        "Landroid/app/BarBeamCommandImpl;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/app/BarBeamCommandImpl;
    .locals 3

    const-string/jumbo v2, "barbeam"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IBarBeamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamService;

    move-result-object v1

    new-instance v2, Landroid/app/BarBeamCommandImpl;

    invoke-direct {v2, v1}, Landroid/app/BarBeamCommandImpl;-><init>(Landroid/app/IBarBeamService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$102;->createService(Landroid/app/ContextImpl;)Landroid/app/BarBeamCommandImpl;

    move-result-object v0

    return-object v0
.end method
