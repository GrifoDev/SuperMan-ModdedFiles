.class public interface abstract Lmf/org/w3c/dom/svg/SVGLocatable;
.super Ljava/lang/Object;
.source "SVGLocatable.java"


# virtual methods
.method public abstract getBBox()Lmf/org/w3c/dom/svg/SVGRect;
.end method

.method public abstract getCTM()Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract getFarthestViewportElement()Lmf/org/w3c/dom/svg/SVGElement;
.end method

.method public abstract getNearestViewportElement()Lmf/org/w3c/dom/svg/SVGElement;
.end method

.method public abstract getScreenCTM()Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract getTransformToElement(Lmf/org/w3c/dom/svg/SVGElement;)Lmf/org/w3c/dom/svg/SVGMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method
