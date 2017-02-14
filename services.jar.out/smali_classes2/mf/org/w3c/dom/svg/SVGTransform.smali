.class public interface abstract Lmf/org/w3c/dom/svg/SVGTransform;
.super Ljava/lang/Object;
.source "SVGTransform.java"


# static fields
.field public static final SVG_TRANSFORM_MATRIX:S = 0x1s

.field public static final SVG_TRANSFORM_ROTATE:S = 0x4s

.field public static final SVG_TRANSFORM_SCALE:S = 0x3s

.field public static final SVG_TRANSFORM_SKEWX:S = 0x5s

.field public static final SVG_TRANSFORM_SKEWY:S = 0x6s

.field public static final SVG_TRANSFORM_TRANSLATE:S = 0x2s

.field public static final SVG_TRANSFORM_UNKNOWN:S


# virtual methods
.method public abstract getAngle()F
.end method

.method public abstract getMatrix()Lmf/org/w3c/dom/svg/SVGMatrix;
.end method

.method public abstract getType()S
.end method

.method public abstract setMatrix(Lmf/org/w3c/dom/svg/SVGMatrix;)V
.end method

.method public abstract setRotate(FFF)V
.end method

.method public abstract setScale(FF)V
.end method

.method public abstract setSkewX(F)V
.end method

.method public abstract setSkewY(F)V
.end method

.method public abstract setTranslate(FF)V
.end method
