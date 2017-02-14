.class Ljava/lang/CharSequence$1CodePointIterator;
.super Ljava/lang/Object;
.source "CharSequence.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CodePointIterator"
.end annotation


# instance fields
.field cur:I

.field final synthetic this$0:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/CharSequence$1CodePointIterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 6

    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    :try_start_0
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v2, v3, 0x1

    :try_start_1
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    invoke-interface {p1, v5}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_2
    iput v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    throw v5

    :cond_2
    :try_start_2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    return-void

    :catchall_1
    move-exception v5

    move v2, v3

    goto :goto_2
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    iget-object v1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .locals 6

    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    if-lt v3, v2, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    iget v4, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    if-ge v3, v2, :cond_1

    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    iget v4, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_1
    return v0
.end method
