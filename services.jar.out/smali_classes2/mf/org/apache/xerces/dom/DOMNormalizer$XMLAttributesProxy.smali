.class public final Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
.super Ljava/lang/Object;
.source "DOMNormalizer.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/DOMNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "XMLAttributesProxy"
.end annotation


# instance fields
.field protected fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

.field protected final fAugmentations:Ljava/util/Vector;

.field protected final fDTDTypes:Ljava/util/Vector;

.field protected fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field protected fElement:Lmf/org/apache/xerces/dom/ElementImpl;

.field final synthetic this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/DOMNormalizer;)V
    .locals 2

    const/4 v1, 0x5

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    return-void
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo v0, "NMTOKEN"

    return-object v0
.end method


# virtual methods
.method public addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->setXercesAttributeNode(Lmf/org/w3c/dom/Attr;)I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v2, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance v3, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/Augmentations;

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v0

    goto :goto_0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    invoke-virtual {v1, v0, p2}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "CDATA"

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CDATA"

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    return v0
.end method

.method public removeAllAttributes()V
    .locals 0

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 0

    return-void
.end method

.method public setAttributes(Lmf/org/apache/xerces/dom/AttributeMap;Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/ElementImpl;)V
    .locals 4

    const/4 v0, 0x0

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lmf/org/apache/xerces/dom/ElementImpl;

    if-nez p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance v3, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAugmentations(ILmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 0

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v1

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    goto :goto_0
.end method
