.class Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "SeslPagerTitleStrip.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
.implements Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateAdapter(Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    return-void
.end method

.method public onChanged()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getAdapter()Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateText(ILcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->mScrollState:I

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getAdapter()Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateText(ILcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$PageListener;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateTextPositions(IFZ)V

    goto :goto_0
.end method
