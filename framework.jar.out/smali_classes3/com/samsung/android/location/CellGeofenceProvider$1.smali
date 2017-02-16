.class Lcom/samsung/android/location/CellGeofenceProvider$1;
.super Lcom/samsung/android/location/ISLocationCellInterface$Stub;
.source "CellGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/CellGeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/location/CellGeofenceProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/location/CellGeofenceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/location/CellGeofenceProvider;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationCellInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCellGeofence(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap0(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    .line 80
    return-void
.end method

.method public enableCellGeofence(II)V
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "geofenceState"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap1(Lcom/samsung/android/location/CellGeofenceProvider;II)V

    .line 83
    return-void
.end method

.method public initCellGeofence(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap2(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    .line 77
    return-void
.end method

.method public removeCellGeofence(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap3(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    .line 86
    return-void
.end method

.method public startCollectCell(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap4(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    .line 89
    return-void
.end method

.method public stopCollectCell(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap5(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    .line 92
    return-void
.end method

.method public syncCellGeofence([II[II)V
    .locals 1
    .param p1, "geofenceIdArray"    # [I
    .param p2, "geofenceIdArraySize"    # I
    .param p3, "enabledIdArray"    # [I
    .param p4, "enabledIdSize"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap6(Lcom/samsung/android/location/CellGeofenceProvider;[II[II)V

    .line 95
    return-void
.end method
