.class final Landroid/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final COMPLETE:I = 0x2

.field private static final NEW:I = 0x0

.field private static final PENDING:I = 0x1


# instance fields
.field final synthetic $assertionsDisabled:Z

.field public arcs:[Landroid/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroid/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/widget/GridLayout$Axis;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/widget/GridLayout;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    iput-boolean p2, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$Axis;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;Z)V

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    aget-object v1, v2, v0

    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$MutableInt;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_0

    const-string/jumbo v7, "x"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v5, v8, Landroid/widget/GridLayout$Interval;->min:I

    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v2, v8, Landroid/widget/GridLayout$Interval;->max:I

    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v6, v8, Landroid/widget/GridLayout$MutableInt;->value:I

    if-ge v5, v2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string/jumbo v7, "y"

    goto :goto_0

    :cond_1
    const-string/jumbo v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-int v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private calculateMaxIndex()I
    .locals 8

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_0

    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_1
    iget-object v5, v6, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v7, v5, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v7, v5, Landroid/widget/GridLayout$Interval;->max:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    const/high16 v4, -0x80000000

    :cond_2
    return v4
.end method

.method private calculateTotalWeight()F
    .locals 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v6, :cond_1

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    iget v6, v4, Landroid/widget/GridLayout$Spec;->weight:F

    add-float/2addr v5, v6

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_2
    return v5
.end method

.method private computeArcs()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    return-void
.end method

.method private computeGroupBounds()V
    .locals 10

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    iget-object v9, v0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v9, [Landroid/widget/GridLayout$Bounds;

    const/4 v7, 0x0

    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_0

    aget-object v0, v9, v7

    invoke-virtual {v0}, Landroid/widget/GridLayout$Bounds;->reset()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    :goto_1
    if-ge v7, v6, :cond_3

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v8

    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_1

    iget-object v3, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v0, v2, v1}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v1

    iget v0, v3, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    add-int v5, v1, v0

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Bounds;

    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v0

    aget v0, v0, v7

    goto :goto_3

    :cond_3
    return-void
.end method

.method private computeHasWeights()Z
    .locals 7

    const/4 v2, 0x0

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v5}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v5, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v5, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_2

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_1
    iget v5, v4, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_2
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroid/widget/GridLayout$MutableInt;

    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/widget/GridLayout$MutableInt;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v0, v5, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v5, p2}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$MutableInt;

    iget v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    neg-int v2, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->hasWeights()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    :goto_0
    iget-boolean v3, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    aget v1, p1, v3

    const/4 v2, 0x0

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    sub-int/2addr v3, v1

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private computeMargins(Z)V
    .locals 11

    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    :goto_0
    const/4 v2, 0x0

    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_2

    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_3
    iget-object v6, v7, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    if-eqz p1, :cond_3

    iget v3, v6, Landroid/widget/GridLayout$Interval;->min:I

    :goto_4
    aget v8, v5, v3

    iget-object v9, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v9, v1, v10, p1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v3

    goto :goto_2

    :cond_2
    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_3

    :cond_3
    iget v3, v6, Landroid/widget/GridLayout$Interval;->max:I

    goto :goto_4

    :cond_4
    return-void
.end method

.method private createArcs()[Landroid/widget/GridLayout$Arc;
    .locals 9

    const/4 v8, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    new-instance v6, Landroid/widget/GridLayout$Interval;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v1, v7}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    new-instance v7, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v7, v8}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v3, v6, v7}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v8, v0}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v3, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v0, v8}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v2, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/widget/GridLayout$Arc;

    return-object v6
.end method

.method private createGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    const-class v7, Landroid/widget/GridLayout$Spec;

    const-class v8, Landroid/widget/GridLayout$Bounds;

    invoke-static {v7, v8}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v5

    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_0

    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_1
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-static {v6, v7}, Landroid/widget/GridLayout$Spec;->-wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/GridLayout$Alignment;->getBounds()Landroid/widget/GridLayout$Bounds;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v7

    return-object v7
.end method

.method private createLinks(Z)Landroid/widget/GridLayout$PackedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    const-class v5, Landroid/widget/GridLayout$Interval;

    const-class v6, Landroid/widget/GridLayout$MutableInt;

    invoke-static {v5, v6}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v2, v5, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Spec;

    const/4 v1, 0x0

    array-length v0, v2

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    aget-object v5, v2, v1

    iget-object v4, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    :goto_1
    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v5, v2, v1

    iget-object v5, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->inverse()Landroid/widget/GridLayout$Interval;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    return-object v5
.end method

.method private getBackwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .locals 2

    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->size([I)I

    move-result v0

    return v0
.end method

.method private hasWeights()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    return v0
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    return-void
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    iget-object v2, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v2, p2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_2
    new-instance v3, Landroid/widget/GridLayout$Arc;

    invoke-direct {v3, p2, p3}, Landroid/widget/GridLayout$Arc;-><init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private init([I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    aget-object v0, p2, v1

    aget-boolean v4, p3, v1

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v4, v0, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-object v4, v4, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " constraints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " are inconsistent; permanently removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method private relax([ILandroid/widget/GridLayout$Arc;)Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v5, p2, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v5, :cond_0

    return v6

    :cond_0
    iget-object v1, p2, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v2, v1, Landroid/widget/GridLayout$Interval;->min:I

    iget v3, v1, Landroid/widget/GridLayout$Interval;->max:I

    iget-object v5, p2, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v4, v5, Landroid/widget/GridLayout$MutableInt;->value:I

    aget v5, p1, v2

    add-int v0, v5, v4

    aget v5, p1, v3

    if-le v0, v5, :cond_1

    aput v0, p1, v3

    const/4 v5, 0x1

    return v5

    :cond_1
    return v6
.end method

.method private setParentConstraints(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    return-void
.end method

.method private shareOutDelta(IF)V
    .locals 9

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_2

    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    iget v6, v5, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_0

    int-to-float v7, p1

    mul-float/2addr v7, v6

    div-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    aput v2, v7, v3

    sub-int/2addr p1, v2

    sub-float/2addr p2, v6

    goto :goto_1

    :cond_2
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    return-void
.end method

.method private size([I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private solve([I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[I)Z

    move-result v0

    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result v0

    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[IZ)Z
    .locals 12

    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v10, :cond_0

    const-string/jumbo v2, "horizontal"

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    array-length v10, p1

    if-ge v9, v10, :cond_c

    invoke-direct {p0, p2}, Landroid/widget/GridLayout$Axis;->init([I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_4

    const/4 v3, 0x0

    const/4 v6, 0x0

    array-length v7, p1

    :goto_3
    if-ge v6, v7, :cond_1

    aget-object v10, p1, v6

    invoke-direct {p0, p2, v10}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v3, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    const-string/jumbo v2, "vertical"

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    if-eqz v8, :cond_2

    invoke-direct {p0, v2, p1, v8}, Landroid/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V

    :cond_2
    const/4 v10, 0x1

    return v10

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    const/4 v10, 0x0

    return v10

    :cond_5
    array-length v10, p1

    new-array v4, v10, [Z

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_7

    const/4 v6, 0x0

    array-length v7, p1

    :goto_5
    if-ge v6, v7, :cond_6

    aget-boolean v10, v4, v6

    aget-object v11, p1, v6

    invoke-direct {p0, p2, v11}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    if-nez v9, :cond_8

    move-object v8, v4

    :cond_8
    const/4 v5, 0x0

    :goto_6
    array-length v10, p1

    if-ge v5, v10, :cond_b

    aget-boolean v10, v4, v5

    if-eqz v10, :cond_9

    aget-object v1, p1, v5

    iget-object v10, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v10, v10, Landroid/widget/GridLayout$Interval;->min:I

    iget-object v11, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v11, v11, Landroid/widget/GridLayout$Interval;->max:I

    if-ge v10, v11, :cond_a

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/widget/GridLayout$Arc;->valid:Z

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_c
    const/4 v10, 0x1

    return v10
.end method

.method private solveAndDistributeSpace([I)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iget v6, v6, Landroid/widget/GridLayout$MutableInt;->value:I

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/lit8 v1, v6, 0x1

    const/4 v6, 0x2

    if-ge v1, v6, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateTotalWeight()F

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    :goto_0
    if-ge v2, v1, :cond_2

    int-to-long v6, v2

    int-to-long v8, v1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    invoke-direct {p0, v0, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v6

    invoke-direct {p0, v6, p1, v10}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    invoke-direct {p0, v4, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    goto :goto_1
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/widget/GridLayout$Arc;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/GridLayout$Arc;

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Axis$1;-><init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis$1;->sort()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArcs()[Landroid/widget/GridLayout$Arc;
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeArcs()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDeltas()[I
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    :cond_0
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    return-object v0
.end method

.method public getGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeGroupBounds()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .locals 2

    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    :cond_0
    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeLocations([I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    :cond_1
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    return-object v1
.end method

.method public getMeasure(I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v0, :sswitch_data_0

    sget-boolean v2, Landroid/widget/GridLayout$Axis;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :sswitch_0
    const v2, 0x186a0

    invoke-direct {p0, v3, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    :sswitch_1
    invoke-direct {p0, v1, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    :sswitch_2
    invoke-direct {p0, v3, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    :cond_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public getTrailingMargins()[I
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;
    .locals 10

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    new-array v3, v0, [[Landroid/widget/GridLayout$Arc;

    new-array v4, v0, [I

    array-length v7, p1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, p1, v6

    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v8, v8, Landroid/widget/GridLayout$Interval;->min:I

    aget v9, v4, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_1

    aget v6, v4, v2

    new-array v6, v6, [Landroid/widget/GridLayout$Arc;

    aput-object v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    array-length v6, p1

    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v1, p1, v5

    iget-object v7, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v2, v7, Landroid/widget/GridLayout$Interval;->min:I

    aget-object v7, v3, v2

    aget v8, v4, v2

    add-int/lit8 v9, v8, 0x1

    aput v9, v4, v2

    aput-object v1, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public invalidateStructure()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    return-void
.end method

.method public invalidateValues()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    return-void
.end method

.method public isOrderPreserved()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public layout(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    return-void
.end method

.method public setCount(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "column"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/GridLayout;->-wrap0(Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    return-void

    :cond_1
    const-string/jumbo v0, "row"

    goto :goto_0
.end method

.method public setOrderPreserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    return-void
.end method
