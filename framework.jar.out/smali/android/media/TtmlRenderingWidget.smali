.class Landroid/media/TtmlRenderingWidget;
.super Landroid/widget/LinearLayout;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TtmlRenderingWidget$CustomTextView;
    }
.end annotation


# static fields
.field private static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private mCaptionManager:Landroid/view/accessibility/CaptioningManager;

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private mTextViewSet:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/media/TtmlRenderingWidget$CustomTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/media/TtmlRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    const-string/jumbo v1, "captioning"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    iput-object v1, p0, Landroid/media/TtmlRenderingWidget;->mCaptionManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mCaptionManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    new-instance v0, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-direct {v0, p1}, Landroid/media/TtmlRenderingWidget$CustomTextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setGravity(I)V

    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public applyOpacity(II)I
    .locals 4

    mul-int/lit16 v0, p2, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int v1, p4, p2

    sub-int v0, p5, p3

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->removeAllViews()V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v10, v9, -0x1

    if-ge v4, v10, :cond_0

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const-string/jumbo v5, ""

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlCue;

    if-lez v4, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    iget-object v10, v2, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v10, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mCaptionManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v10}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v10

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const v11, 0x3d5a511a    # 0.0533f

    mul-float v3, v10, v11

    new-instance v10, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v10, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x21

    invoke-interface {v7, v10, v12, v11, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    const/16 v11, 0x51

    invoke-virtual {v10, v11}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setGravity(I)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v10, v7}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v10, v3}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextSize(F)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v10}, Landroid/media/TtmlRenderingWidget$CustomTextView;->getTextSize()F

    move-result v8

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    mul-float v11, v3, v3

    div-float/2addr v11, v8

    invoke-virtual {v10, v11}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextSize(F)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    iget-object v11, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v11, v11, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v10, v11}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextColor(I)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {p0, v10, v11, v12}, Landroid/media/TtmlRenderingWidget;->addView(Landroid/view/View;II)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getHeight()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Landroid/media/TtmlRenderingWidget;->setSize(II)V

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v10, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_3
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    return-void
.end method

.method public setSize(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget;->measure(II)V

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/TtmlRenderingWidget;->layout(IIII)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    goto :goto_0
.end method
