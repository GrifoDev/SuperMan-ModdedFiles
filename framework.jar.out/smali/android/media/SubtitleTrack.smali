.class public abstract Landroid/media/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroid/media/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$Cue;,
        Landroid/media/SubtitleTrack$CueList;,
        Landroid/media/SubtitleTrack$RenderingWidget;,
        Landroid/media/SubtitleTrack$Run;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public DEBUG:Z

.field protected final mActiveCues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field protected mCues:Landroid/media/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field protected mHandler:Landroid/os/Handler;

.field private mLastTimeMs:J

.field private mLastUpdateTimeMs:J

.field private mNextScheduledTimeMs:J

.field private mRunnable:Ljava/lang/Runnable;

.field protected final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroid/media/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method static synthetic -set0(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    .line 77
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 66
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    .line 67
    new-instance v0, Landroid/media/SubtitleTrack$CueList;

    invoke-direct {v0}, Landroid/media/SubtitleTrack$CueList;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    .line 68
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 69
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 65
    return-void
.end method

.method private removeRunsByEndTimeIndex(I)V
    .locals 8
    .param p1, "ix"    # I

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SubtitleTrack$Run;

    .line 172
    .local v3, "run":Landroid/media/SubtitleTrack$Run;
    :goto_0
    if-eqz v3, :cond_1

    .line 173
    iget-object v0, v3, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 174
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    :goto_1
    if-eqz v0, :cond_0

    .line 175
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v4, v0}, Landroid/media/SubtitleTrack$CueList;->remove(Landroid/media/SubtitleTrack$Cue;)V

    .line 176
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 177
    .local v1, "nextCue":Landroid/media/SubtitleTrack$Cue;
    iput-object v5, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 178
    move-object v0, v1

    goto :goto_1

    .line 180
    .end local v1    # "nextCue":Landroid/media/SubtitleTrack$Cue;
    :cond_0
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v6, v3, Landroid/media/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    .line 181
    iget-object v2, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 182
    .local v2, "nextRun":Landroid/media/SubtitleTrack$Run;
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 183
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 184
    move-object v3, v2

    goto :goto_0

    .line 186
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v2    # "nextRun":Landroid/media/SubtitleTrack$Run;
    :cond_1
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 170
    return-void
.end method

.method private declared-synchronized takeTime(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    monitor-enter p0

    .line 201
    :try_start_0
    iput-wide p1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 200
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addCue(Landroid/media/SubtitleTrack$Cue;)Z
    .locals 12
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v7, p1}, Landroid/media/SubtitleTrack$CueList;->add(Landroid/media/SubtitleTrack$Cue;)V

    .line 304
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 305
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Run;

    .line 306
    .local v1, "run":Landroid/media/SubtitleTrack$Run;
    if-nez v1, :cond_6

    .line 307
    new-instance v1, Landroid/media/SubtitleTrack$Run;

    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    const/4 v7, 0x0

    invoke-direct {v1, v7}, Landroid/media/SubtitleTrack$Run;-><init>(Landroid/media/SubtitleTrack$Run;)V

    .line 308
    .restart local v1    # "run":Landroid/media/SubtitleTrack$Run;
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v7, v8, v9, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 309
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 315
    :cond_0
    :goto_0
    iget-object v7, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    iput-object v7, p1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 316
    iput-object p1, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 320
    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_1
    const-wide/16 v2, -0x1

    .line 321
    .local v2, "nowMs":J
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 323
    :try_start_1
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 324
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 323
    invoke-interface {v7, v8, v9}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v8

    .line 324
    const-wide/16 v10, 0x3e8

    .line 323
    div-long v2, v8, v10
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_2
    :goto_1
    :try_start_2
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "SubtitleTrack"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mVisible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 331
    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 330
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 331
    const-string/jumbo v9, " <= "

    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 331
    const-string/jumbo v9, ", "

    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 330
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    const-string/jumbo v9, " >= "

    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 330
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v7, :cond_8

    .line 335
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    cmp-long v7, v8, v2

    if-gtz v7, :cond_8

    .line 337
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_8

    .line 338
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_4

    .line 339
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    :cond_4
    move-object v6, p0

    .line 342
    .local v6, "track":Landroid/media/SubtitleTrack;
    move-wide v4, v2

    .line 343
    .local v4, "thenMs":J
    new-instance v7, Landroid/media/SubtitleTrack$1;

    invoke-direct {v7, p0, p0, v4, v5}, Landroid/media/SubtitleTrack$1;-><init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V

    iput-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 357
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 358
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "SubtitleTrack"

    const-string/jumbo v8, "scheduling update"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    :cond_5
    :goto_2
    const/4 v7, 0x1

    monitor-exit p0

    return v7

    .line 310
    .end local v2    # "nowMs":J
    .end local v4    # "thenMs":J
    .end local v6    # "track":Landroid/media/SubtitleTrack;
    .restart local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_6
    :try_start_3
    iget-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 311
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 360
    .restart local v2    # "nowMs":J
    .restart local v4    # "thenMs":J
    .restart local v6    # "track":Landroid/media/SubtitleTrack;
    :cond_7
    :try_start_4
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "SubtitleTrack"

    const-string/jumbo v8, "failed to schedule subtitle view update"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    .end local v4    # "thenMs":J
    .end local v6    # "track":Landroid/media/SubtitleTrack;
    :cond_8
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v7, :cond_a

    .line 366
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_a

    .line 367
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    .line 368
    iget-wide v8, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_a

    .line 369
    :cond_9
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    :cond_a
    const/4 v7, 0x0

    monitor-exit p0

    return v7

    .line 325
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto/16 :goto_1
.end method

.method protected declared-synchronized clearActiveCues()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 206
    :try_start_0
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 208
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 205
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 193
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "ix":I
    :goto_0
    if-ltz v0, :cond_0

    .line 194
    invoke-direct {p0, v0}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    return-void
.end method

.method protected finishedRun(J)V
    .locals 5
    .param p1, "runID"    # J

    .prologue
    .line 590
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 592
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    .line 593
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 589
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x3

    .line 611
    :goto_0
    return v0

    .line 613
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-nez v1, :cond_0

    .line 287
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 293
    :cond_1
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 294
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_2

    .line 295
    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 297
    :cond_2
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 285
    return-void
.end method

.method protected onData(Landroid/media/SubtitleData;)V
    .locals 6
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 81
    .local v0, "runID":J
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    .line 84
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 82
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    .line 79
    return-void
.end method

.method public abstract onData([BZJ)V
.end method

.method public onSeek(J)V
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 242
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSeek "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    monitor-enter p0

    .line 244
    const-wide/16 v2, 0x3e8

    :try_start_0
    div-long v0, p1, v2

    .line 245
    .local v0, "timeMs":J
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 246
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 248
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 249
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 241
    return-void

    .line 243
    .end local v0    # "timeMs":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onStop()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SubtitleTrack"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 258
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 260
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 261
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 262
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, v2, v3, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 254
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTimedEvent(J)V
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 227
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTimedEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    monitor-enter p0

    .line 229
    const-wide/16 v2, 0x3e8

    :try_start_0
    div-long v0, p1, v2

    .line 230
    .local v0, "timeMs":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 231
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 233
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 234
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 226
    return-void

    .line 228
    .end local v0    # "timeMs":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected scheduleTimedEvents()V
    .locals 6

    .prologue
    .line 214
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->nextTimeAfter(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 216
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sched @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 218
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 219
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 217
    :goto_0
    invoke-interface {v2, v0, v1, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 212
    :cond_1
    return-void

    .line 219
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setRunDiscardTimeMs(JJ)V
    .locals 5
    .param p1, "runID"    # J
    .param p3, "timeMs"    # J

    .prologue
    .line 600
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 602
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    .line 603
    iput-wide p3, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 604
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 599
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroid/media/MediaTimeProvider;)V
    .locals 1
    .param p1, "timeProvider"    # Landroid/media/MediaTimeProvider;

    .prologue
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    .line 378
    return-void

    .line 380
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 383
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 384
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 376
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v1, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 275
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 276
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 279
    :cond_1
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 269
    :cond_2
    return-void
.end method

.method protected declared-synchronized updateActiveCues(ZJ)V
    .locals 8
    .param p1, "rebuild"    # Z
    .param p2, "timeMs"    # J

    .prologue
    monitor-enter p0

    .line 132
    if-nez p1, :cond_0

    :try_start_0
    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long v3, v4, p2

    if-lez v3, :cond_1

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 137
    :cond_1
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 136
    if-eqz v3, :cond_8

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 139
    .local v1, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    .line 141
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 143
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 148
    .restart local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .restart local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_4
    :try_start_1
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 151
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_5
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_6

    .line 153
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    .line 155
    :cond_6
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :cond_7
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    :cond_8
    :goto_1
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 164
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-gtz v3, :cond_9

    .line 165
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_1

    .line 167
    :cond_9
    iput-wide p2, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 129
    return-void
.end method

.method public abstract updateView(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
