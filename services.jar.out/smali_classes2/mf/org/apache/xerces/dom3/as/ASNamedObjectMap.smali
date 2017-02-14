.class public interface abstract Lmf/org/apache/xerces/dom3/as/ASNamedObjectMap;
.super Ljava/lang/Object;
.source "ASNamedObjectMap.java"


# virtual methods
.method public abstract getLength()I
.end method

.method public abstract getNamedItem(Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASObject;
.end method

.method public abstract getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASObject;
.end method

.method public abstract item(I)Lmf/org/apache/xerces/dom3/as/ASObject;
.end method

.method public abstract removeNamedItem(Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setNamedItem(Lmf/org/apache/xerces/dom3/as/ASObject;)Lmf/org/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setNamedItemNS(Lmf/org/apache/xerces/dom3/as/ASObject;)Lmf/org/apache/xerces/dom3/as/ASObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
