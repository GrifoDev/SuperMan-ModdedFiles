.class public interface abstract Lmf/org/w3c/dom/svg/SVGPaint;
.super Ljava/lang/Object;
.source "SVGPaint.java"

# interfaces
.implements Lmf/org/w3c/dom/svg/SVGColor;


# static fields
.field public static final SVG_PAINTTYPE_CURRENTCOLOR:S = 0x66s

.field public static final SVG_PAINTTYPE_NONE:S = 0x65s

.field public static final SVG_PAINTTYPE_RGBCOLOR:S = 0x1s

.field public static final SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR:S = 0x2s

.field public static final SVG_PAINTTYPE_UNKNOWN:S = 0x0s

.field public static final SVG_PAINTTYPE_URI:S = 0x6bs

.field public static final SVG_PAINTTYPE_URI_CURRENTCOLOR:S = 0x68s

.field public static final SVG_PAINTTYPE_URI_NONE:S = 0x67s

.field public static final SVG_PAINTTYPE_URI_RGBCOLOR:S = 0x69s

.field public static final SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR:S = 0x6as


# virtual methods
.method public abstract getPaintType()S
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract setPaint(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method
