.class final Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
.super Ljava/lang/Object;
.source "XSAnnotationInfo.java"


# instance fields
.field fAnnotation:Ljava/lang/String;

.field fCharOffset:I

.field fColumn:I

.field fLine:I

.field next:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    iput p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    iput p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    instance-of v0, p2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v0, :cond_0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    :goto_0
    return-void

    :cond_0
    check-cast p2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fLine:I

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fColumn:I

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fCharOffset:I

    goto :goto_0
.end method
