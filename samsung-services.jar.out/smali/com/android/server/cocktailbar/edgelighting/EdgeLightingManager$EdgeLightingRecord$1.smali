.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord$1;
.super Lcom/samsung/android/edge/IEdgeLightingResponse$Stub;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Landroid/os/IBinder;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;

    iget-object v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-wrap1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;)V

    return-void
.end method
