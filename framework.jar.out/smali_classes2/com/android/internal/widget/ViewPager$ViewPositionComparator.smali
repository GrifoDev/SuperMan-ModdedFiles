.class Lcom/android/internal/widget/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .prologue
    .line 2872
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 2873
    .local v0, "llp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 2874
    .local v1, "rlp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v2, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1

    .line 2875
    iget-boolean v2, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 2877
    :cond_1
    iget v2, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    iget v3, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 2871
    check-cast p1, Landroid/view/View;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
