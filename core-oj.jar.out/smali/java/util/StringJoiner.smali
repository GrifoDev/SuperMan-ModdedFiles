.class public final Ljava/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private value:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/CharSequence;
    .param p3, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string/jumbo v0, "The prefix must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v0, "The suffix must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->delimiter:Ljava/lang/String;

    .line 127
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private prepareBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :goto_0
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1
    .param p1, "newElement"    # Ljava/lang/CharSequence;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 186
    return-object p0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    .line 245
    :cond_0
    iget-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .locals 4
    .param p1, "other"    # Ljava/util/StringJoiner;

    .prologue
    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v2, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 215
    .local v1, "length":I
    invoke-direct {p0}, Ljava/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p1, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v3, p1, Ljava/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 218
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "length":I
    :cond_0
    return-object p0
.end method

.method public setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1
    .param p1, "emptyValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    const-string/jumbo v0, "The empty value must not be null"

    .line 146
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Ljava/util/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object v2

    .line 164
    :cond_0
    iget-object v2, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 167
    :cond_1
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 168
    .local v0, "initialLength":I
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 171
    return-object v1
.end method
