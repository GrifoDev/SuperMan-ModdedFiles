.class public Lmf/org/apache/wml/dom/WMLDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "WMLDocumentImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLDocument;


# static fields
.field private static final _elemClassSigWML:[Ljava/lang/Class;

.field private static _elementTypesWML:Ljava/util/Hashtable; = null

.field private static final serialVersionUID:J = -0x5b5b2d153961c668L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lmf/org/apache/wml/dom/WMLDocumentImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elemClassSigWML:[Ljava/lang/Class;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "b"

    const-class v2, Lmf/org/apache/wml/dom/WMLBElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "noop"

    const-class v2, Lmf/org/apache/wml/dom/WMLNoopElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "a"

    const-class v2, Lmf/org/apache/wml/dom/WMLAElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "setvar"

    const-class v2, Lmf/org/apache/wml/dom/WMLSetvarElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "access"

    const-class v2, Lmf/org/apache/wml/dom/WMLAccessElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "strong"

    const-class v2, Lmf/org/apache/wml/dom/WMLStrongElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "postfield"

    const-class v2, Lmf/org/apache/wml/dom/WMLPostfieldElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "do"

    const-class v2, Lmf/org/apache/wml/dom/WMLDoElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "wml"

    const-class v2, Lmf/org/apache/wml/dom/WMLWmlElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "tr"

    const-class v2, Lmf/org/apache/wml/dom/WMLTrElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "go"

    const-class v2, Lmf/org/apache/wml/dom/WMLGoElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "big"

    const-class v2, Lmf/org/apache/wml/dom/WMLBigElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "anchor"

    const-class v2, Lmf/org/apache/wml/dom/WMLAnchorElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "timer"

    const-class v2, Lmf/org/apache/wml/dom/WMLTimerElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "small"

    const-class v2, Lmf/org/apache/wml/dom/WMLSmallElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "optgroup"

    const-class v2, Lmf/org/apache/wml/dom/WMLOptgroupElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "head"

    const-class v2, Lmf/org/apache/wml/dom/WMLHeadElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "td"

    const-class v2, Lmf/org/apache/wml/dom/WMLTdElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "fieldset"

    const-class v2, Lmf/org/apache/wml/dom/WMLFieldsetElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "img"

    const-class v2, Lmf/org/apache/wml/dom/WMLImgElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "refresh"

    const-class v2, Lmf/org/apache/wml/dom/WMLRefreshElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "onevent"

    const-class v2, Lmf/org/apache/wml/dom/WMLOneventElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "input"

    const-class v2, Lmf/org/apache/wml/dom/WMLInputElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "prev"

    const-class v2, Lmf/org/apache/wml/dom/WMLPrevElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "table"

    const-class v2, Lmf/org/apache/wml/dom/WMLTableElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "meta"

    const-class v2, Lmf/org/apache/wml/dom/WMLMetaElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "template"

    const-class v2, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "br"

    const-class v2, Lmf/org/apache/wml/dom/WMLBrElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "option"

    const-class v2, Lmf/org/apache/wml/dom/WMLOptionElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "u"

    const-class v2, Lmf/org/apache/wml/dom/WMLUElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "p"

    const-class v2, Lmf/org/apache/wml/dom/WMLPElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "select"

    const-class v2, Lmf/org/apache/wml/dom/WMLSelectElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "em"

    const-class v2, Lmf/org/apache/wml/dom/WMLEmElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "i"

    const-class v2, Lmf/org/apache/wml/dom/WMLIElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "card"

    const-class v2, Lmf/org/apache/wml/dom/WMLCardElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;Z)V

    return-void
.end method


# virtual methods
.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z
    .locals 3

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lmf/org/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    sget-object v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/wml/dom/WMLElementImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lmf/org/apache/wml/dom/WMLDocumentImpl;->_elemClassSigWML:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-nez v1, :cond_1

    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tag \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' associated with an Element class that failed to construct."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method
