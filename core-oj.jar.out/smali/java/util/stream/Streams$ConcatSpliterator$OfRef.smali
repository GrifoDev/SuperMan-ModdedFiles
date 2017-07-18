.class Ljava/util/stream/Streams$ConcatSpliterator$OfRef;
.super Ljava/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Streams$ConcatSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V

    return-void
.end method
