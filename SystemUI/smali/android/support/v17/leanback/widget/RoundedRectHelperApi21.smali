.class Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;
.super Ljava/lang/Object;
.source "RoundedRectHelperApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RoundedRectHelperApi21$RoundedRectOutlineProvider;
    }
.end annotation


# static fields
.field private static sRoundedRectProvider:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewOutlineProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setClipToRoundedOutline(Landroid/view/View;ZI)V
    .locals 3

    if-eqz p1, :cond_2

    sget-object v1, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;->sRoundedRectProvider:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;->sRoundedRectProvider:Landroid/util/SparseArray;

    :cond_0
    sget-object v1, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;->sRoundedRectProvider:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21$RoundedRectOutlineProvider;

    invoke-direct {v0, p2}, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21$RoundedRectOutlineProvider;-><init>(I)V

    sget-object v1, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;->sRoundedRectProvider:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    sget-object v1, Landroid/support/v17/leanback/widget/RoundedRectHelperApi21;->sRoundedRectProvider:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void

    :cond_2
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0
.end method
