.class Ljava/text/AttributeEntry;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object p2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/text/AttributeEntry;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v2, v0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v3, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v2, v3}, Ljava/text/AttributedCharacterIterator$Attribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v2, v0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v1, v0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    iget-object v2, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v0}, Ljava/text/AttributedCharacterIterator$Attribute;->hashCode()I

    move-result v1

    iget-object v0, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/text/AttributeEntry;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {v1}, Ljava/text/AttributedCharacterIterator$Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/AttributeEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
