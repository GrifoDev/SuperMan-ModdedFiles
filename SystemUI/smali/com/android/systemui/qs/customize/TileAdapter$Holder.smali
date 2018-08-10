.class public Lcom/android/systemui/qs/customize/TileAdapter$Holder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation


# instance fields
.field private mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearDrag()V
    .locals 2

    const v1, 0x7f0a052e

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public startDrag()V
    .locals 4

    const-wide/16 v2, 0x64

    const v1, 0x3f99999a    # 1.2f

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const v1, 0x7f0a052e

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public stopDrag()V
    .locals 6

    const-wide/16 v4, 0x64

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const v1, 0x7f0a052e

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
