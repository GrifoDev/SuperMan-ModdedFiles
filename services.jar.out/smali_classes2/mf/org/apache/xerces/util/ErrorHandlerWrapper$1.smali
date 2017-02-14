.class Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;
.super Ljava/lang/Object;
.source "ErrorHandlerWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fColumnNumber:I

.field private final synthetic val$fExpandedSystemId:Ljava/lang/String;

.field private final synthetic val$fLineNumber:I

.field private final synthetic val$fPublicId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fExpandedSystemId:Ljava/lang/String;

    iput p3, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fColumnNumber:I

    iput p4, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fLineNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fColumnNumber:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fExpandedSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fLineNumber:I

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper$1;->val$fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
