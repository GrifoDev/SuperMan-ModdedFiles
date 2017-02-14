.class public interface abstract Lmf/org/w3c/dom/svg/SVGAnimationElement;
.super Ljava/lang/Object;
.source "SVGAnimationElement.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGElement;
.implements Lmf/org/w3c/dom/svg/SVGTests;
.implements Lmf/org/w3c/dom/svg/SVGExternalResourcesRequired;
.implements Lmf/org/w3c/dom/smil/ElementTimeControl;
.implements Lmf/org/w3c/dom/events/EventTarget;


# virtual methods
.method public abstract getCurrentTime()F
.end method

.method public abstract getSimpleDuration()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getStartTime()F
.end method

.method public abstract getTargetElement()Lmf/org/w3c/dom/svg/SVGElement;
.end method
