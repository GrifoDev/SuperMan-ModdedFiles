.class public Lcom/android/contacts/common/list/PinnedHeaderListView;
.super Lcom/android/contacts/common/list/AutoScrollListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

.field private b:I

.field private c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/widget/AbsListView$OnScrollListener;

.field private f:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:J

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/list/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->d:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->h:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->i:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->j:I

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->k:Z

    :goto_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->k:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V
    .locals 7

    const/4 v5, 0x0

    iget-boolean v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->k:J

    sub-long/2addr v0, p3

    long-to-int v0, v0

    if-gtz v0, :cond_3

    iget v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->j:I

    iput v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iget-boolean v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->h:Z

    iput-boolean v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    :cond_0
    :goto_0
    iget-boolean v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v0, :cond_2

    iget-object v1, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->m:I

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_1
    int-to-float v0, v0

    iget v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->d:Landroid/graphics/RectF;

    iget v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->e:I

    const/16 v4, 0x1f

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void

    :cond_3
    iget v1, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->j:I

    iget v2, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->i:I

    iget v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->j:I

    sub-int/2addr v2, v3

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->j:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->m:I

    goto :goto_1
.end method

.method private c(I)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_1

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v0

    :goto_0
    if-eqz v3, :cond_2

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, p1

    iput v0, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->n:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method private d(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v1, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->u(I)I

    move-result v2

    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v1

    iget-boolean v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v4, :cond_2

    iget v3, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, v2

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPositionFromTop(III)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->c(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public a(IIZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->c(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    return-void
.end method

.method public a(IZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-ne v1, v3, :cond_2

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->i:I

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    if-nez v1, :cond_1

    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->j:I

    :cond_1
    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->l:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->k:J

    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->h:Z

    :goto_0
    return-void

    :cond_2
    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    goto :goto_0
.end method

.method public b(I)I
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(IIZ)V
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->c(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->l:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->k:J

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->i:I

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->j:I

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->i:I

    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->h:Z

    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->l:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->k:J

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->j:I

    goto :goto_0

    :cond_2
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->i:I

    goto :goto_1

    :cond_3
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    goto :goto_0
.end method

.method public c(IIZ)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->c(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    const/16 v2, 0xff

    iput v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->e:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->g:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v2

    iput v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    iget v3, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    if-ge v0, v3, :cond_0

    sub-int/2addr v0, v3

    add-int v4, v3, v0

    mul-int/lit16 v4, v4, 0xff

    div-int v3, v4, v3

    iput v3, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->e:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v2

    move v4, v3

    move v5, v2

    move v6, v3

    move v2, v3

    :goto_1
    iget v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-ge v2, v8, :cond_4

    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v8, v8, v2

    iget-boolean v9, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v9, :cond_0

    iget v4, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-ne v4, v7, :cond_2

    iget v4, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    if-ge v4, v5, :cond_2

    iget v5, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    move v4, v7

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    iget v4, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-eqz v4, :cond_3

    iget v4, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-ne v4, v10, :cond_d

    :cond_3
    iget v4, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iget v8, v8, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    add-int/2addr v4, v8

    if-le v4, v6, :cond_d

    move v6, v4

    move v4, v7

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_5
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-lez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_3
    iget v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    :cond_6
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_a

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v2

    iget-boolean v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v5, :cond_7

    iget v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-eqz v5, :cond_8

    iget v5, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-ne v5, v10, :cond_7

    :cond_8
    invoke-direct {p0, p1, v4, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_3

    :cond_a
    :goto_5
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-ge v3, v2, :cond_c

    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v2, v3

    iget-boolean v4, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v4, :cond_b

    iget v4, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-ne v4, v7, :cond_b

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a()V

    return-void

    :cond_d
    move v4, v7

    goto :goto_2
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 3

    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-nez v2, :cond_0

    iget v0, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iget v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->i:Z

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->g:I

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v6

    iget-boolean v7, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v7, :cond_2

    iget v7, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    if-gt v7, v3, :cond_2

    iget v7, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iget v8, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    add-int/2addr v7, v8

    if-le v7, v3, :cond_2

    if-lt v4, v6, :cond_2

    iget-object v5, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_2

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->i:Z

    iget-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->d(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v2

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v0

    iget-boolean v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->b:Z

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    if-nez v4, :cond_1

    iget v1, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    iget v3, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->d:I

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->f:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v0, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->c:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v1, :cond_4

    invoke-virtual {p0, p3, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/AutoScrollListView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->m:I

    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->m:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->n:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->F()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    new-array v1, v1, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    new-instance v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/common/list/PinnedHeaderListView$1;)V

    aput-object v2, v1, v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->a:Landroid/view/View;

    invoke-interface {v2, v0, v3, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->a:Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v1, v1

    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->b:I

    new-array v2, v2, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->c:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->j:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->l:J

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v0, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->a(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a()V

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->g:I

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->i:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->a:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->f:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public setScrollToSectionOnHeaderTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->h:Z

    return-void
.end method
