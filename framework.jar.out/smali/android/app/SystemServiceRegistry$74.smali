.class final Landroid/app/SystemServiceRegistry$74;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/media/tv/TvInputManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/media/tv/TvInputManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string/jumbo v2, "tv_input"

    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/ITvInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;

    move-result-object v1

    new-instance v2, Landroid/media/tv/TvInputManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$74;->createService()Landroid/media/tv/TvInputManager;

    move-result-object v0

    return-object v0
.end method
