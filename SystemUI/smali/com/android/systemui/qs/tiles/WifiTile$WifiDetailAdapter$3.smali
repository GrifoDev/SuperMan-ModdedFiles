.class Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get11(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-wrap4(Lcom/android/systemui/qs/tiles/WifiTile;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get11(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;->val$visible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
