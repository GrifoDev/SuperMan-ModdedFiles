.class Landroid/media/Cea708CCWidget$CCView;
.super Lcom/android/internal/widget/SubtitleView;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCView"
.end annotation


# static fields
.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setForegroundColor(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_2
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setEdgeType(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setEdgeColor(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_3
.end method
