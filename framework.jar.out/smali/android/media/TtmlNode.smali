.class Landroid/media/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# instance fields
.field public final mAttributes:Ljava/lang/String;

.field public final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final mEndTimeMs:J

.field public mExtentInfo:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public mOriginInfo:Ljava/lang/String;

.field public final mParent:Landroid/media/TtmlNode;

.field public mRegionName:Ljava/lang/String;

.field public final mRunId:J

.field public final mStartTimeMs:J

.field public final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J
    .param p6, "endTimeMs"    # J
    .param p8, "parent"    # Landroid/media/TtmlNode;
    .param p9, "runId"    # J

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    .line 459
    iput-object p1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    .line 460
    iput-object p2, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    .line 461
    iput-object p3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    .line 462
    iput-wide p4, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    .line 463
    iput-wide p6, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    .line 464
    iput-object p8, p0, Landroid/media/TtmlNode;->mParent:Landroid/media/TtmlNode;

    .line 465
    iput-wide p9, p0, Landroid/media/TtmlNode;->mRunId:J

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlNode;->mRegionName:Ljava/lang/String;

    .line 458
    return-void
.end method


# virtual methods
.method public isActive(JJ)Z
    .locals 5
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J

    .prologue
    const/4 v0, 0x0

    .line 488
    iget-wide v2, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    iget-wide v2, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    cmp-long v1, v2, p3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setTtmlNodeExtent(Ljava/lang/String;)V
    .locals 0
    .param p1, "extentInfo"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Landroid/media/TtmlNode;->mExtentInfo:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setTtmlNodeOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "originInfo"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Landroid/media/TtmlNode;->mOriginInfo:Ljava/lang/String;

    .line 470
    return-void
.end method
