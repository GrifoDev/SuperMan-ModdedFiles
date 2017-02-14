.class public Lmf/org/apache/xerces/impl/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/XPath$Axis;,
        Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;,
        Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Step;,
        Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z

.field private static final DEBUG_ANY:Z

.field private static final DEBUG_XPATH_PARSE:Z


# instance fields
.field protected final fExpression:Ljava/lang/String;

.field protected final fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

.field protected final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-void
.end method

.method private buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;-><init>([Lmf/org/apache/xerces/impl/xpath/XPath$Step;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static check(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x22

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-object v0, p0, v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "# XPath expression: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/XPath;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "expanded xpath: \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method private parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v2, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$1;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$1;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath;Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    :goto_0
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    if-nez v0, :cond_1

    move v0, v6

    :goto_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :sswitch_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v9}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v7

    invoke-direct {p0, v7, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v0

    if-ne v0, v10, :cond_2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v9}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v7

    invoke-direct {p0, v7, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v7, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v7, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-direct {p0, v5, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v5

    invoke-direct {v0, v7, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v4

    goto/16 :goto_0

    :sswitch_4
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v0

    if-ne v0, v10, :cond_3

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v7

    invoke-direct {p0, v7, v2, p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v4

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v0, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v5, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v7, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v7, v0, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->peekToken()I

    move-result v0

    const/16 v5, 0x16

    if-eq v0, v5, :cond_6

    move v0, v4

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v5, v8}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v7, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v7, v0, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_7
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    if-nez v0, :cond_7

    move v0, v6

    :goto_2
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    move v0, v6

    goto/16 :goto_0

    :cond_7
    move v0, v4

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    :goto_3
    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/XPath;->check(Z)V

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object v0

    :cond_9
    move v6, v4

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x6 -> :sswitch_1
        0x8 -> :sswitch_7
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0x15 -> :sswitch_8
        0x16 -> :sswitch_6
        0x17 -> :sswitch_0
        0x23 -> :sswitch_2
        0x24 -> :sswitch_4
    .end sparse-switch
.end method

.method private parseNodeTest(ILmf/org/apache/xerces/impl/xpath/XPath$Tokens;Lmf/org/apache/xerces/xni/NamespaceContext;)Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    return-object v0

    :pswitch_1
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_2

    :cond_0
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v1, :cond_3

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v1, :cond_5

    move-object v1, v2

    :goto_1
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v5, v3, v2, v1, v0}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    return-object v4

    :cond_2
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v3, v1, :cond_0

    invoke-interface {p3, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath-ns"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v1, v3, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getLocationPath()Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object v0
.end method

.method public getLocationPaths()[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v2, v0, [Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-gtz v0, :cond_0

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
