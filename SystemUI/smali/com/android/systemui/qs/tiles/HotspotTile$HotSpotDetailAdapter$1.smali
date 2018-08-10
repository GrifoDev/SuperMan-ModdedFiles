.class Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setupDetailView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->-get1(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->-wrap1(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateHotSpotApInfo()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    goto :goto_0
.end method
