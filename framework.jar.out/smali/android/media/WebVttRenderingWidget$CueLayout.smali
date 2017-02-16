.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private mActive:Z

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final mCue:Landroid/media/TextTrackCue;

.field private mFontSize:F

.field private mOrder:I


# direct methods
.method static synthetic -get0(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 1

    iget v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cue"    # Landroid/media/TextTrackCue;
    .param p3, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p4, "fontSize"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1684
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1686
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1687
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1688
    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1691
    iget v3, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 1692
    const/16 v4, 0x64

    .line 1691
    if-ne v3, v4, :cond_1

    move v0, v2

    .line 1693
    .local v0, "horizontal":Z
    :goto_0
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1695
    iget v1, p2, Landroid/media/TextTrackCue;->mAlignment:I

    packed-switch v1, :pswitch_data_0

    .line 1718
    :goto_1
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1683
    return-void

    .end local v0    # "horizontal":Z
    :cond_1
    move v0, v1

    .line 1691
    goto :goto_0

    .line 1697
    .restart local v0    # "horizontal":Z
    :pswitch_0
    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 1700
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 1703
    :pswitch_2
    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 1704
    :cond_2
    const/16 v2, 0x10

    goto :goto_2

    .line 1707
    :pswitch_3
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 1710
    :pswitch_4
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 1695
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCue()Landroid/media/TextTrackCue;
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 1828
    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return v0
.end method

.method public measureForParent(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, -0x80000000

    .line 1780
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1781
    .local v1, "cue":Landroid/media/TextTrackCue;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1782
    .local v6, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1783
    .local v5, "specHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 1784
    .local v2, "direction":I
    iget v7, v1, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v2, v7}, Landroid/media/WebVttRenderingWidget;->-wrap0(II)I

    move-result v0

    .line 1789
    .local v0, "absAlignment":I
    packed-switch v0, :pswitch_data_0

    .line 1804
    :pswitch_0
    const/4 v3, 0x0

    .line 1809
    .local v3, "maximumSize":I
    :goto_0
    iget v7, v1, Landroid/media/TextTrackCue;->mSize:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr v7, v6

    div-int/lit8 v4, v7, 0x64

    .line 1810
    .local v4, "size":I
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1811
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1812
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 1779
    return-void

    .line 1791
    .end local v3    # "maximumSize":I
    .end local v4    # "size":I
    :pswitch_1
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v3, v7, 0x64

    .line 1792
    .restart local v3    # "maximumSize":I
    goto :goto_0

    .line 1794
    .end local v3    # "maximumSize":I
    :pswitch_2
    iget v3, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    .restart local v3    # "maximumSize":I
    goto :goto_0

    .line 1797
    .end local v3    # "maximumSize":I
    :pswitch_3
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    const/16 v8, 0x32

    if-gt v7, v8, :cond_0

    .line 1798
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    mul-int/lit8 v3, v7, 0x2

    .restart local v3    # "maximumSize":I
    goto :goto_0

    .line 1800
    .end local v3    # "maximumSize":I
    :cond_0
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v7, v7, 0x64

    mul-int/lit8 v3, v7, 0x2

    .restart local v3    # "maximumSize":I
    goto :goto_0

    .line 1789
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1772
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1771
    return-void
.end method

.method public prepForPrune()V
    .locals 1

    .prologue
    .line 1735
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1734
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    .line 1722
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1723
    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1725
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1726
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1727
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1728
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/media/WebVttRenderingWidget$SpanLayout;

    if-eqz v3, :cond_0

    .line 1729
    nop

    nop

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1726
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1721
    :cond_1
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 1821
    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    .line 1820
    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    .line 1739
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1741
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1743
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    iget-object v9, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget v9, v9, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v8, v9}, Landroid/media/WebVttRenderingWidget;->-wrap0(II)I

    move-result v2

    .line 1745
    .local v2, "cueAlignment":I
    packed-switch v2, :pswitch_data_0

    .line 1754
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1757
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1758
    .local v1, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1759
    .local v3, "fontSize":F
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget-object v7, v8, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1760
    .local v7, "lines":[[Landroid/media/TextTrackCueSpan;
    array-length v6, v7

    .line 1761
    .local v6, "lineCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 1762
    new-instance v5, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-direct {v5, v8, v9}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    .line 1763
    .local v5, "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1764
    invoke-virtual {v5, v1, v3}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1766
    invoke-virtual {p0, v5, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1761
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1747
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .end local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3    # "fontSize":F
    .end local v4    # "i":I
    .end local v5    # "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    .end local v6    # "lineCount":I
    .end local v7    # "lines":[[Landroid/media/TextTrackCueSpan;
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 1750
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 1738
    .restart local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .restart local v3    # "fontSize":F
    .restart local v4    # "i":I
    .restart local v6    # "lineCount":I
    .restart local v7    # "lines":[[Landroid/media/TextTrackCueSpan;
    :cond_0
    return-void

    .line 1745
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
