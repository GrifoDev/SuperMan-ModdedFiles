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

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    const-string/jumbo v0, "TtmlCue"

    iput-object v0, p0, Landroid/media/TtmlCue;->TAG:Ljava/lang/String;

    iput-wide p1, p0, Landroid/media/TtmlCue;->mStartTimeMs:J

    iput-wide p3, p0, Landroid/media/TtmlCue;->mEndTimeMs:J

    iput-wide p7, p0, Landroid/media/TtmlCue;->mRunID:J

    iput-object p5, p0, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    iput-object p6, p0, Landroid/media/TtmlCue;->mTtmlFragment:Ljava/lang/String;

    iput-object v2, p0, Landroid/media/TtmlCue;->mOriginInfo:Ljava/lang/String;

    iput-object v2, p0, Landroid/media/TtmlCue;->mExtentInfo:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/media/TtmlCue;->mRegion:Z

    iput v1, p0, Landroid/media/TtmlCue;->mLineChangeCount:I

    return-void
.end method


# virtual methods
.method public setTtmlCueExtent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/TtmlCue;->mExtentInfo:Ljava/lang/String;

    return-void
.end method

.method public setTtmlCueOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/TtmlCue;->mOriginInfo:Ljava/lang/String;

    return-void
.end method
