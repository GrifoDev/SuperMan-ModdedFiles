.class Landroid/support/v7/widget/CardView$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/support/v7/widget/CardView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/CardView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget v0, v0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/CardView;->-wrap1(Landroid/support/v7/widget/CardView;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget v0, v0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    if-le p2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    invoke-static {v0, p2}, Landroid/support/v7/widget/CardView;->-wrap0(Landroid/support/v7/widget/CardView;I)V

    :cond_1
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget-object v0, v0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget-object v1, v1, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget-object v2, v2, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v3, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget-object v3, v3, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p3

    iget-object v4, p0, Landroid/support/v7/widget/CardView$1;->this$0:Landroid/support/v7/widget/CardView;

    iget-object v4, v4, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/CardView;->-wrap2(Landroid/support/v7/widget/CardView;IIII)V

    return-void
.end method
