.class public interface abstract Lmf/org/w3c/dom/traversal/NodeIterator;
.super Ljava/lang/Object;
.source "NodeIterator.java"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract getExpandEntityReferences()Z
.end method

.method public abstract getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
.end method

.method public abstract getRoot()Lmf/org/w3c/dom/Node;
.end method

.method public abstract getWhatToShow()I
.end method

.method public abstract nextNode()Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract previousNode()Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
