.class public Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$Attrib;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;,
        Lcom/caverock/androidsvg/CSSParser$Rule;,
        Lcom/caverock/androidsvg/CSSParser$Ruleset;,
        Lcom/caverock/androidsvg/CSSParser$Selector;,
        Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    }
.end annotation


# instance fields
.field private inMediaRule:Z

.field private rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    return-void
.end method

.method private static getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")I"
        }
    .end annotation

    const/4 v5, -0x1

    if-ltz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return v5

    :cond_0
    return v5

    :cond_1
    return v5

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    if-eq v1, p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v2

    return v2

    :cond_0
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string/jumbo v3, "Invalid @media type list"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    if-eq v1, p1, :cond_1

    goto :goto_0
.end method

.method private parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    if-eqz v2, :cond_3

    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string/jumbo v3, "Ignoring @%s rule"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/CSSParser;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    :cond_1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    return-void

    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string/jumbo v3, "Invalid \'@\' rule in <style> element"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string/jumbo v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {p2, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    :goto_0
    const/16 v2, 0x7d

    invoke-virtual {p2, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    const-string/jumbo v3, "Invalid @media rule: expected \'}\' at end of rule set"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string/jumbo v3, "Invalid @media rule: missing rule set"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iput-boolean v4, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    iput-boolean v3, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    goto :goto_0
.end method

.method protected static parseClassAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for \"class\" attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method private parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextPropertyValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v3, 0x21

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    invoke-static {v2, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string/jumbo v4, "Malformed rule set in <style> element"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const-string/jumbo v3, "important"

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string/jumbo v4, "Malformed rule set in <style> element: found unexpected \'!\'"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    return-object v2
.end method

.method private static parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    const-string/jumbo v4, "Invalid @media type list"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x7b

    invoke-virtual {p2, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    return v4

    :cond_2
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string/jumbo v5, "Malformed rule block in <style> element: missing \'{\'"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Selector;

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Rule;

    invoke-direct {v4, v2, v1}, Lcom/caverock/androidsvg/CSSParser$Rule;-><init>(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->add(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    goto :goto_0
.end method

.method private parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v1, "<!--"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "-->"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    goto :goto_0
.end method

.method private parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    return-object v1

    :cond_2
    const/4 v2, 0x0

    return-object v2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v2

    invoke-static {v2, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v3, v4, :cond_1

    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v3, v4, :cond_5

    invoke-static {p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v3, p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    add-int/lit8 v3, p1, -0x1

    invoke-static {p0, v3, p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    return v3

    :cond_0
    return v5

    :cond_1
    if-eqz p1, :cond_2

    :goto_0
    if-gez p3, :cond_3

    return v5

    :cond_2
    return v6

    :cond_3
    add-int/lit8 v3, p1, -0x1

    invoke-static {p0, v3, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v6

    :cond_5
    add-int/lit8 v3, p1, -0x1

    invoke-static {p0, v3, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v3

    return v3

    :cond_6
    return v5
.end method

.method protected static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    :goto_0
    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v3, v0, v1, p1}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    return v3

    :cond_0
    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v3

    invoke-static {v3, v0, v1, p1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    return v3
.end method

.method private static ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-static {v3, p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v4, v5, :cond_5

    invoke-static {p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    add-int/lit8 v4, p1, -0x1

    invoke-static {p0, v4, p2, p3, v2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v4

    return v4

    :cond_0
    return v6

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    if-gtz p3, :cond_4

    return v6

    :cond_3
    return v7

    :cond_4
    add-int/lit8 v4, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, v4, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_2

    return v7

    :cond_5
    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, p3, -0x1

    invoke-static {p0, v4, p2, v5}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v4

    return v4

    :cond_6
    return v6
.end method

.method private static selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v3, :cond_a

    :cond_2
    const/4 v3, 0x1

    return v3

    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const-string/jumbo v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v6

    :cond_4
    instance-of v3, p3, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v3, :cond_0

    return v6

    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Attrib;

    iget-object v3, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string/jumbo v4, "id"

    if-eq v3, v4, :cond_7

    iget-object v3, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string/jumbo v4, "class"

    if-eq v3, v4, :cond_8

    return v6

    :cond_7
    iget-object v3, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    iget-object v4, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v6

    :cond_8
    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    iget-object v4, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v6

    :cond_9
    return v6

    :cond_a
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "first-child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v6

    :cond_c
    invoke-static {p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v3

    if-eqz v3, :cond_b

    return v6
.end method

.method private skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 3

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x7b

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void

    :cond_3
    if-nez v1, :cond_2

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AndroidSVG CSSParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v1

    return-object v1
.end method
