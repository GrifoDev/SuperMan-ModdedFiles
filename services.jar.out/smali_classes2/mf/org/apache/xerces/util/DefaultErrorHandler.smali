.class public Lmf/org/apache/xerces/util/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    return-void
.end method

.method private printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 4

    const/16 v3, 0x3a

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string/jumbo v0, "Error"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string/jumbo v0, "Fatal Error"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    throw p3
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string/jumbo v0, "Warning"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    return-void
.end method
