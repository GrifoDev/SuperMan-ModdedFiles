.class Ljava/util/regex/Pattern$1MatcherIterator;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatcherIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field private emptyElementCount:I

.field private final matcher:Ljava/util/regex/Matcher;

.field private nextElement:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/regex/Pattern;

.field final synthetic val$input:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->this$0:Ljava/util/regex/Pattern;

    iput-object p2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-lez v0, :cond_1

    :cond_0
    return v4

    :cond_1
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    return v3

    :cond_2
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    if-lez v0, :cond_3

    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    :cond_3
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    :cond_4
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    :cond_5
    iput v3, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    iput-object v5, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    return v3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-nez v1, :cond_1

    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    return-object v0

    :cond_1
    iget v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    const-string/jumbo v1, ""

    return-object v1
.end method
