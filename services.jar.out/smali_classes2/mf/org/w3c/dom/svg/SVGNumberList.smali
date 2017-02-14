.class public interface abstract Lmf/org/w3c/dom/svg/SVGNumberList;
.super Ljava/lang/Object;
.source "SVGNumberList.java"


# virtual methods
.method public abstract appendItem(Lmf/org/w3c/dom/svg/SVGNumber;)Lmf/org/w3c/dom/svg/SVGNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getItem(I)Lmf/org/w3c/dom/svg/SVGNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getNumberOfItems()I
.end method

.method public abstract initialize(Lmf/org/w3c/dom/svg/SVGNumber;)Lmf/org/w3c/dom/svg/SVGNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract insertItemBefore(Lmf/org/w3c/dom/svg/SVGNumber;I)Lmf/org/w3c/dom/svg/SVGNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract removeItem(I)Lmf/org/w3c/dom/svg/SVGNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract replaceItem(Lmf/org/w3c/dom/svg/SVGNumber;I)Lmf/org/w3c/dom/svg/SVGNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method
