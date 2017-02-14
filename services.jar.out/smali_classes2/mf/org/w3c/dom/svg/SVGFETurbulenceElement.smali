.class public interface abstract Lmf/org/w3c/dom/svg/SVGFETurbulenceElement;
.super Ljava/lang/Object;
.source "SVGFETurbulenceElement.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGElement;
.implements Lmf/org/w3c/dom/svg/SVGFilterPrimitiveStandardAttributes;


# static fields
.field public static final SVG_STITCHTYPE_NOSTITCH:S = 0x2s

.field public static final SVG_STITCHTYPE_STITCH:S = 0x1s

.field public static final SVG_STITCHTYPE_UNKNOWN:S = 0x0s

.field public static final SVG_TURBULENCE_TYPE_FRACTALNOISE:S = 0x1s

.field public static final SVG_TURBULENCE_TYPE_TURBULENCE:S = 0x2s

.field public static final SVG_TURBULENCE_TYPE_UNKNOWN:S


# virtual methods
.method public abstract getBaseFrequencyX()Lmf/org/w3c/dom/svg/SVGAnimatedNumber;
.end method

.method public abstract getBaseFrequencyY()Lmf/org/w3c/dom/svg/SVGAnimatedNumber;
.end method

.method public abstract getNumOctaves()Lmf/org/w3c/dom/svg/SVGAnimatedInteger;
.end method

.method public abstract getSeed()Lmf/org/w3c/dom/svg/SVGAnimatedNumber;
.end method

.method public abstract getStitchTiles()Lmf/org/w3c/dom/svg/SVGAnimatedEnumeration;
.end method

.method public abstract getType()Lmf/org/w3c/dom/svg/SVGAnimatedEnumeration;
.end method
