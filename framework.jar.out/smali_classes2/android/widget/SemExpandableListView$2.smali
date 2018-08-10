.class Landroid/widget/SemExpandableListView$2;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get22(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get21(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get7(Landroid/widget/SemExpandableListView;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-get38(Landroid/widget/SemExpandableListView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    :cond_0
    :goto_0
    add-int v7, v4, v3

    if-nez v7, :cond_6

    return-void

    :cond_1
    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get7(Landroid/widget/SemExpandableListView;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get14(Landroid/widget/SemExpandableListView;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-get13(Landroid/widget/SemExpandableListView;)I

    move-result v9

    iget-object v10, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v10}, Landroid/widget/SemExpandableListView;->-get14(Landroid/widget/SemExpandableListView;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-get38(Landroid/widget/SemExpandableListView;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get7(Landroid/widget/SemExpandableListView;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get20(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get20(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v8

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v1, v8, v7

    if-nez v1, :cond_3

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView$ExpandingRect;->update(F)V

    goto :goto_2

    :cond_4
    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get7(Landroid/widget/SemExpandableListView;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get15(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get15(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v8

    array-length v9, v8

    :goto_3
    if-ge v7, v9, :cond_0

    aget-object v0, v8, v7

    if-nez v0, :cond_5

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/SemExpandableListView$CollapsingRect;->update(F)V

    goto :goto_4

    :cond_6
    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get8(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_7

    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get22(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get8(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v6, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_8

    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get21(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-get8(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v6, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    iget-object v7, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v8, p0, Landroid/widget/SemExpandableListView$2;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-get8(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SemExpandableListView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
