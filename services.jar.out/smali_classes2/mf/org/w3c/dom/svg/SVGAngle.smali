.class public interface abstract Lmf/org/w3c/dom/svg/SVGAngle;
.super Ljava/lang/Object;
.source "SVGAngle.java"


# static fields
.field public static final SVG_ANGLETYPE_DEG:S = 0x2s

.field public static final SVG_ANGLETYPE_GRAD:S = 0x4s

.field public static final SVG_ANGLETYPE_RAD:S = 0x3s

.field public static final SVG_ANGLETYPE_UNKNOWN:S = 0x0s

.field public static final SVG_ANGLETYPE_UNSPECIFIED:S = 0x1s


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
