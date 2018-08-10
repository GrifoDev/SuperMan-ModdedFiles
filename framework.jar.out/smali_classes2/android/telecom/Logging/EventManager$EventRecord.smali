.class public Landroid/telecom/Logging/EventManager$EventRecord;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;,
        Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
    }
.end annotation


# instance fields
.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

.field private final sDateFormat:Ljava/text/DateFormat;

.field final synthetic this$0:Landroid/telecom/Logging/EventManager;


# direct methods
.method public constructor <init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V
    .locals 2

    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->sDateFormat:Ljava/text/DateFormat;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    new-instance v1, Landroid/telecom/Logging/EventManager$Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/telecom/Logging/EventManager$Event;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Event"

    const-string/jumbo v1, "RecordEntry %s: %s, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v3}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 12

    iget-object v8, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v8}, Landroid/telecom/Logging/EventManager$Loggable;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v8, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$Event;

    iget-object v8, p0, Landroid/telecom/Logging/EventManager$EventRecord;->sDateFormat:Ljava/text/DateFormat;

    new-instance v9, Ljava/util/Date;

    iget-wide v10, v2, Landroid/telecom/Logging/EventManager$Event;->time:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, " - "

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v2, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v2, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    if-eqz v8, :cond_1

    const-string/jumbo v8, " ("

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v2, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    instance-of v8, v1, Landroid/telecom/Logging/EventManager$Loggable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v8}, Landroid/telecom/Logging/EventManager;->-get0(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/Logging/EventManager$EventRecord;

    if-eqz v7, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RecordEntry "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v9}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v8, ")"

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v8, v2, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, ":"

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v2, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "Timings (average for this call, milliseconds):"

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord;->extractEventTimings()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->averageTimings(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "%s: %.2f\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public extractEventTimings()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v3}, Landroid/telecom/Logging/EventManager;->-get1(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v3}, Landroid/telecom/Logging/EventManager;->-get1(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/Logging/EventManager$TimedEventPair;

    iget-object v0, v14, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v3, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    iget-object v5, v2, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    iget-wide v6, v2, Landroid/telecom/Logging/EventManager$Event;->time:J

    iget-wide v8, v14, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    iget-object v10, v14, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;JJLjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v3, v2, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    if-eqz v16, :cond_1

    iget-wide v4, v2, Landroid/telecom/Logging/EventManager$Event;->time:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventTimeMillis:J

    sub-long v12, v4, v6

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->timeoutMillis:J

    cmp-long v3, v12, v4

    if-gez v3, :cond_1

    new-instance v3, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v12, v13}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v18
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    return-object v0
.end method
