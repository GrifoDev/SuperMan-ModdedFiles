.class public interface abstract Ljava/lang/CharSequence;
.super Ljava/lang/Object;
.source "CharSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/CharSequence$-java_util_stream_IntStream_chars__LambdaImpl0;,
        Ljava/lang/CharSequence$-java_util_stream_IntStream_codePoints__LambdaImpl0;
    }
.end annotation


# virtual methods
.method public synthetic -java_lang_CharSequence_lambda$1()Ljava/util/Spliterator$OfInt;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Ljava/lang/CharSequence$1CharIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CharIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 157
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-long v2, v1

    .line 158
    const/16 v1, 0x10

    .line 155
    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic -java_lang_CharSequence_lambda$2()Ljava/util/Spliterator$OfInt;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/CharSequence$1CodePointIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CodePointIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    const/16 v1, 0x10

    .line 228
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract charAt(I)C
.end method

.method public chars()Ljava/util/stream/IntStream;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/CharSequence$-java_util_stream_IntStream_chars__LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$-java_util_stream_IntStream_chars__LambdaImpl0;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    const/16 v1, 0x4050

    .line 160
    const/4 v2, 0x0

    .line 154
    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public codePoints()Ljava/util/stream/IntStream;
    .locals 3

    .prologue
    .line 227
    new-instance v0, Ljava/lang/CharSequence$-java_util_stream_IntStream_codePoints__LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$-java_util_stream_IntStream_codePoints__LambdaImpl0;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    const/16 v1, 0x10

    .line 232
    const/4 v2, 0x0

    .line 227
    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract length()I
.end method

.method public abstract subSequence(II)Ljava/lang/CharSequence;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
