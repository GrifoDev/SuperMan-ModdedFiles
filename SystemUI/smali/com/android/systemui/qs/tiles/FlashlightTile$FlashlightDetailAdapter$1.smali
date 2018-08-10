.class Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$1;
.super Ljava/lang/Object;
.source "FlashlightTile.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get3(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlightLevel(IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "4004"

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get3(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlightLevel(IZ)V

    return-void
.end method
