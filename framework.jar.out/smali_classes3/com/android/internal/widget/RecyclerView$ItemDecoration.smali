.class public abstract Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method
