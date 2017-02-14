.class Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field final synthetic val$idx:I

.field final synthetic val$removeView:Lcom/android/systemui/qs/customize/CustomizeTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/CustomizeTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "moveTile onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
