.class final Lcom/google/common/net/MediaType$Tokenizer;
.super Ljava/lang/Object;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tokenizer"
.end annotation


# instance fields
.field final input:Ljava/lang/String;

.field position:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    iput-object p1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method consumeCharacter(C)C
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    return p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method consumeCharacter(Lcom/google/common/base/CharMatcher;)C
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    return v0
.end method

.method consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    invoke-virtual {p0, p1}, Lcom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    if-eq v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    invoke-virtual {p1}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    iput v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method hasMore()Z
    .locals 2

    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    iget-object v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method previewChar()C
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
