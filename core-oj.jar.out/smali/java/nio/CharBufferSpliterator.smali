.class Ljava/nio/CharBufferSpliterator;
.super Ljava/lang/Object;
.source "CharBufferSpliterator.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final buffer:Ljava/nio/CharBuffer;

.field private index:I

.field private final limit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/nio/CharBufferSpliterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/nio/CharBufferSpliterator;->-assertionsDisabled:Z

    .line 39
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/CharBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/CharBuffer;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;II)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/nio/CharBuffer;II)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .param p2, "origin"    # I
    .param p3, "limit"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-boolean v0, Ljava/nio/CharBufferSpliterator;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gt p2, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    iput-object p1, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    .line 51
    if-gt p2, p3, :cond_2

    .end local p2    # "origin":I
    :goto_1
    iput p2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    .line 52
    iput p3, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    .line 48
    return-void

    .restart local p2    # "origin":I
    :cond_2
    move p2, p3

    .line 51
    goto :goto_1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    iget v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/CharBufferSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 67
    :cond_0
    iget-object v0, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    .line 68
    .local v0, "cb":Ljava/nio/CharBuffer;
    iget v2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    .line 69
    .local v2, "i":I
    iget v1, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    .line 70
    .local v1, "hi":I
    iput v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    move v3, v2

    .line 71
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 72
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->getUnchecked(I)C

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/CharBufferSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    const/4 v2, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    iget v1, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    iget v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->getUnchecked(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 4

    .prologue
    .line 57
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    .local v0, "lo":I
    iget v2, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    add-int/2addr v2, v0

    ushr-int/lit8 v1, v2, 0x1

    .line 58
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    .line 59
    const/4 v2, 0x0

    .line 58
    :goto_0
    return-object v2

    .line 60
    :cond_0
    new-instance v2, Ljava/nio/CharBufferSpliterator;

    iget-object v3, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    iput v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    invoke-direct {v2, v3, v0, v1}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;II)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/nio/CharBufferSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/nio/CharBufferSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
