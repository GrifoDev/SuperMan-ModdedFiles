.class Ljava/text/CharacterIteratorFieldDelegate;
.super Ljava/lang/Object;
.source "CharacterIteratorFieldDelegate.java"

# interfaces
.implements Ljava/text/Format$FieldDelegate;


# instance fields
.field private attributedStrings:Ljava/util/ArrayList;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    .line 52
    return-void
.end method


# virtual methods
.method public formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 6
    .param p1, "fieldID"    # I
    .param p2, "attr"    # Ljava/text/Format$Field;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 97
    invoke-virtual/range {v0 .. v5}, Ljava/text/CharacterIteratorFieldDelegate;->formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    .line 96
    return-void
.end method

.method public formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 10
    .param p1, "attr"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 58
    if-eq p3, p4, :cond_2

    .line 59
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-ge p3, v7, :cond_0

    .line 61
    iget v4, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 62
    .local v4, "index":I
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "asIndex":I
    move v3, v2

    .line 64
    .end local v2    # "asIndex":I
    .local v3, "asIndex":I
    :goto_0
    if-ge p3, v4, :cond_0

    .line 65
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    .line 66
    add-int/lit8 v2, v3, -0x1

    .line 65
    .end local v3    # "asIndex":I
    .restart local v2    # "asIndex":I
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString;

    .line 67
    .local v1, "as":Ljava/text/AttributedString;
    invoke-virtual {v1}, Ljava/text/AttributedString;->length()I

    move-result v7

    sub-int v5, v4, v7

    .line 68
    .local v5, "newIndex":I
    sub-int v7, p3, v5

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    .local v0, "aStart":I
    sub-int v7, p4, p3

    invoke-virtual {v1}, Ljava/text/AttributedString;->length()I

    move-result v8

    sub-int/2addr v8, v0

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v1, p1, p2, v0, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 73
    move v4, v5

    move v3, v2

    .end local v2    # "asIndex":I
    .restart local v3    # "asIndex":I
    goto :goto_0

    .line 76
    .end local v0    # "aStart":I
    .end local v1    # "as":Ljava/text/AttributedString;
    .end local v3    # "asIndex":I
    .end local v4    # "index":I
    .end local v5    # "newIndex":I
    :cond_0
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-ge v7, p3, :cond_1

    .line 78
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    new-instance v8, Ljava/text/AttributedString;

    .line 79
    iget v9, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    invoke-virtual {p5, v9, p3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 78
    invoke-direct {v8, v9}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iput p3, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 82
    :cond_1
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-ge v7, p4, :cond_2

    .line 84
    iget v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 85
    .restart local v0    # "aStart":I
    new-instance v6, Ljava/text/AttributedString;

    .line 86
    invoke-virtual {p5, v0, p4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-direct {v6, v7}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, "string":Ljava/text/AttributedString;
    invoke-virtual {v6, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 89
    iget-object v7, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iput p4, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 57
    .end local v0    # "aStart":I
    .end local v6    # "string":Ljava/text/AttributedString;
    :cond_2
    return-void
.end method

.method public getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    if-le v3, v4, :cond_0

    .line 110
    iget-object v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    new-instance v4, Ljava/text/AttributedString;

    .line 111
    iget v5, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-direct {v4, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->size:I

    .line 114
    :cond_0
    iget-object v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 115
    .local v1, "iCount":I
    new-array v2, v1, [Ljava/text/AttributedCharacterIterator;

    .line 118
    .local v2, "iterators":[Ljava/text/AttributedCharacterIterator;
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 119
    iget-object v3, p0, Ljava/text/CharacterIteratorFieldDelegate;->attributedStrings:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedString;

    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    aput-object v3, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    new-instance v3, Ljava/text/AttributedString;

    invoke-direct {v3, v2}, Ljava/text/AttributedString;-><init>([Ljava/text/AttributedCharacterIterator;)V

    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    return-object v3
.end method
