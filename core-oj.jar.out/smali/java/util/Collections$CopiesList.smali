.class Ljava/util/Collections$CopiesList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopiesList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;,
        Ljava/util/Collections$CopiesList$-java_util_stream_Stream_stream__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x26033c45b17003f8L


# instance fields
.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/Collections$CopiesList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/Collections$CopiesList;->-assertionsDisabled:Z

    .line 4190
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 4199
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4200
    sget-boolean v1, Ljava/util/Collections$CopiesList;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4201
    :cond_1
    iput p1, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 4202
    iput-object p2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    .line 4199
    return-void
.end method


# virtual methods
.method synthetic -java_util_Collections$CopiesList_lambda$6(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 4265
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method synthetic -java_util_Collections$CopiesList_lambda$7(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 4270
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    const/4 v0, 0x0

    .line 4210
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 4222
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    if-lt p1, v0, :cond_1

    .line 4223
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4224
    const-string/jumbo v2, ", Size: "

    .line 4223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4224
    iget v2, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 4223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4225
    :cond_1
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4214
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CopiesList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4218
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CopiesList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4270
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;

    invoke-direct {v1, p0}, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_parallelStream__LambdaImpl0;-><init>(Ljava/util/Collections$CopiesList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4206
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4275
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CopiesList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4265
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_stream__LambdaImpl0;

    invoke-direct {v1, p0}, Ljava/util/Collections$CopiesList$-java_util_stream_Stream_stream__LambdaImpl0;-><init>(Ljava/util/Collections$CopiesList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4252
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    if-gez p1, :cond_0

    .line 4253
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4254
    :cond_0
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    if-le p2, v0, :cond_1

    .line 4255
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4256
    :cond_1
    if-le p1, p2, :cond_2

    .line 4257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4258
    const-string/jumbo v2, ") > toIndex("

    .line 4257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4258
    const-string/jumbo v2, ")"

    .line 4257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4259
    :cond_2
    new-instance v0, Ljava/util/Collections$CopiesList;

    sub-int v1, p2, p1

    iget-object v2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 4229
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 4230
    .local v0, "a":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4231
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    iget-object v2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4232
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4237
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 4238
    .local v0, "n":I
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 4240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4239
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 4241
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4242
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4248
    :cond_0
    :goto_0
    return-object p1

    .line 4244
    :cond_1
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4245
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 4246
    aput-object v3, p1, v0

    goto :goto_0
.end method
