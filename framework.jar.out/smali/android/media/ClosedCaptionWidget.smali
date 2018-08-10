.class abstract Landroid/media/ClosedCaptionWidget;
.super Landroid/view/ViewGroup;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ClosedCaptionWidget$1;,
        Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field protected mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field protected mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

.field private mHasChangeListener:Z

.field protected mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method static synthetic -get0()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/media/ClosedCaptionWidget$1;

    invoke-direct {v0, p0}, Landroid/media/ClosedCaptionWidget$1;-><init>(Landroid/media/ClosedCaptionWidget;)V

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/ClosedCaptionWidget;->setLayerType(ILandroid/graphics/Paint;)V

    const-string/jumbo v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {p0, p1}, Landroid/media/ClosedCaptionWidget;->createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {v0, v1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2, v2}, Landroid/media/ClosedCaptionWidget;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->requestLayout()V

    return-void
.end method

.method private manageChangeListener()V
    .locals 3

    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1
.end method


# virtual methods
.method public abstract createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

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

    invoke-virtual {p0, v1, v0}, Landroid/media/ClosedCaptionWidget;->measure(II)V

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/ClosedCaptionWidget;->layout(IIII)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    goto :goto_0
.end method
