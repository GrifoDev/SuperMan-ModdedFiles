.class final Landroid/transition/Slide$5;
.super Landroid/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>(Landroid/transition/Slide$CalculateSlideHorizontal;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    sub-float v1, v2, v3

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float v1, v2, v3

    goto :goto_1
.end method
