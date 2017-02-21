.class Landroid/widget/SemExpandableListView$ExpandingRect;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpandingRect"
.end annotation


# instance fields
.field destinationRect:Landroid/graphics/RectF;

.field endRect:Landroid/graphics/RectF;

.field startY:I


# direct methods
.method constructor <init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->startY:I

    iput-object p2, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    iput-object p3, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method update(F)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->startY:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->startY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/widget/SemExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
