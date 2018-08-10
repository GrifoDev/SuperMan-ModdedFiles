.class public Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
.super Ljava/lang/Object;
.source "ItemAlignmentFacet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemAlignmentDef"
.end annotation


# instance fields
.field private mAlignToBaseline:Z

.field mFocusViewId:I

.field mOffset:I

.field mOffsetPercent:F

.field mOffsetWithPadding:Z

.field mViewId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    iput v1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return-void
.end method


# virtual methods
.method public final getItemAlignmentFocusViewId()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    goto :goto_0
.end method

.method public isAlignedToTextViewBaseLine()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mAlignToBaseline:Z

    return v0
.end method

.method public final setAlignedToTextViewBaseline(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mAlignToBaseline:Z

    return-void
.end method

.method public final setItemAlignmentOffset(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    return-void
.end method

.method public final setItemAlignmentOffsetPercent(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    return-void
.end method

.method public final setItemAlignmentOffsetWithPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return-void
.end method

.method public final setItemAlignmentViewId(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    return-void
.end method
