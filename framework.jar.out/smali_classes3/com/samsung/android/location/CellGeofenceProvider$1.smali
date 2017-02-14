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

    iput-object p1, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationCellInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCellGeofence(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap0(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    return-void
.end method

.method public enableCellGeofence(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap1(Lcom/samsung/android/location/CellGeofenceProvider;II)V

    return-void
.end method

.method public initCellGeofence(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap2(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    return-void
.end method

.method public removeCellGeofence(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap3(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    return-void
.end method

.method public startCollectCell(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap4(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    return-void
.end method

.method public stopCollectCell(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap5(Lcom/samsung/android/location/CellGeofenceProvider;I)V

    return-void
.end method

.method public syncCellGeofence([II[II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/location/CellGeofenceProvider;->-wrap6(Lcom/samsung/android/location/CellGeofenceProvider;[II[II)V

    return-void
.end method
