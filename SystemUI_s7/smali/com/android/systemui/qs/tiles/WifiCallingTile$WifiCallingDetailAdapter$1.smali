.class Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;
.super Ljava/lang/Object;
.source "WifiCallingTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->updateWifiCallingDetail(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    const v2, 0x1020019

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;I)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_preferred"

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
