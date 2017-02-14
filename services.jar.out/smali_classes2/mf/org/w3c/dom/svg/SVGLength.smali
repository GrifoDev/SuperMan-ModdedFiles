.class public interface abstract Lmf/org/w3c/dom/svg/SVGLength;
.super Ljava/lang/Object;
.source "SVGLength.java"


# static fields
.field public static final SVG_LENGTHTYPE_CM:S = 0x6s

.field public static final SVG_LENGTHTYPE_EMS:S = 0x3s

.field public static final SVG_LENGTHTYPE_EXS:S = 0x4s

.field public static final SVG_LENGTHTYPE_IN:S = 0x8s

.field public static final SVG_LENGTHTYPE_MM:S = 0x7s

.field public static final SVG_LENGTHTYPE_NUMBER:S = 0x1s

.field public static final SVG_LENGTHTYPE_PC:S = 0xas

.field public static final SVG_LENGTHTYPE_PERCENTAGE:S = 0x2s

.field public static final SVG_LENGTHTYPE_PT:S = 0x9s

.field public static final SVG_LENGTHTYPE_PX:S = 0x5s

.field public static final SVG_LENGTHTYPE_UNKNOWN:S


# virtual methods
.method public abstract convertToSpecifiedUnits(S)V
.end method

.method public abstract getUnitType()S
.end method

.method public abstract getValue()F
.end method

.method public abstract getValueAsString()Ljava/lang/String;
.end method

.method public abstract getValueInSpecifiedUnits()F
.end method

.method public abstract newValueSpecifiedUnits(SF)V
.end method

.method public abstract setValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setValueAsString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setValueInSpecifiedUnits(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
