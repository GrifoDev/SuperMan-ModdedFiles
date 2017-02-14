.class public interface abstract Lmf/org/w3c/dom/svg/SVGPoint;
.super Ljava/lang/Object;
.source "SVGPoint.java"


# virtual methods
.method public abstract getX()F
.end method

.method public abstract getY()F
.end method

.method public abstract matrixTransform(Lmf/org/w3c/dom/svg/SVGMatrix;)Lmf/org/w3c/dom/svg/SVGPoint;
.end method

.method public abstract setX(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setY(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
