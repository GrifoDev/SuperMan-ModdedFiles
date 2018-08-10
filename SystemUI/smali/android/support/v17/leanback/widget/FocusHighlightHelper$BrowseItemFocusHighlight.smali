.class Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FocusHighlightHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrowseItemFocusHighlight"
.end annotation


# instance fields
.field private mScaleIndex:I

.field private final mUseDimmer:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->isValidZoomIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unhandled zoom index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mScaleIndex:I

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mUseDimmer:Z

    return-void
.end method

.method private getOrCreateAnimator(Landroid/view/View;)Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;
    .locals 4

    sget v1, Landroid/support/v17/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->getScale(Landroid/content/res/Resources;)F

    move-result v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mUseDimmer:Z

    const/16 v3, 0x96

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;-><init>(Landroid/view/View;FZI)V

    sget v1, Landroid/support/v17/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getScale(Landroid/content/res/Resources;)F
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mScaleIndex:I

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mScaleIndex:I

    invoke-static {v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->getResId(I)I

    move-result v0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeView(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->getOrCreateAnimator(Landroid/view/View;)Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method

.method public onItemFocused(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->getOrCreateAnimator(Landroid/view/View;)Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method
