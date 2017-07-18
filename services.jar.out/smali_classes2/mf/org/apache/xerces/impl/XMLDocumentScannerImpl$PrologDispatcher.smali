.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PrologDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v6

    :goto_0
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    if-nez p1, :cond_19

    :goto_1
    return v1

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "MarkupNotRecognizedInProlog"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "DOCTYPE"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "MarkupNotRecognizedInProlog"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "InvalidCommentStart"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v6

    :cond_6
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v1

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v1

    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanComment()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v6

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanPI()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v6

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v0, :cond_a

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v0, :cond_b

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanDoctypeDecl()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    if-nez v0, :cond_13

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v6

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "DoctypeNotAllowed"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_1
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "CharConversionFailure"

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v6

    :cond_b
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "AlreadySeenDoctype"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v1, "PrematureEOF"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_c
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v1

    :cond_d
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    iput-boolean v0, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-eqz v0, :cond_11

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v0, :cond_12

    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v1

    :cond_10
    move v0, v6

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-nez v0, :cond_e

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_5

    :cond_13
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-nez v0, :cond_16

    move v0, v1

    :goto_7
    iput-boolean v0, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-eqz v0, :cond_17

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v0, :cond_18

    :cond_15
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$3(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v1

    :cond_16
    move v0, v6

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-nez v0, :cond_14

    goto/16 :goto_5

    :cond_18
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "ContentIllegalInProlog"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :pswitch_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "ReferenceIllegalInProlog"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1a

    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto/16 :goto_1

    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "RootElementRequired"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
