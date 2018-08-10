.class public final Lcom/samsung/android/tsp/SemTspStateManager;
.super Ljava/lang/Object;
.source "SemTspStateManager.java"


# static fields
.field public static final DEAD_ZONE_DIRECTION:Ljava/lang/String; = "dead_zone_direction"

.field public static final DEAD_ZONE_LAND_X1:Ljava/lang/String; = "dead_zone_land_x1"

.field public static final DEAD_ZONE_PORT_REAL_Y1:Ljava/lang/String; = "dead_zone_port_real_y1"

.field public static final DEAD_ZONE_PORT_X1:Ljava/lang/String; = "dead_zone_port_x1"

.field public static final DEAD_ZONE_PORT_X2:Ljava/lang/String; = "dead_zone_port_x2"

.field public static final DEAD_ZONE_PORT_Y1:Ljava/lang/String; = "dead_zone_port_y1"

.field public static final DEAD_ZONE_PORT_Y2:Ljava/lang/String; = "dead_zone_port_y2"

.field public static final DEAD_ZONE_SET_PROCESS_NAME:Ljava/lang/String; = "dead_zone_process_name"

.field public static final EDGE_ZONE_LAND:Ljava/lang/String; = "edge_zone_land"

.field public static final EDGE_ZONE_PORT:Ljava/lang/String; = "edge_zone_port"

.field public static final EDGE_ZONE_WIDTH:Ljava/lang/String; = "edge_zone_width"

.field private static final TAG:Ljava/lang/String; = "SemTspStateManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The argument is null. decorView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",deadZone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/ViewRootImpl;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The decorview is not attached."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setTspDeadzone(Landroid/os/Bundle;)V

    return-void
.end method

.method public static setDeadZoneHole(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "deadZoneHole is null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setDeadzoneHole(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
