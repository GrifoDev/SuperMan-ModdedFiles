.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;
.super Lcom/samsung/android/edge/IEdgeManager$Stub;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeManagerService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeManagerService"


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public bindEdgeLightingService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->cancelNotification(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->disableEdgeLightingNotification(Ljava/lang/String;Z)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get1(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "EdgeManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getEdgeLightingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->getEdgeLightingState()I

    move-result v0

    return v0
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->unbindService(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    return-void
.end method
