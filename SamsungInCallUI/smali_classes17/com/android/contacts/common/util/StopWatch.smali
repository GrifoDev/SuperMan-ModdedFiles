.class public Lcom/android/contacts/common/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/StopWatch$NullStopWatch;
    }
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mLapLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    .line 33
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/StopWatch;->mLapLabels:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/android/contacts/common/util/StopWatch;->mLabel:Ljava/lang/String;

    .line 37
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/contacts/common/util/StopWatch$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/contacts/common/util/StopWatch$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/StopWatch;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getNullStopWatch()Lcom/android/contacts/common/util/StopWatch;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/contacts/common/util/StopWatch$NullStopWatch;->INSTANCE:Lcom/android/contacts/common/util/StopWatch$NullStopWatch;

    return-object v0
.end method

.method public static start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/android/contacts/common/util/StopWatch;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/util/StopWatch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public lap(Ljava/lang/String;)V
    .locals 4
    .param p1, "lapLabel"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/common/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/android/contacts/common/util/StopWatch;->mLapLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public stopAndLog(Ljava/lang/String;I)V
    .locals 16
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "timeThresholdToLog"    # I

    .prologue
    .line 60
    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 63
    .local v8, "start":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 65
    .local v10, "stop":J
    sub-long v12, v10, v8

    .line 66
    .local v12, "total":J
    move/from16 v0, p2

    int-to-long v14, v0

    cmp-long v14, v12, v14

    if-gez v14, :cond_0

    .line 84
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/util/StopWatch;->mLabel:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string v14, ": "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-wide v6, v8

    .line 75
    .local v6, "last":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_1

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/util/StopWatch;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 77
    .local v2, "current":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/util/StopWatch;->mLapLabels:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    sub-long v14, v2, v6

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    move-wide v6, v2

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "current":J
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
