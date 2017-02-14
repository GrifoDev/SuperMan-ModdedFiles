.class public interface abstract Lmf/org/w3c/dom/svg/SVGElement;
.super Ljava/lang/Object;
.source "SVGElement.java"

# interfaces
.implements Lmf/org/w3c/dom/Element;


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOwnerSVGElement()Lmf/org/w3c/dom/svg/SVGSVGElement;
.end method

.method public abstract getViewportElement()Lmf/org/w3c/dom/svg/SVGElement;
.end method

.method public abstract getXMLbase()Ljava/lang/String;
.end method

.method public abstract setId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setXMLbase(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
