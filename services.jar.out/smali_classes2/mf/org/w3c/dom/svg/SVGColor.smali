.class public interface abstract Lmf/org/w3c/dom/svg/SVGColor;
.super Ljava/lang/Object;
.source "SVGColor.java"

# interfaces
.implements Lmf/org/w3c/dom/css/CSSValue;


# static fields
.field public static final SVG_COLORTYPE_CURRENTCOLOR:S = 0x3s

.field public static final SVG_COLORTYPE_RGBCOLOR:S = 0x1s

.field public static final SVG_COLORTYPE_RGBCOLOR_ICCCOLOR:S = 0x2s

.field public static final SVG_COLORTYPE_UNKNOWN:S


# virtual methods
.method public abstract getColorType()S
.end method

.method public abstract getICCColor()Lmf/org/w3c/dom/svg/SVGICCColor;
.end method

.method public abstract getRGBColor()Lmf/org/w3c/dom/css/RGBColor;
.end method

.method public abstract setColor(SLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract setRGBColor(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method

.method public abstract setRGBColorICCColor(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/svg/SVGException;
        }
    .end annotation
.end method
