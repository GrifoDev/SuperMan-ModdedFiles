.class Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;
.super Ljava/lang/Object;
.source "FlashlightTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->updateDetailView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get3(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getFlashlightLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->val$state:Z

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->val$state:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method
