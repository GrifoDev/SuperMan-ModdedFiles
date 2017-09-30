.class public Landroid/support/v7/widget/t;
.super Landroid/widget/RatingBar;


# instance fields
.field private a:Landroid/support/v7/widget/r;

.field private b:Landroid/support/v7/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->ratingBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/k;

    new-instance v0, Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/k;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/k;)V

    iput-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/r;

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/r;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->getNumStars()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/view/ah;->a(III)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/t;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/t;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
