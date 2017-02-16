.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final ALIGNMENT_END:I = 0xca

.field static final ALIGNMENT_LEFT:I = 0xcb

.field static final ALIGNMENT_MIDDLE:I = 0xc8

.field static final ALIGNMENT_RIGHT:I = 0xcc

.field static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field mAlignment:I

.field mAutoLinePosition:Z

.field mId:Ljava/lang/String;

.field mLinePosition:Ljava/lang/Integer;

.field mLines:[[Landroid/media/TextTrackCueSpan;

.field mPauseOnExit:Z

.field mRegion:Landroid/media/TextTrackRegion;

.field mRegionId:Ljava/lang/String;

.field mSize:I

.field mSnapToLines:Z

.field mStrings:[Ljava/lang/String;

.field mTextPosition:I

.field mWritingDirection:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 416
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 417
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 419
    iput v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 420
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 422
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 423
    const/16 v0, 0x32

    iput v0, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 424
    iput v2, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 425
    const/16 v0, 0xc8

    iput v0, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 426
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 427
    iput-object v1, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 416
    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 14
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 492
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    if-nez v6, :cond_0

    .line 493
    const-string/jumbo v6, "null"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :goto_0
    return-object p1

    .line 495
    :cond_0
    const-string/jumbo v6, "["

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const/4 v0, 0x1

    .line 497
    .local v0, "first":Z
    iget-object v8, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const/4 v6, 0x0

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_6

    aget-object v5, v8, v7

    .line 498
    .local v5, "spans":[Landroid/media/TextTrackCueSpan;
    if-nez v0, :cond_1

    .line 499
    const-string/jumbo v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_1
    if-nez v5, :cond_2

    .line 502
    const-string/jumbo v6, "null"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :goto_2
    const/4 v0, 0x0

    .line 497
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 504
    :cond_2
    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/4 v1, 0x1

    .line 506
    .local v1, "innerFirst":Z
    const-wide/16 v2, -0x1

    .line 507
    .local v2, "lastTimestamp":J
    const/4 v6, 0x0

    array-length v10, v5

    :goto_3
    if-ge v6, v10, :cond_5

    aget-object v4, v5, v6

    .line 508
    .local v4, "span":Landroid/media/TextTrackCueSpan;
    if-nez v1, :cond_3

    .line 509
    const-string/jumbo v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_3
    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v11, v12, v2

    if-eqz v11, :cond_4

    .line 512
    const-string/jumbo v11, "<"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 514
    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 513
    invoke-static {v12, v13}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    .line 512
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 515
    const-string/jumbo v12, ">"

    .line 512
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-wide v2, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 518
    :cond_4
    iget-object v11, v4, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/4 v1, 0x0

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 521
    .end local v4    # "span":Landroid/media/TextTrackCueSpan;
    :cond_5
    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 525
    .end local v1    # "innerFirst":Z
    .end local v2    # "lastTimestamp":J
    .end local v5    # "spans":[Landroid/media/TextTrackCueSpan;
    :cond_6
    const-string/jumbo v6, "]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 468
    iget-object v2, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 469
    const-string/jumbo v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :goto_0
    return-object p1

    .line 471
    :cond_0
    const-string/jumbo v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const/4 v0, 0x1

    .line 473
    .local v0, "first":Z
    iget-object v3, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 474
    .local v1, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 475
    const-string/jumbo v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_1
    if-nez v1, :cond_2

    .line 478
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :goto_2
    const/4 v0, 0x0

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    :cond_2
    const-string/jumbo v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string/jumbo v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 486
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 432
    instance-of v5, p1, Landroid/media/TextTrackCue;

    if-nez v5, :cond_0

    .line 433
    return v7

    .line 435
    :cond_0
    if-ne p0, p1, :cond_1

    .line 436
    const/4 v5, 0x1

    return v5

    .line 440
    :cond_1
    :try_start_0
    move-object v0, p1

    nop

    nop

    move-object v1, v0

    .line 441
    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v5, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 442
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v5, v6, :cond_5

    .line 443
    iget v5, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v6, v1, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v5, v6, :cond_5

    .line 444
    iget-object v5, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 441
    if-eqz v5, :cond_5

    .line 445
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v5, v6, :cond_5

    .line 446
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v5, v6, :cond_5

    .line 447
    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-nez v5, :cond_3

    .line 448
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 449
    :cond_2
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v5, :cond_5

    iget-object v5, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v5, :cond_5

    .line 450
    :cond_3
    iget v5, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v6, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v5, v6, :cond_5

    .line 451
    iget v5, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v6, v1, Landroid/media/TextTrackCue;->mSize:I

    if-ne v5, v6, :cond_5

    .line 452
    iget v5, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v6, v1, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v5, v6, :cond_5

    .line 453
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v5, v5

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v6, v6

    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    .line 454
    .local v4, "res":Z
    :goto_0
    if-eqz v4, :cond_7

    .line 455
    const/4 v3, 0x0

    .local v3, "line":I
    :goto_1
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 456
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v5, v5, v3

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v6, v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_6

    .line 457
    return v7

    .line 453
    .end local v3    # "line":I
    .end local v4    # "res":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 441
    .end local v4    # "res":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 455
    .restart local v3    # "line":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 461
    .end local v3    # "line":I
    :cond_7
    return v4

    .line 462
    .end local v1    # "cue":Landroid/media/TextTrackCue;
    .end local v4    # "res":Z
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/IncompatibleClassChangeError;
    return v7
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTime(J)V
    .locals 13
    .param p1, "timeMs"    # J

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v7, v6

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 567
    .local v0, "line":[Landroid/media/TextTrackCueSpan;
    array-length v8, v0

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v1, v0, v4

    .line 568
    .local v1, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v10, v1, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, p1, v10

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v1, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 567
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_0
    move v2, v3

    .line 568
    goto :goto_2

    .line 566
    .end local v1    # "span":Landroid/media/TextTrackCueSpan;
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 565
    .end local v0    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    const-string/jumbo v2, " --> "

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    const-string/jumbo v2, " {id:\""

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    const-string/jumbo v2, "\", pauseOnExit:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    const-string/jumbo v2, ", direction:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "horizontal"

    .line 533
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    const-string/jumbo v2, ", regionId:\""

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    const-string/jumbo v2, "\", snapToLines:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    const-string/jumbo v2, ", linePosition:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 544
    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "auto"

    .line 533
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    const-string/jumbo v2, ", textPosition:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    const-string/jumbo v2, ", size:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    const-string/jumbo v2, ", alignment:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 549
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xca

    if-ne v1, v3, :cond_4

    const-string/jumbo v1, "end"

    .line 533
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    const-string/jumbo v2, ", text:"

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 539
    :cond_0
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x66

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "vertical_lr"

    goto :goto_0

    .line 540
    :cond_1
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x65

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, "vertical_rl"

    goto/16 :goto_0

    .line 541
    :cond_2
    const-string/jumbo v1, "INVALID"

    goto/16 :goto_0

    .line 545
    :cond_3
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto :goto_1

    .line 550
    :cond_4
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcb

    if-ne v1, v3, :cond_5

    const-string/jumbo v1, "left"

    goto :goto_2

    .line 551
    :cond_5
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    const-string/jumbo v1, "middle"

    goto :goto_2

    .line 552
    :cond_6
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_7

    const-string/jumbo v1, "right"

    goto :goto_2

    .line 553
    :cond_7
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_8

    const-string/jumbo v1, "start"

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "INVALID"

    goto :goto_2
.end method
