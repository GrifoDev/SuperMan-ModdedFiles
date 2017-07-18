.class public final Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;
.source "XML11NSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NS11ContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    return-void
.end method

.method private reconfigurePipeline()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->hasGrammar()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->validate()Z

    move-result v1

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    if-nez v1, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_1
.end method


# virtual methods
.method protected scanRootElementHook()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v3, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->reconfigurePipeline()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElement()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fValidation:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElementName()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->resolveExternalSubsetAndRead()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->reconfigurePipeline()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElementAfterName()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fLoadExternalDTD:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v2
.end method
