.class public interface abstract Lmf/org/w3c/dom/svg/SVGTextContentElement;
.super Ljava/lang/Object;
.source "SVGTextContentElement.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGElement;
.implements Lmf/org/w3c/dom/svg/SVGTests;
.implements Lmf/org/w3c/dom/svg/SVGLangSpace;
.implements Lmf/org/w3c/dom/svg/SVGExternalResourcesRequired;
.implements Lmf/org/w3c/dom/svg/SVGStylable;
.implements Lmf/org/w3c/dom/events/EventTarget;


# static fields
.field public static final LENGTHADJUST_SPACING:S = 0x1s

.field public static final LENGTHADJUST_SPACINGANDGLYPHS:S = 0x2s

.field public static final LENGTHADJUST_UNKNOWN:S


# virtual methods
.method public abstract getCharNumAtPosition(Lmf/org/w3c/dom/svg/SVGPoint;)I
.end method

.method public abstract getComputedTextLength()F
.end method

.method public abstract getEndPositionOfChar(I)Lmf/org/w3c/dom/svg/SVGPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getExtentOfChar(I)Lmf/org/w3c/dom/svg/SVGRect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getLengthAdjust()Lmf/org/w3c/dom/svg/SVGAnimatedEnumeration;
.end method

.method public abstract getNumberOfChars()I
.end method

.method public abstract getRotationOfChar(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getStartPositionOfChar(I)Lmf/org/w3c/dom/svg/SVGPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getSubStringLength(II)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getTextLength()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract selectSubString(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
