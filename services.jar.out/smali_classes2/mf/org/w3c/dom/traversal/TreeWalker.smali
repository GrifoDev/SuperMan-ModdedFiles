.class public interface abstract Lmf/org/w3c/dom/traversal/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# virtual methods
.method public abstract firstChild()Lmf/org/w3c/dom/Node;
.end method

.method public abstract getCurrentNode()Lmf/org/w3c/dom/Node;
.end method

.method public abstract getExpandEntityReferences()Z
.end method

.method public abstract getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
.end method

.method public abstract getRoot()Lmf/org/w3c/dom/Node;
.end method

.method public abstract getWhatToShow()I
.end method

.method public abstract lastChild()Lmf/org/w3c/dom/Node;
.end method

.method public abstract nextNode()Lmf/org/w3c/dom/Node;
.end method

.method public abstract nextSibling()Lmf/org/w3c/dom/Node;
.end method

.method public abstract parentNode()Lmf/org/w3c/dom/Node;
.end method

.method public abstract previousNode()Lmf/org/w3c/dom/Node;
.end method

.method public abstract previousSibling()Lmf/org/w3c/dom/Node;
.end method

.method public abstract setCurrentNode(Lmf/org/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
