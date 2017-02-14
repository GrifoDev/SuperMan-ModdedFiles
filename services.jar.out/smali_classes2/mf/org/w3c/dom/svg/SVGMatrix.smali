.class public interface abstract Lmf/org/w3c/dom/svg/SVGMatrix;
.super Ljava/lang/Object;
.source "SVGMatrix.java"


# virtual methods
.method public abstract flipX()Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract flipY()Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract getA()F
.end method

.method public abstract getB()F
.end method

.method public abstract getC()F
.end method

.method public abstract getD()F
.end method

.method public abstract getE()F
.end method

.method public abstract getF()F
.end method

.method public abstract inverse()Lmf/org/w3c/dom/svg/SVGMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract multiply(Lmf/org/w3c/dom/svg/SVGMatrix;)Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract rotate(F)Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract rotateFromVector(FF)Lmf/org/w3c/dom/svg/SVGMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract scale(F)Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract scaleNonUniform(FF)Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract setA(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setB(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setC(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setD(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setE(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setF(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract skewX(F)Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract skewY(F)Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract translate(FF)Lmf/org/w3c/dom/svg/SVGMatrix;
.end method
