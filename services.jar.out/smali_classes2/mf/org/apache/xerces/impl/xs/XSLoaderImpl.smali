.class public final Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;
.super Ljava/lang/Object;
.source "XSLoaderImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSLoader;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;
    }
.end annotation


# instance fields
.field private final fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

.field private final fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl$XSGrammarMerger;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getParameterNames()Lmf/org/w3c/dom/DOMStringList;

    move-result-object v0

    return-object v0
.end method

.method public load(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadInputList(Lmf/org/apache/xerces/xs/LSInputList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 5

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/LSInputList;->getLength()I

    move-result v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/LSInputList;->item(I)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadURI(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    return-object v4
.end method

.method public loadURIList(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 8

    const/4 v7, 0x0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fGrammarPool:Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    return-object v7
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
