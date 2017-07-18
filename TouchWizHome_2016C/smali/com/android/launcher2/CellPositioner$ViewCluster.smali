.class Lcom/android/launcher2/CellPositioner$ViewCluster;
.super Ljava/lang/Object;
.source "CellPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher2/CellPositioner$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher2/CellPositioner;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellPositioner;Ljava/util/ArrayList;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher2/CellPositioner$ItemConfiguration;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v0}, Lcom/android/launcher2/CellPositioner;->access$000(Lcom/android/launcher2/CellPositioner;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->leftEdge:[I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v0}, Lcom/android/launcher2/CellPositioner;->access$000(Lcom/android/launcher2/CellPositioner;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->rightEdge:[I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v0}, Lcom/android/launcher2/CellPositioner;->access$100(Lcom/android/launcher2/CellPositioner;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->topEdge:[I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v0}, Lcom/android/launcher2/CellPositioner;->access$100(Lcom/android/launcher2/CellPositioner;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->bottomEdge:[I

    new-instance v0, Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher2/CellPositioner$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->comparator:Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->config:Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->resetEdges()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->resetEdges()V

    return-void
.end method

.method computeEdge(I[I)V
    .locals 10

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->config:Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    if-ltz v8, :cond_0

    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    if-gez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v5, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v4, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    :goto_2
    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v8}, Lcom/android/launcher2/CellPositioner;->access$000(Lcom/android/launcher2/CellPositioner;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-lt v5, v8, :cond_2

    aget v8, p2, v4

    if-gez v8, :cond_3

    :cond_2
    aput v5, p2, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_1
    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int v6, v8, v9

    iget v4, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    :goto_3
    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v8}, Lcom/android/launcher2/CellPositioner;->access$000(Lcom/android/launcher2/CellPositioner;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-le v6, v8, :cond_4

    aput v6, p2, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :pswitch_2
    iget v7, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v4, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    :goto_4
    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v8}, Lcom/android/launcher2/CellPositioner;->access$100(Lcom/android/launcher2/CellPositioner;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-lt v7, v8, :cond_5

    aget v8, p2, v4

    if-gez v8, :cond_6

    :cond_5
    aput v7, p2, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :pswitch_3
    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int v0, v8, v9

    iget v4, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    :goto_5
    iget v8, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v8}, Lcom/android/launcher2/CellPositioner;->access$100(Lcom/android/launcher2/CellPositioner;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-le v0, v8, :cond_7

    aput v0, p2, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getBottomEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellPositioner$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 10

    iget-boolean v3, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->boundingRectDirty:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->config:Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v3
.end method

.method public getEdge(I)[I
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getLeftEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellPositioner$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method public getRightEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellPositioner$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method public getTopEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellPositioner$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->config:Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    iget-object v5, v5, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellPositioner$ViewCluster;->getEdge(I)[I

    move-result-object v1

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    if-ltz v5, :cond_0

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    if-gez v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    packed-switch p2, :pswitch_data_0

    :cond_3
    move v3, v4

    goto :goto_0

    :pswitch_0
    iget v2, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    :goto_1
    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v5}, Lcom/android/launcher2/CellPositioner;->access$000(Lcom/android/launcher2/CellPositioner;)I

    move-result v5

    if-ge v2, v5, :cond_3

    aget v5, v1, v2

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v7, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    iget v2, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    :goto_2
    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v5}, Lcom/android/launcher2/CellPositioner;->access$000(Lcom/android/launcher2/CellPositioner;)I

    move-result v5

    if-ge v2, v5, :cond_3

    aget v5, v1, v2

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    if-eq v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_2
    iget v2, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    :goto_3
    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v5}, Lcom/android/launcher2/CellPositioner;->access$100(Lcom/android/launcher2/CellPositioner;)I

    move-result v5

    if-ge v2, v5, :cond_3

    aget v5, v1, v2

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_3
    iget v2, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    :goto_4
    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v5}, Lcom/android/launcher2/CellPositioner;->access$100(Lcom/android/launcher2/CellPositioner;)I

    move-result v5

    if-ge v2, v5, :cond_3

    aget v5, v1, v2

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    if-eq v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v1}, Lcom/android/launcher2/CellPositioner;->access$100(Lcom/android/launcher2/CellPositioner;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->topEdge:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->bottomEdge:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v1}, Lcom/android/launcher2/CellPositioner;->access$000(Lcom/android/launcher2/CellPositioner;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->leftEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->rightEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->bottomEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->topEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->boundingRectDirty:Z

    return-void
.end method

.method shift(II)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->config:Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    packed-switch p1, :pswitch_data_0

    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    goto :goto_0

    :pswitch_0
    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    goto :goto_0

    :pswitch_1
    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    goto :goto_0

    :pswitch_2
    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->resetEdges()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->comparator:Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;->whichEdge:I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->config:Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner$ViewCluster;->comparator:Lcom/android/launcher2/CellPositioner$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
