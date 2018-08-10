.class Landroid/support/v17/leanback/widget/ShadowHelperApi21;
.super Ljava/lang/Object;
.source "ShadowHelperApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;,
        Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;
    }
.end annotation


# static fields
.field static final sOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->sOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;
    .locals 2

    if-lez p3, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1, p3}, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    :goto_0
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;-><init>()V

    iput-object p0, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mShadowContainer:Landroid/view/View;

    iput p1, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    iput p2, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mFocusedZ:F

    iget v1, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setZ(F)V

    return-object v0

    :cond_0
    sget-object v1, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->sOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0
.end method

.method public static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 5

    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mShadowContainer:Landroid/view/View;

    iget v2, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    iget v3, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mFocusedZ:F

    iget v4, v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$ShadowImpl;->mNormalZ:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    return-void
.end method
