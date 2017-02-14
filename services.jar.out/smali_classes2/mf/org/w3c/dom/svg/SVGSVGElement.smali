.class public interface abstract Lmf/org/w3c/dom/svg/SVGSVGElement;
.super Ljava/lang/Object;
.source "SVGSVGElement.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGElement;
.implements Lmf/org/w3c/dom/svg/SVGTests;
.implements Lmf/org/w3c/dom/svg/SVGLangSpace;
.implements Lmf/org/w3c/dom/svg/SVGExternalResourcesRequired;
.implements Lmf/org/w3c/dom/svg/SVGStylable;
.implements Lmf/org/w3c/dom/svg/SVGLocatable;
.implements Lmf/org/w3c/dom/svg/SVGFitToViewBox;
.implements Lmf/org/w3c/dom/svg/SVGZoomAndPan;
.implements Lmf/org/w3c/dom/events/EventTarget;
.implements Lmf/org/w3c/dom/events/DocumentEvent;
.implements Lmf/org/w3c/dom/css/ViewCSS;
.implements Lmf/org/w3c/dom/css/DocumentCSS;


# virtual methods
.method public abstract animationsPaused()Z
.end method

.method public abstract checkEnclosure(Lmf/org/w3c/dom/svg/SVGElement;Lmf/org/w3c/dom/svg/SVGRect;)Z
.end method

.method public abstract checkIntersection(Lmf/org/w3c/dom/svg/SVGElement;Lmf/org/w3c/dom/svg/SVGRect;)Z
.end method

.method public abstract createSVGAngle()Lmf/org/w3c/dom/svg/SVGAngle;
.end method

.method public abstract createSVGLength()Lmf/org/w3c/dom/svg/SVGLength;
.end method

.method public abstract createSVGMatrix()Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract createSVGNumber()Lmf/org/w3c/dom/svg/SVGNumber;
.end method

.method public abstract createSVGPoint()Lmf/org/w3c/dom/svg/SVGPoint;
.end method

.method public abstract createSVGRect()Lmf/org/w3c/dom/svg/SVGRect;
.end method

.method public abstract createSVGTransform()Lmf/org/w3c/dom/svg/SVGTransform;
.end method

.method public abstract createSVGTransformFromMatrix(Lmf/org/w3c/dom/svg/SVGMatrix;)Lmf/org/w3c/dom/svg/SVGTransform;
.end method

.method public abstract deselectAll()V
.end method

.method public abstract forceRedraw()V
.end method

.method public abstract getContentScriptType()Ljava/lang/String;
.end method

.method public abstract getContentStyleType()Ljava/lang/String;
.end method

.method public abstract getCurrentScale()F
.end method

.method public abstract getCurrentTime()F
.end method

.method public abstract getCurrentTranslate()Lmf/org/w3c/dom/svg/SVGPoint;
.end method

.method public abstract getCurrentView()Lmf/org/w3c/dom/svg/SVGViewSpec;
.end method

.method public abstract getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
.end method

.method public abstract getEnclosureList(Lmf/org/w3c/dom/svg/SVGRect;Lmf/org/w3c/dom/svg/SVGElement;)Lmf/org/w3c/dom/NodeList;
.end method

.method public abstract getHeight()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract getIntersectionList(Lmf/org/w3c/dom/svg/SVGRect;Lmf/org/w3c/dom/svg/SVGElement;)Lmf/org/w3c/dom/NodeList;
.end method

.method public abstract getPixelUnitToMillimeterX()F
.end method

.method public abstract getPixelUnitToMillimeterY()F
.end method

.method public abstract getScreenPixelToMillimeterX()F
.end method

.method public abstract getScreenPixelToMillimeterY()F
.end method

.method public abstract getUseCurrentView()Z
.end method

.method public abstract getViewport()Lmf/org/w3c/dom/svg/SVGRect;
.end method

.method public abstract getWidth()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract getX()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract getY()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract pauseAnimations()V
.end method

.method public abstract setContentScriptType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setContentStyleType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setCurrentScale(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setCurrentTime(F)V
.end method

.method public abstract setUseCurrentView(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract suspendRedraw(I)I
.end method

.method public abstract unpauseAnimations()V
.end method

.method public abstract unsuspendRedraw(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract unsuspendRedrawAll()V
.end method
