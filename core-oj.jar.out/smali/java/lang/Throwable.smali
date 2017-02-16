.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Throwable$PrintStreamOrWriter;,
        Ljava/lang/Throwable$SentinelHolder;,
        Ljava/lang/Throwable$WrappedPrintStream;,
        Ljava/lang/Throwable$WrappedPrintWriter;
    }
.end annotation


# static fields
.field private static final CAUSE_CAPTION:Ljava/lang/String; = "Caused by: "

.field private static EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable; = null

.field private static final NULL_CAUSE_MESSAGE:Ljava/lang/String; = "Cannot suppress a null exception."

.field private static final SELF_SUPPRESSION_MESSAGE:Ljava/lang/String; = "Self-suppression not permitted"

.field private static final SUPPRESSED_CAPTION:Ljava/lang/String; = "Suppressed: "

.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private volatile transient backtrace:Ljava/lang/Object;

.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private stackTrace:[Ljava/lang/StackTraceElement;

.field private suppressedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 242
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 257
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 258
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 279
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 280
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 281
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 278
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 351
    if-eqz p4, :cond_1

    .line 352
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 356
    :goto_0
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 357
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 358
    if-nez p3, :cond_0

    .line 359
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 350
    :cond_0
    return-void

    .line 354
    :cond_1
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 207
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 303
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 304
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized getOurStackTrace()[Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    monitor-enter p0

    .line 816
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    if-eq v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 818
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 824
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_2

    .line 825
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 828
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 14
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;
    .param p2, "enclosingTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable$PrintStreamOrWriter;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p5

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t[CIRCULAR REFERENCE:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    move-object/from16 v0, p5

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 678
    .local v3, "trace":[Ljava/lang/StackTraceElement;
    array-length v2, v3

    add-int/lit8 v12, v2, -0x1

    .line 679
    .local v12, "m":I
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v13, v2, -0x1

    .line 680
    .local v13, "n":I
    :goto_1
    if-ltz v12, :cond_2

    if-ltz v13, :cond_2

    aget-object v2, v3, v12

    aget-object v5, p2, v13

    invoke-virtual {v2, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 683
    :cond_2
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    sub-int v10, v2, v12

    .line 686
    .local v10, "framesInCommon":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 687
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-gt v11, v12, :cond_3

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\tat "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v3, v11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 687
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 689
    :cond_3
    if-eqz v10, :cond_4

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\t... "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " more"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 693
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v8

    const/4 v2, 0x0

    array-length v9, v8

    move v7, v2

    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v1, v8, v7

    .line 694
    .local v1, "se":Ljava/lang/Throwable;
    const-string/jumbo v4, "Suppressed: "

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object/from16 v6, p5

    .line 694
    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 693
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_3

    .line 698
    .end local v1    # "se":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 699
    .local v4, "ourCause":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    .line 700
    const-string/jumbo v7, "Caused by: "

    move-object v5, p1

    move-object v6, v3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method private printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V
    .locals 14
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;

    .prologue
    const/4 v1, 0x0

    .line 642
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    .line 643
    .local v5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {p1}, Ljava/lang/Throwable$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 647
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 648
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 649
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    array-length v4, v2

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v12, v2, v3

    .line 650
    .local v12, "traceElement":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\tat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 653
    .end local v12    # "traceElement":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v8

    array-length v9, v8

    move v7, v1

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 654
    .local v0, "se":Ljava/lang/Throwable;
    const-string/jumbo v3, "Suppressed: "

    const-string/jumbo v4, "\t"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 653
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 657
    .end local v0    # "se":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 658
    .local v6, "ourCause":Ljava/lang/Throwable;
    if-eqz v6, :cond_2

    .line 659
    const-string/jumbo v9, "Caused by: "

    const-string/jumbo v10, ""

    move-object v7, p1

    move-object v8, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v13

    .line 638
    return-void

    .line 645
    .end local v2    # "trace":[Ljava/lang/StackTraceElement;
    .end local v6    # "ourCause":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 904
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 905
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 906
    const/4 v1, 0x0

    .line 907
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 922
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 934
    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-eqz v5, :cond_9

    .line 935
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    if-nez v5, :cond_6

    .line 903
    :cond_2
    :goto_0
    return-void

    .line 911
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 912
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "t$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 915
    .local v2, "t":Ljava/lang/Throwable;
    if-nez v2, :cond_4

    .line 916
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Cannot suppress a null exception."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 917
    :cond_4
    if-ne v2, p0, :cond_5

    .line 918
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Self-suppression not permitted"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 919
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 936
    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "t$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    if-ne v5, v6, :cond_7

    .line 938
    sget-object v5, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    iget-object v6, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 936
    if-eqz v5, :cond_7

    .line 939
    iput-object v7, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_0

    .line 941
    :cond_7
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 942
    .local v0, "ste":Ljava/lang/StackTraceElement;
    if-nez v0, :cond_8

    .line 943
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "null StackTraceElement in serial stream. "

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 941
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 951
    .end local v0    # "ste":Ljava/lang/StackTraceElement;
    :cond_9
    new-array v4, v4, [Ljava/lang/StackTraceElement;

    iput-object v4, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 968
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    .line 970
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 972
    .local v0, "oldStackTrace":[Ljava/lang/StackTraceElement;
    :try_start_1
    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v1, :cond_0

    .line 973
    sget-object v1, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 974
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    :try_start_2
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 963
    return-void

    .line 975
    :catchall_0
    move-exception v1

    .line 976
    :try_start_3
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 975
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "oldStackTrace":[Ljava/lang/StackTraceElement;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized addSuppressed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    monitor-enter p0

    .line 1031
    if-ne p1, p0, :cond_0

    .line 1032
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Self-suppression not permitted"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1034
    :cond_0
    if-nez p1, :cond_1

    .line 1035
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot suppress a null exception."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    .line 1038
    return-void

    .line 1040
    :cond_2
    :try_start_2
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 1043
    :cond_3
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1030
    return-void
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 774
    :cond_0
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 775
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 777
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final declared-synchronized getSuppressed()[Ljava/lang/Throwable;
    .locals 2

    .prologue
    monitor-enter p0

    .line 1064
    :try_start_0
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sput-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    .line 1068
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    :cond_1
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1071
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    sget-object v1, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    monitor-enter p0

    .line 447
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-eq v0, p0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t overwrite cause with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    const-string/jumbo v2, "a null"

    invoke-static {p1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 450
    :cond_0
    if-ne p1, p0, :cond_1

    .line 451
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Self-causation not permitted"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 452
    :cond_1
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 453
    return-object p0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 626
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 625
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 635
    new-instance v0, Ljava/lang/Throwable$WrappedPrintStream;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 634
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 712
    new-instance v0, Ljava/lang/Throwable$WrappedPrintWriter;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 711
    return-void
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 861
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 862
    .local v0, "defensiveCopy":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 863
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 864
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stackTrace["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 862
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    :cond_1
    monitor-enter p0

    .line 868
    :try_start_0
    iget-object v2, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v2, :cond_2

    .line 869
    iget-object v2, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    .line 870
    return-void

    .line 871
    :cond_2
    :try_start_1
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 859
    return-void

    .line 867
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 471
    invoke-virtual {p0}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
