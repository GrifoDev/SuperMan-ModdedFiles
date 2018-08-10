.class public Landroid/support/v7/widget/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010214

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/DividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v7, v6, v8, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v5, v7, v8

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v4, v5, v7

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v4, v7, v5, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v7}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v0, v7, v8

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v6, v0, v7

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
