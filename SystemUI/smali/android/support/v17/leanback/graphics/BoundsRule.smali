.class public Landroid/support/v17/leanback/graphics/BoundsRule;
.super Ljava/lang/Object;
.source "BoundsRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;
    }
.end annotation


# instance fields
.field public bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

.field public left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

.field public right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

.field public top:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/graphics/BoundsRule;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    iget-object v2, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    iget-object v0, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    iget-object v2, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;)V

    :goto_1
    iput-object v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    iget-object v0, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->top:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    iget-object v2, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->top:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;)V

    :goto_2
    iput-object v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->top:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    iget-object v0, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    iget-object v0, p1, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;)V

    :cond_0
    iput-object v1, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private doCalculate(ILandroid/support/v17/leanback/graphics/BoundsRule$ValueRule;I)I
    .locals 3

    iget v0, p2, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mAbsoluteValue:I

    add-int/2addr v0, p1

    iget v1, p2, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->mFraction:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public calculateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->top:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :goto_3
    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v17/leanback/graphics/BoundsRule;->doCalculate(ILandroid/support/v17/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v17/leanback/graphics/BoundsRule;->doCalculate(ILandroid/support/v17/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->top:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v17/leanback/graphics/BoundsRule;->doCalculate(ILandroid/support/v17/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v17/leanback/graphics/BoundsRule;->doCalculate(ILandroid/support/v17/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method
