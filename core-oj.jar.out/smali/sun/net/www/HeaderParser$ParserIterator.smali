.class Lsun/net/www/HeaderParser$ParserIterator;
.super Ljava/lang/Object;
.source "HeaderParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/HeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserIterator"
.end annotation


# instance fields
.field index:I

.field returnsValue:Z

.field final synthetic this$0:Lsun/net/www/HeaderParser;


# direct methods
.method constructor <init>(Lsun/net/www/HeaderParser;Z)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/HeaderParser$ParserIterator;->this$0:Lsun/net/www/HeaderParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lsun/net/www/HeaderParser$ParserIterator;->returnsValue:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lsun/net/www/HeaderParser$ParserIterator;->index:I

    iget-object v1, p0, Lsun/net/www/HeaderParser$ParserIterator;->this$0:Lsun/net/www/HeaderParser;

    iget v1, v1, Lsun/net/www/HeaderParser;->nkeys:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsun/net/www/HeaderParser$ParserIterator;->this$0:Lsun/net/www/HeaderParser;

    iget-object v0, v0, Lsun/net/www/HeaderParser;->tab:[[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/HeaderParser$ParserIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/net/www/HeaderParser$ParserIterator;->index:I

    aget-object v1, v0, v1

    iget-boolean v0, p0, Lsun/net/www/HeaderParser$ParserIterator;->returnsValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
