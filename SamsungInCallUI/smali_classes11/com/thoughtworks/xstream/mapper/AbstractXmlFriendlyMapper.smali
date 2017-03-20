.class public Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "AbstractXmlFriendlyMapper.java"


# instance fields
.field private dollarReplacementInClass:C

.field private dollarReplacementInField:Ljava/lang/String;

.field private noPackagePrefix:Ljava/lang/String;

.field private underscoreReplacementInField:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 34
    const/16 v0, 0x2d

    iput-char v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInClass:C

    .line 35
    const-string v0, "_DOLLAR_"

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInField:Ljava/lang/String;

    .line 36
    const-string v0, "__"

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->underscoreReplacementInField:Ljava/lang/String;

    .line 37
    const-string v0, "default"

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->noPackagePrefix:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private stringFoundAt(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "replacement"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected escapeClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 45
    const/16 v0, 0x24

    iget-char v1, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInClass:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInClass:C

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->noPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_0
    return-object p1
.end method

.method protected escapeFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v3, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 70
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 72
    .local v0, "c":C
    const/16 v4, 0x24

    if-ne v0, v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInField:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/16 v4, 0x5f

    if-ne v0, v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->underscoreReplacementInField:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 80
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected unescapeClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->noPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInClass:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->noPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_0
    iget-char v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInClass:C

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 64
    return-object p1
.end method

.method protected unescapeFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "xmlName"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v3, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 86
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, "c":C
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->underscoreReplacementInField:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->stringFoundAt(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->underscoreReplacementInField:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v1, v4

    .line 90
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInField:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->stringFoundAt(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    iget-object v4, p0, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->dollarReplacementInField:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v1, v4

    .line 93
    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 98
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
