.class public abstract Lcom/android/systemui/statusbar/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
    }
.end annotation


# instance fields
.field private mCustomOutline:Z

.field private mOutlineAlpha:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field mProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    new-instance v0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public getOutlineAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method public getOutlineTranslation()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected needsOutline()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v0

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public setActualHeight(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBottomAmount(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    return-void
.end method

.method protected setOutlineAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineRect(FFFF)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    goto :goto_0
.end method

.method public updateOutline()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->needsOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
