.class public interface abstract Lmf/org/w3c/dom/svg/SVGMarkerElement;
.super Ljava/lang/Object;
.source "SVGMarkerElement.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGElement;
.implements Lmf/org/w3c/dom/svg/SVGLangSpace;
.implements Lmf/org/w3c/dom/svg/SVGExternalResourcesRequired;
.implements Lmf/org/w3c/dom/svg/SVGStylable;
.implements Lmf/org/w3c/dom/svg/SVGFitToViewBox;


# static fields
.field public static final SVG_MARKERUNITS_STROKEWIDTH:S = 0x2s

.field public static final SVG_MARKERUNITS_UNKNOWN:S = 0x0s

.field public static final SVG_MARKERUNITS_USERSPACEONUSE:S = 0x1s

.field public static final SVG_MARKER_ORIENT_ANGLE:S = 0x2s

.field public static final SVG_MARKER_ORIENT_AUTO:S = 0x1s

.field public static final SVG_MARKER_ORIENT_UNKNOWN:S


# virtual methods
.method public abstract getMarkerHeight()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract getMarkerUnits()Lmf/org/w3c/dom/svg/SVGAnimatedEnumeration;
.end method

.method public abstract getMarkerWidth()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract getOrientAngle()Lmf/org/w3c/dom/svg/SVGAnimatedAngle;
.end method

.method public abstract getOrientType()Lmf/org/w3c/dom/svg/SVGAnimatedEnumeration;
.end method

.method public abstract getRefX()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract getRefY()Lmf/org/w3c/dom/svg/SVGAnimatedLength;
.end method

.method public abstract setOrientToAngle(Lmf/org/w3c/dom/svg/SVGAngle;)V
.end method

.method public abstract setOrientToAuto()V
.end method
