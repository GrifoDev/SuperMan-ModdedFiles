.class Landroid/media/TtmlCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "TtmlRenderer.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public mExtentInfo:Ljava/lang/String;

.field public mLineChangeCount:I

.field public mOriginInfo:Ljava/lang/String;

.field public mRegion:Z

.field public mText:Ljava/lang/String;

.field public mTtmlFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "ttmlFragment"    # Ljava/lang/String;
    .param p7, "mCurrentRunId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 389
    const-string/jumbo v0, "TtmlCue"

    iput-object v0, p0, Landroid/media/TtmlCue;->TAG:Ljava/lang/String;

    .line 402
    iput-wide p1, p0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 403
    iput-wide p3, p0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 404
    iput-wide p7, p0, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    .line 406
    iput-object p5, p0, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    .line 407
    iput-object p6, p0, Landroid/media/TtmlCue;->mTtmlFragment:Ljava/lang/String;

    .line 408
    iput-object v2, p0, Landroid/media/TtmlCue;->mOriginInfo:Ljava/lang/String;

    .line 409
    iput-object v2, p0, Landroid/media/TtmlCue;->mExtentInfo:Ljava/lang/String;

    .line 410
    iput-boolean v1, p0, Landroid/media/TtmlCue;->mRegion:Z

    .line 412
    iput v1, p0, Landroid/media/TtmlCue;->mLineChangeCount:I

    .line 400
    return-void
.end method


# virtual methods
.method public setTtmlCueExtent(Ljava/lang/String;)V
    .locals 0
    .param p1, "extentInfo"    # Ljava/lang/String;

    .prologue
    .line 420
    iput-object p1, p0, Landroid/media/TtmlCue;->mExtentInfo:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setTtmlCueOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "originInfo"    # Ljava/lang/String;

    .prologue
    .line 416
    iput-object p1, p0, Landroid/media/TtmlCue;->mOriginInfo:Ljava/lang/String;

    .line 415
    return-void
.end method
