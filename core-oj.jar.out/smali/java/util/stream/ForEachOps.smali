.class final Ljava/util/stream/ForEachOps;
.super Ljava/lang/Object;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ForEachOps$ForEachOp;,
        Ljava/util/stream/ForEachOps$ForEachOrderedTask;,
        Ljava/util/stream/ForEachOps$ForEachTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleConsumer;",
            "Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;-><init>(Ljava/util/function/DoubleConsumer;Z)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntConsumer;",
            "Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;-><init>(Ljava/util/function/IntConsumer;Z)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongConsumer;",
            "Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Ljava/util/function/LongConsumer;Z)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer",
            "<-TT;>;Z)",
            "Ljava/util/stream/TerminalOp",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfRef;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Ljava/util/function/Consumer;Z)V

    return-object v0
.end method
