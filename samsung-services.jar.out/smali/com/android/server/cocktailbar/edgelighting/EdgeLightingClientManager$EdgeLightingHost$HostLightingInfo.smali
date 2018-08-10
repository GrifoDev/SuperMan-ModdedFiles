.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostLightingInfo"
.end annotation


# instance fields
.field private mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    return-void
.end method


# virtual methods
.method public getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
