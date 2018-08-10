.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mTypeSize:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return v0
.end method

.method static synthetic -get2(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    return v0
.end method

.method static synthetic -get3(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    return v0
.end method

.method public constructor <init>(II[B)V
    .locals 3

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid sizes - typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez p2, :cond_0

    if-gt p2, v1, :cond_0

    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    if-nez p3, :cond_2

    :goto_0
    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return-void

    :cond_2
    array-length v0, p3

    goto :goto_0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;-><init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    iget-object v3, v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    iget v4, v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v5, v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v6, v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    add-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    if-nez v1, :cond_1

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    const-string/jumbo v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    if-eqz v4, :cond_2

    const-string/jumbo v4, "T="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v4, "L="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-nez v4, :cond_3

    const-string/jumbo v4, "<null>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-eqz v4, :cond_0

    const-string/jumbo v4, " (S=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getByte()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getShort()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    invoke-virtual {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getInt()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "<bytes>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
