.class final Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LayoutParams"
.end annotation


# instance fields
.field private mAlignMultiple:[I

.field private mAlignX:I

.field private mAlignY:I

.field private mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

.field private mBottomInset:I

.field private mLeftInset:I

.field private mRightInset:I

.field private mTopInset:I


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    return v0
.end method

.method static synthetic -get1(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    return v0
.end method

.method static synthetic -get2(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    return v0
.end method

.method static synthetic -get3(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    return v0
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method


# virtual methods
.method calculateItemAlignments(ILandroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    array-length v2, v2

    array-length v3, v0

    if-eq v2, v3, :cond_1

    :cond_0
    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget-object v3, v0, v1

    invoke-static {p2, v3, p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget v2, v2, v4

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget v2, v2, v4

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    goto :goto_1
.end method

.method getAlignMultiple()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    return-object v0
.end method

.method getAlignX()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    return v0
.end method

.method getAlignY()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    return v0
.end method

.method getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    return-object v0
.end method

.method getOpticalHeight(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getOpticalLeft(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getOpticalLeftInset()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    return v0
.end method

.method getOpticalRight(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getOpticalTop(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getOpticalTopInset()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    return v0
.end method

.method getOpticalWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method setAlignX(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    return-void
.end method

.method setAlignY(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    return-void
.end method

.method setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    return-void
.end method

.method setOpticalInsets(IIII)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    iput p3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    return-void
.end method
