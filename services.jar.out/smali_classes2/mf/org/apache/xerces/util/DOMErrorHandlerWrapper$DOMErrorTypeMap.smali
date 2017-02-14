.class Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;
.super Ljava/lang/Object;
.source "DOMErrorHandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DOMErrorTypeMap"
.end annotation


# static fields
.field private static fgDOMErrorTypeTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInCDSect"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "TwoColonsInQName"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ColonNotLegalWithNS"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInProlog"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "CDEndInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "CDSectUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "DoctypeNotAllowed"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "doctype-not-allowed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ETagRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EqRequiredInAttribute"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "OpenQuoteExpected"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "CloseQuoteExpected"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ETagUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MarkupNotRecognizedInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "DoctypeIllegalInContent"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "doctype-not-allowed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInAttValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInPI"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInInternalSubset"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "QuoteRequiredInAttValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "LessthanInAttValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttributeValueUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PITargetRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredInPI"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PIUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ReservedPITarget"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PI_NOT_IN_ONE_ENTITY"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PINotInOneEntity"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingDeclInvalid"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingByteOrderUnsupported"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInEntityValue"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInExternalSubset"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInIgnoreSect"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInPublicID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "InvalidCharInSystemID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredAfterSYSTEM"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "QuoteRequiredInSystemID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SystemIDUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredAfterPUBLIC"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "QuoteRequiredInPublicID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PublicIDUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PubidCharIllegal"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SpaceRequiredBetweenPublicAndSystem"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "DoctypedeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PEReferenceWithinMarkup"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_CONTENTSPEC_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementDeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_CLOSE_PAREN_REQUIRED_IN_MIXED"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MixedContentUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttNameRequiredInAttDef"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttTypeRequiredInAttDef"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "NotationTypeUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EnumerationUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DISTINCT_TOKENS_IN_ENUMERATION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DISTINCT_NOTATION_IN_ENUMERATION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "IncludeSectUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "IgnoreSectUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "NameRequiredInPEReference"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "SemicolonRequiredInPEReference"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EntityDeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ExternalIDRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_SYSTEMLITERAL_IN_EXTERNALID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_URI_FRAGMENT_IN_SYSTEMID"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ExternalIDorPublicIDRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "NotationDeclUnterminated"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ReferenceToExternalEntity"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ReferenceToUnparsedEntity"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingNotSupported"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingRequired"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "IllegalQName"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementXMLNSPrefix"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ElementPrefixUnbound"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "AttributePrefixUnbound"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EmptyPrefixedAttName"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/util/XMLErrorCode;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "PrefixDeclared"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDOMErrorType(Lmf/org/apache/xerces/util/XMLErrorCode;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
