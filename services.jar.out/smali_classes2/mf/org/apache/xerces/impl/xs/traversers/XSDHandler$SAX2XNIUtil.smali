.class final Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;
.super Lmf/org/apache/xerces/util/ErrorHandlerWrapper;
.source "XSDHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SAX2XNIUtil"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>()V

    return-void
.end method

.method public static createXMLParseException0(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;
    .locals 1

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object v0

    return-object v0
.end method

.method public static createXNIException0(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;
    .locals 1

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXNIException(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object v0

    return-object v0
.end method
