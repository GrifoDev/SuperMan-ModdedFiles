.class Landroid/media/Cea708CCWidget;
.super Landroid/media/ClosedCaptionWidget;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/media/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$CCHandler;,
        Landroid/media/Cea708CCWidget$CCLayout;,
        Landroid/media/Cea708CCWidget$CCView;,
        Landroid/media/Cea708CCWidget$CCWindowLayout;,
        Landroid/media/Cea708CCWidget$ScaledLayout;
    }
.end annotation


# instance fields
.field private final mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/media/Cea708CCWidget$CCHandler;

    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {v1, v0}, Landroid/media/Cea708CCWidget$CCHandler;-><init>(Landroid/media/Cea708CCWidget$CCLayout;)V

    iput-object v1, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    return-void
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    .locals 1

    new-instance v0, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$CCLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/Cea708CCWidget;->setSize(II)V

    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/media/ClosedCaptionWidget;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
