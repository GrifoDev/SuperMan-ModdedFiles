.class final Landroid/support/v17/leanback/widget/RoundedRectHelperApi21$RoundedRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RoundedRectHelperApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RoundedRectOutlineProvider"
.end annotation


# instance fields
.field private mRadius:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput p1, p0, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21$RoundedRectOutlineProvider;->mRadius:I

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, p0, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21$RoundedRectOutlineProvider;->mRadius:I

    int-to-float v5, v0

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
