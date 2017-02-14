.class public interface abstract Lmf/org/w3c/dom/css/CSSPrimitiveValue;
.super Ljava/lang/Object;
.source "CSSPrimitiveValue.java"

# interfaces
.implements Lmf/org/w3c/dom/css/CSSValue;


# static fields
.field public static final CSS_ATTR:S = 0x16s

.field public static final CSS_CM:S = 0x6s

.field public static final CSS_COUNTER:S = 0x17s

.field public static final CSS_DEG:S = 0xbs

.field public static final CSS_DIMENSION:S = 0x12s

.field public static final CSS_EMS:S = 0x3s

.field public static final CSS_EXS:S = 0x4s

.field public static final CSS_GRAD:S = 0xds

.field public static final CSS_HZ:S = 0x10s

.field public static final CSS_IDENT:S = 0x15s

.field public static final CSS_IN:S = 0x8s

.field public static final CSS_KHZ:S = 0x11s

.field public static final CSS_MM:S = 0x7s

.field public static final CSS_MS:S = 0xes

.field public static final CSS_NUMBER:S = 0x1s

.field public static final CSS_PC:S = 0xas

.field public static final CSS_PERCENTAGE:S = 0x2s

.field public static final CSS_PT:S = 0x9s

.field public static final CSS_PX:S = 0x5s

.field public static final CSS_RAD:S = 0xcs

.field public static final CSS_RECT:S = 0x18s

.field public static final CSS_RGBCOLOR:S = 0x19s

.field public static final CSS_S:S = 0xfs

.field public static final CSS_STRING:S = 0x13s

.field public static final CSS_UNKNOWN:S = 0x0s

.field public static final CSS_URI:S = 0x14s


# virtual methods
.method public abstract getCounterValue()Lmf/org/w3c/dom/css/Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getFloatValue(S)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getPrimitiveType()S
.end method

.method public abstract getRGBColorValue()Lmf/org/w3c/dom/css/RGBColor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getRectValue()Lmf/org/w3c/dom/css/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getStringValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setFloatValue(SF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setStringValue(SLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
