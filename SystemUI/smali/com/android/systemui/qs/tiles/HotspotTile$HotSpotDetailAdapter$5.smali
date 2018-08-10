.class Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$5;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->showWifiSharingEnablingPopup()V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1207a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$5;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->-get1(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
