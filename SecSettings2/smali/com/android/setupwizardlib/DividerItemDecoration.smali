.class public Lcom/android/setupwizardlib/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;,
        Lcom/android/setupwizardlib/DividerItemDecoration$DividerCondition;
    }
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerCondition:I

.field private mDividerHeight:I

.field private mDividerIntrinsicHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/DividerItemDecoration;
    .locals 7

    const/4 v6, 0x0

    sget-object v5, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration:[I

    invoke-virtual {p0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_listDivider:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_dividerHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_suwDividerCondition:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-direct {v1}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerHeight(I)V

    invoke-virtual {v1, v3}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerCondition(I)V

    return-object v1
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    instance-of v4, v0, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    invoke-interface {v0}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedBelow()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-nez v4, :cond_2

    return v6

    :cond_0
    iget v4, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-eq v4, v6, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    return v5

    :cond_2
    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v4, v3, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    invoke-interface {v3}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedAbove()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    return v6

    :cond_4
    return v5
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz v6, :cond_2

    iget v2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v3, v6, v7

    iget-object v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    add-int v7, v3, v2

    invoke-virtual {v6, v8, v3, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    :goto_0
    iput-object p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0
.end method

.method public setDividerCondition(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    return-void
.end method
