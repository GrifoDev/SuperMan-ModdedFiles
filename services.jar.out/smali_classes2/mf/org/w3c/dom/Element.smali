.class public interface abstract Lmf/org/w3c/dom/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lmf/org/w3c/dom/Node;


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
.end method

.method public abstract getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
.end method

.method public abstract getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getSchemaTypeInfo()Lmf/org/w3c/dom/TypeInfo;
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public abstract hasAttribute(Ljava/lang/String;)Z
.end method

.method public abstract hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setIdAttribute(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
