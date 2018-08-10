.class abstract Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
.super Ljava/lang/Object;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlide"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 1

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 1

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method
