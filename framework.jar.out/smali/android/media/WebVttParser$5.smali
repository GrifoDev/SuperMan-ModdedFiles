.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/media/WebVttParser$5;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    .line 850
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .prologue
    .line 850
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 18
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 853
    const-string/jumbo v12, "-->"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 854
    .local v2, "arrowAt":I
    if-gez v2, :cond_0

    .line 855
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set0(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    .line 856
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v13}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 857
    return-void

    .line 860
    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 862
    .local v10, "start":Ljava/lang/String;
    add-int/lit8 v12, v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 863
    const-string/jumbo v13, "^\\s+"

    const-string/jumbo v14, ""

    .line 862
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 863
    const-string/jumbo v13, "\\s+"

    const-string/jumbo v14, " "

    .line 862
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 864
    .local v7, "rest":Ljava/lang/String;
    const/16 v12, 0x20

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 865
    .local v9, "spaceAt":I
    if-lez v9, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, "end":Ljava/lang/String;
    :goto_0
    if-lez v9, :cond_3

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 868
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v10}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 869
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 870
    const-string/jumbo v12, " +"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    array-length v15, v14

    move v13, v12

    :goto_2
    if-ge v13, v15, :cond_15

    aget-object v8, v14, v13

    .line 871
    .local v8, "setting":Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 872
    .local v3, "colonAt":I
    if-lez v3, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v3, v12, :cond_4

    .line 870
    :cond_1
    :goto_3
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_2

    .line 865
    .end local v3    # "colonAt":I
    .end local v5    # "end":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    :cond_2
    move-object v5, v7

    .restart local v5    # "end":Ljava/lang/String;
    goto :goto_0

    .line 866
    :cond_3
    const-string/jumbo v7, ""

    goto :goto_1

    .line 875
    .restart local v3    # "colonAt":I
    .restart local v8    # "setting":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 876
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 878
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v12, "region"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 879
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iput-object v11, v12, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    goto :goto_3

    .line 880
    :cond_5
    const-string/jumbo v12, "vertical"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 881
    const-string/jumbo v12, "rl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 882
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    .line 883
    const/16 v16, 0x65

    .line 882
    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_3

    .line 884
    :cond_6
    const-string/jumbo v12, "lr"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 885
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    .line 886
    const/16 v16, 0x66

    .line 885
    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_3

    .line 888
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 890
    :cond_8
    const-string/jumbo v12, "line"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 893
    :try_start_0
    sget-boolean v12, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    if-nez v12, :cond_a

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_9

    const/4 v12, 0x1

    :goto_4
    if-nez v12, :cond_a

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :catch_0
    move-exception v4

    .line 905
    .local v4, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    .line 906
    const-string/jumbo v17, "is not numeric or percentage"

    .line 905
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 893
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 894
    :cond_a
    :try_start_1
    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 895
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v12, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 896
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 897
    :cond_b
    const-string/jumbo v12, ".*[^0-9].*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 898
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    .line 899
    const-string/jumbo v17, "contains an invalid character"

    .line 898
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 901
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v12, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 902
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 909
    :cond_d
    const-string/jumbo v12, "position"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 911
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 912
    :catch_1
    move-exception v4

    .line 913
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    .line 914
    const-string/jumbo v17, "is not numeric or percentage"

    .line 913
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 916
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string/jumbo v12, "size"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 918
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 919
    :catch_2
    move-exception v4

    .line 920
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    .line 921
    const-string/jumbo v17, "is not numeric or percentage"

    .line 920
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 923
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string/jumbo v12, "align"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 924
    const-string/jumbo v12, "start"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 925
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xc9

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    .line 926
    :cond_10
    const-string/jumbo v12, "middle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 927
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xc8

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    .line 928
    :cond_11
    const-string/jumbo v12, "end"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 929
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xca

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    .line 930
    :cond_12
    const-string/jumbo v12, "left"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 931
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xcb

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    .line 932
    :cond_13
    const-string/jumbo v12, "right"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 933
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xcc

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    .line 935
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 941
    .end local v3    # "colonAt":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget-object v12, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v12, :cond_16

    .line 942
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget v12, v12, Landroid/media/TextTrackCue;->mSize:I

    const/16 v13, 0x64

    if-eq v12, v13, :cond_18

    .line 945
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const-string/jumbo v13, ""

    iput-object v13, v12, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 948
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v13}, Landroid/media/WebVttParser;->-get4(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 852
    return-void

    .line 943
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget v12, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 944
    const/16 v13, 0x64

    .line 943
    if-eq v12, v13, :cond_17

    goto :goto_5
.end method
