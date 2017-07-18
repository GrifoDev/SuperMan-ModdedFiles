.class public Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;
.super Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;
.source "XMLDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V

    return-void
.end method


# virtual methods
.method protected elementDepthIsZeroHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected endOfFileHook(Ljava/io/EOFException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v1, "PrematureEOF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected resolveExternalSubsetAndRead()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v5, v1, v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/ExternalSubsetResolver;->getExternalSubset(Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_3

    :goto_1
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    throw v0
.end method

.method protected scanForDoctypeHook()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v1, "DOCTYPE"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v0, 0x1

    return v0
.end method

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElement()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElementName()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->resolveExternalSubsetAndRead()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElementAfterName()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v2
.end method
