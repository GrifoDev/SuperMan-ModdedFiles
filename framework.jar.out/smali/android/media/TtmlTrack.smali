.class Landroid/media/TtmlTrack;
.super Landroid/media/SubtitleTrack;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/TtmlNodeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TtmlTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mParser:Landroid/media/TtmlParser;

.field private mParsingData:Ljava/lang/String;

.field private final mRenderingWidget:Landroid/media/TtmlRenderingWidget;

.field private mRootNode:Landroid/media/TtmlNode;

.field private final mTimeEvents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtmlNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/TtmlRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    new-instance v0, Landroid/media/TtmlParser;

    invoke-direct {v0, p0}, Landroid/media/TtmlParser;-><init>(Landroid/media/TtmlNodeListener;)V

    iput-object v0, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    iput-object p1, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    return-void
.end method

.method private addTimeEvents(Landroid/media/TtmlNode;)V
    .locals 4

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    iget-wide v2, p1, Landroid/media/TtmlNode;->mStartTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    iget-wide v2, p1, Landroid/media/TtmlNode;->mEndTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/TtmlNode;

    invoke-direct {p0, v1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getActiveNodes(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getNextResult()Landroid/media/TtmlCue;
    .locals 10

    const/4 v7, 0x0

    :cond_0
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_1

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/TtmlTrack;->getActiveNodes(JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/TtmlCue;

    iget-object v6, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    invoke-static {v6, v2, v3, v4, v5}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Landroid/media/TtmlCue;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V

    return-object v1

    :cond_1
    return-object v7
.end method

.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getRenderingWidget()Landroid/media/TtmlRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/TtmlRenderingWidget;
    .locals 1

    iget-object v0, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    return-object v0
.end method

.method public onData([BZJ)V
    .locals 11

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v5, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, p3, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Run #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in progress.  Cannot process run #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "TtmlTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_1

    :try_start_4
    iget-object v4, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    iget-object v6, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    iget-object v7, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Landroid/media/TtmlParser;->parse(Ljava/lang/String;J)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-virtual {p0, p3, p4}, Landroid/media/TtmlTrack;->finishedRun(J)V

    const-string/jumbo v4, ""

    iput-object v4, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public onRootNodeParsed(Landroid/media/TtmlNode;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getNextResult()Landroid/media/TtmlCue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/TtmlTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    return-void
.end method

.method public onTtmlNodeParsed(Landroid/media/TtmlNode;)V
    .locals 1

    iget-object v0, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    iget-boolean v1, p0, Landroid/media/TtmlTrack;->mVisible:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/media/TtmlTrack;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "TtmlTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms the active cues are:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    invoke-virtual {v1, p1}, Landroid/media/TtmlRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TtmlTrack"

    const-string/jumbo v2, "at (illegal state) the active cues are:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
