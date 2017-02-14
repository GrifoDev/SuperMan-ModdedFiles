.class public Lcom/android/launcher2/DarkenView;
.super Landroid/view/View;
.source "DarkenView.java"


# instance fields
.field private mAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DarkenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DarkenView;->mAlpha:I

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/DarkenView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/DarkenView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/DarkenView;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/DarkenView;->mAlpha:I

    int-to-float v0, v0

    return v0
.end method

.method public onSetAlpha(I)Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iput p1, p0, Lcom/android/launcher2/DarkenView;->mAlpha:I

    goto :goto_0
.end method
