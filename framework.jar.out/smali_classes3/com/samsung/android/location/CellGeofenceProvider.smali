.class public Lcom/samsung/android/location/CellGeofenceProvider;
.super Ljava/lang/Object;
.source "CellGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/CellGeofenceProvider$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CellGeofenceProvider"

.field private static mEnabled:Z


# instance fields
.field private mSGeofenceCellInterface:Lcom/samsung/android/location/ISLocationCellInterface;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/location/CellGeofenceProvider;I)V
    .locals 0
    .param p1, "geofenceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->native_add_cell_geofence(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/location/CellGeofenceProvider;II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "geofenceState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/location/CellGeofenceProvider;->native_enable_cell_geofence(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/location/CellGeofenceProvider;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->native_init_cell_geofence(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/location/CellGeofenceProvider;I)V
    .locals 0
    .param p1, "geofenceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->native_remove_cell_geofence(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/location/CellGeofenceProvider;I)V
    .locals 0
    .param p1, "geofenceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->native_start_collect_cell(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/location/CellGeofenceProvider;I)V
    .locals 0
    .param p1, "geofenceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->native_stop_collect_cell(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/location/CellGeofenceProvider;[II[II)V
    .locals 0
    .param p1, "geofenceIdArray"    # [I
    .param p2, "geofenceIdArraySize"    # I
    .param p3, "enabledIdArray"    # [I
    .param p4, "enabledIdSize"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/location/CellGeofenceProvider;->native_sync_cell_geofence([II[II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/location/CellGeofenceProvider;->mEnabled:Z

    .line 123
    invoke-static {}, Lcom/samsung/android/location/CellGeofenceProvider;->class_init_native()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/location/CellGeofenceProvider;->mEnabled:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/samsung/android/location/CellGeofenceProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/location/CellGeofenceProvider$1;-><init>(Lcom/samsung/android/location/CellGeofenceProvider;)V

    iput-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider;->mSGeofenceCellInterface:Lcom/samsung/android/location/ISLocationCellInterface;

    .line 44
    return-void
.end method

.method private static native class_init_native()Z
.end method

.method private native native_add_cell_geofence(I)V
.end method

.method private native native_cleanup_cell_geofence()V
.end method

.method private native native_enable_cell_geofence(II)V
.end method

.method private native native_init()Z
.end method

.method private native native_init_cell_geofence(I)V
.end method

.method private native native_remove_cell_geofence(I)V
.end method

.method private native native_start_collect_cell(I)V
.end method

.method private native native_stop_collect_cell(I)V
.end method

.method private native native_sync_cell_geofence([II[II)V
.end method

.method private reportCellGeofenceDetected(II)V
    .locals 4
    .param p1, "area_inout"    # I
    .param p2, "geofenceId"    # I

    .prologue
    .line 101
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 102
    .local v1, "mService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v1, p2, p1}, Lcom/samsung/android/location/ISLocationManager;->reportCellGeofenceDetected(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportCellGeofenceRequestFail(I)V
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 112
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 113
    .local v1, "mService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->reportCellGeofenceRequestFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "CellGeofenceProvider"

    const-string/jumbo v1, "CellGeofenceProvider is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 47
    const-string/jumbo v2, "CellGeofenceProvider"

    const-string/jumbo v3, "CellGeofenceProvider is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/location/CellGeofenceProvider;->native_init()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 52
    .local v1, "mService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/location/CellGeofenceProvider;->getSGeofenceCellInterface()Lcom/samsung/android/location/ISLocationCellInterface;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/location/ISLocationManager;->setGeofenceCellInterface(Lcom/samsung/android/location/ISLocationCellInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "mService":Lcom/samsung/android/location/ISLocationManager;
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v1    # "mService":Lcom/samsung/android/location/ISLocationManager;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "mService":Lcom/samsung/android/location/ISLocationManager;
    :cond_1
    const-string/jumbo v2, "CellGeofenceProvider"

    const-string/jumbo v3, "CellGeofenceProvider enable is failed...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSGeofenceCellInterface()Lcom/samsung/android/location/ISLocationCellInterface;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider;->mSGeofenceCellInterface:Lcom/samsung/android/location/ISLocationCellInterface;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/samsung/android/location/CellGeofenceProvider;->mEnabled:Z

    return v0
.end method
