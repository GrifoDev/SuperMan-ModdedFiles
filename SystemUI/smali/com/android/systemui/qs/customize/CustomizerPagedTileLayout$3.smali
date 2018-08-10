.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "3002"

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get3(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-set0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;I)I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v2

    int-to-float v3, p1

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get1(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get1(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v2

    if-nez p3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    :goto_0
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get1(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get1(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    :goto_0
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_2

    goto :goto_0
.end method
