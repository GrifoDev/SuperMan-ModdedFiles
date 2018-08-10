.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "(?s)/\\*.*?\\*/"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2

    :cond_1
    return-object v0
.end method

.method private scanForIdentifier()I
    .locals 10

    const/16 v9, 0x61

    const/16 v8, 0x5f

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x2d

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_3

    :goto_0
    if-ge v0, v6, :cond_4

    :cond_0
    if-ge v0, v9, :cond_a

    :cond_1
    if-eq v0, v8, :cond_5

    :goto_1
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v1

    :cond_2
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    :cond_4
    if-gt v0, v7, :cond_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    :goto_3
    if-ge v0, v6, :cond_b

    :cond_6
    if-ge v0, v9, :cond_c

    :cond_7
    const/16 v3, 0x30

    if-ge v0, v3, :cond_d

    :cond_8
    if-ne v0, v5, :cond_e

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_3

    :cond_a
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    goto :goto_2

    :cond_b
    if-gt v0, v7, :cond_6

    goto :goto_4

    :cond_c
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_7

    goto :goto_4

    :cond_d
    const/16 v3, 0x39

    if-gt v0, v3, :cond_8

    goto :goto_4

    :cond_e
    if-eq v0, v8, :cond_9

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_1
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_1

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-gt v3, v2, :cond_4

    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v5

    :cond_1
    return-object v5

    :cond_2
    const/16 v3, 0x3b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x21

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v9

    if-nez v9, :cond_2

    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    :goto_0
    const/16 v9, 0x2a

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_1
    :goto_2
    if-nez v5, :cond_19

    iput v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v11

    :cond_2
    return v11

    :cond_3
    const/16 v9, 0x3e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0x2b

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_5
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v7}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    goto :goto_1

    :cond_7
    const/16 v9, 0x2e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_9

    const/16 v9, 0x23

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_c

    :goto_3
    if-eqz v5, :cond_1

    const/16 v9, 0x5b

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_f

    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const/16 v9, 0x28

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_18

    :cond_8
    iget-object v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v10, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v10, "class"

    invoke-virtual {v5, v10, v9, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_1

    :cond_a
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid \".class\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_c
    if-eqz v5, :cond_d

    :goto_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v10, "id"

    invoke-virtual {v5, v10, v9, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    goto :goto_3

    :cond_d
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_f
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/4 v3, 0x0

    const/16 v9, 0x3d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_11

    const-string/jumbo v9, "~="

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string/jumbo v9, "|="

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    :goto_6
    if-nez v3, :cond_14

    :goto_7
    const/16 v9, 0x5d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_16

    if-eqz v3, :cond_17

    :goto_8
    invoke-virtual {v5, v0, v3, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_1

    :cond_10
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_11
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_6

    :cond_12
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_6

    :cond_13
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_6

    :cond_14
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_7

    :cond_15
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_16
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_17
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_8

    :cond_18
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v9, 0x29

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_8

    add-int/lit8 v9, v4, -0x1

    iput v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto/16 :goto_2

    :cond_19
    invoke-virtual {p1, v5}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    const/4 v9, 0x1

    return v9
.end method
