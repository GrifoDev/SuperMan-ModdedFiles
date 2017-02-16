.class Landroid/media/TextTrackRegion;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# static fields
.field static final SCROLL_VALUE_NONE:I = 0x12c

.field static final SCROLL_VALUE_SCROLL_UP:I = 0x12d


# instance fields
.field mAnchorPointX:F

.field mAnchorPointY:F

.field mId:Ljava/lang/String;

.field mLines:I

.field mScrollValue:I

.field mViewportAnchorPointX:F

.field mViewportAnchorPointY:F

.field mWidth:F


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    .line 364
    iput v1, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 365
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 366
    iput v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    iput v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 367
    iput v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    iput v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 368
    const/16 v0, 0x12c

    iput v0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    .line 362
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " {id:\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    const-string/jumbo v2, "\", width:"

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    iget v2, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    const-string/jumbo v2, ", lines:"

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    iget v2, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string/jumbo v2, ", anchorPoint:("

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 376
    const-string/jumbo v2, ", "

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 376
    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    const-string/jumbo v2, "), viewportAnchorPoints:"

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v2, ", "

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    const-string/jumbo v2, "), scrollValue:"

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 380
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v3, 0x12c

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "none"

    .line 372
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    const-string/jumbo v2, "}"

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 381
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_0
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v3, 0x12d

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "scroll_up"

    goto :goto_0

    .line 382
    :cond_1
    const-string/jumbo v1, "INVALID"

    goto :goto_0
.end method
