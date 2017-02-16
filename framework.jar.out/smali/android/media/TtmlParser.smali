.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final DEFAULT_FRAMERATE:I = 0x1e

.field private static final DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final DEFAULT_TICKRATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private mCurrentRunId:J

.field private final mListener:Landroid/media/TtmlNodeListener;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mRegionSet:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/media/TtmlRegionTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/TtmlNodeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/TtmlNodeListener;

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlParser;->mRegionSet:Ljava/util/LinkedList;

    .line 532
    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    .line 531
    return-void
.end method

.method private extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 559
    const-string/jumbo v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    return-void
.end method

.method private isEndOfDoc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 715
    iget-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    const-string/jumbo v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 719
    if-nez v0, :cond_0

    .line 720
    const-string/jumbo v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 719
    if-nez v0, :cond_0

    .line 721
    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 719
    if-nez v0, :cond_0

    .line 721
    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 719
    if-nez v0, :cond_0

    .line 722
    const-string/jumbo v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 719
    if-eqz v0, :cond_1

    .line 733
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 735
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private loadParser(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 552
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 553
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    iput-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 554
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 555
    .local v1, "in":Ljava/io/StringReader;
    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 550
    return-void
.end method

.method private parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .locals 19
    .param p1, "parent"    # Landroid/media/TtmlNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    .line 625
    .local v16, "eventType":I
    const/4 v3, 0x2

    move/from16 v0, v16

    if-eq v0, v3, :cond_0

    .line 626
    const/4 v3, 0x0

    return-object v3

    .line 630
    :cond_0
    const-wide/16 v6, 0x0

    .line 631
    .local v6, "start":J
    const-wide v8, 0x7fffffffffffffffL

    .line 632
    .local v8, "end":J
    const-wide/16 v14, 0x0

    .line 634
    .local v14, "dur":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    .line 636
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_7

    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-eqz v3, :cond_7

    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_7

    .line 683
    .end local v17    # "i":I
    :cond_2
    if-eqz p1, :cond_3

    .line 684
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v6, v4

    .line 685
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-eqz v3, :cond_3

    .line 686
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v8, v4

    .line 689
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-lez v3, :cond_5

    .line 690
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-eqz v3, :cond_4

    .line 691
    const-string/jumbo v3, "TtmlParser"

    const-string/jumbo v4, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_4
    add-long v8, v6, v14

    .line 696
    :cond_5
    if-eqz p1, :cond_6

    .line 699
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-nez v3, :cond_6

    .line 700
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v3, v4, v10

    if-eqz v3, :cond_6

    .line 701
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v3, v8, v4

    if-lez v3, :cond_6

    .line 702
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    .line 708
    :cond_6
    new-instance v2, Landroid/media/TtmlNode;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    .line 711
    .local v2, "node":Landroid/media/TtmlNode;
    return-object v2

    .line 639
    .end local v2    # "node":Landroid/media/TtmlNode;
    .restart local v17    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 640
    .local v13, "attr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    .line 642
    .local v18, "value":Ljava/lang/String;
    const-string/jumbo v3, "^.*:"

    const-string/jumbo v4, ""

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 643
    const-string/jumbo v3, "begin"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 644
    const/16 v3, 0x1e

    .line 645
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 644
    move-object/from16 v0, v18

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v6

    .line 635
    :cond_8
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 646
    :cond_9
    const-string/jumbo v3, "end"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 647
    const/16 v3, 0x1e

    const/4 v4, 0x1

    .line 648
    const/4 v5, 0x1

    .line 647
    move-object/from16 v0, v18

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v8

    goto :goto_1

    .line 649
    :cond_a
    const-string/jumbo v3, "dur"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 650
    const/16 v3, 0x1e

    const/4 v4, 0x1

    .line 651
    const/4 v5, 0x1

    .line 650
    move-object/from16 v0, v18

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v14

    goto :goto_1
.end method

.method private parseTtml()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v17, Ljava/util/ArrayDeque;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayDeque;-><init>()V

    .line 571
    .local v17, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/TtmlNode;>;"
    const/4 v14, 0x0

    .line 572
    .local v14, "depthInUnsupportedTag":I
    const/4 v13, 0x1

    .line 573
    .local v13, "active":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    move-result v2

    if-nez v2, :cond_8

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 575
    .local v15, "eventType":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlNode;

    .line 576
    .local v10, "parent":Landroid/media/TtmlNode;
    if-eqz v13, :cond_6

    .line 577
    const/4 v2, 0x2

    if-ne v15, v2, :cond_2

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    const-string/jumbo v2, "TtmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    add-int/lit8 v14, v14, 0x1

    .line 581
    const/4 v13, 0x0

    .line 619
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 583
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    move-result-object v16

    .line 584
    .local v16, "node":Landroid/media/TtmlNode;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 585
    if-eqz v10, :cond_0

    .line 586
    iget-object v2, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 589
    .end local v16    # "node":Landroid/media/TtmlNode;
    :cond_2
    const/4 v2, 0x4

    if-ne v15, v2, :cond_3

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 595
    if-eqz v10, :cond_0

    .line 596
    iget-object v0, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v2, Landroid/media/TtmlNode;

    .line 597
    const-string/jumbo v3, "#pcdata"

    const-string/jumbo v4, ""

    const-wide/16 v6, 0x0

    .line 598
    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 597
    const-wide v8, 0x7fffffffffffffffL

    .line 596
    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 601
    .end local v5    # "text":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x3

    if-ne v15, v2, :cond_0

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    .line 607
    :cond_4
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 604
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    goto :goto_2

    .line 610
    :cond_6
    const/4 v2, 0x2

    if-ne v15, v2, :cond_7

    .line 611
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 612
    :cond_7
    const/4 v2, 0x3

    if-ne v15, v2, :cond_0

    .line 613
    add-int/lit8 v14, v14, -0x1

    .line 614
    if-nez v14, :cond_0

    .line 615
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 566
    .end local v10    # "parent":Landroid/media/TtmlNode;
    .end local v15    # "eventType":I
    :cond_8
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;J)V
    .locals 2
    .param p1, "ttmlText"    # Ljava/lang/String;
    .param p2, "runId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 545
    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 546
    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    .line 543
    return-void
.end method
