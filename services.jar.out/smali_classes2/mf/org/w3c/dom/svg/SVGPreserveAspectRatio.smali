.class public interface abstract Lmf/org/w3c/dom/svg/SVGPreserveAspectRatio;
.super Ljava/lang/Object;
.source "SVGPreserveAspectRatio.java"


# static fields
.field public static final SVG_MEETORSLICE_MEET:S = 0x1s

.field public static final SVG_MEETORSLICE_SLICE:S = 0x2s

.field public static final SVG_MEETORSLICE_UNKNOWN:S = 0x0s

.field public static final SVG_PRESERVEASPECTRATIO_NONE:S = 0x1s

.field public static final SVG_PRESERVEASPECTRATIO_UNKNOWN:S = 0x0s

.field public static final SVG_PRESERVEASPECTRATIO_XMAXYMAX:S = 0xas

.field public static final SVG_PRESERVEASPECTRATIO_XMAXYMID:S = 0x7s

.field public static final SVG_PRESERVEASPECTRATIO_XMAXYMIN:S = 0x4s

.field public static final SVG_PRESERVEASPECTRATIO_XMIDYMAX:S = 0x9s

.field public static final SVG_PRESERVEASPECTRATIO_XMIDYMID:S = 0x6s

.field public static final SVG_PRESERVEASPECTRATIO_XMIDYMIN:S = 0x3s

.field public static final SVG_PRESERVEASPECTRATIO_XMINYMAX:S = 0x8s

.field public static final SVG_PRESERVEASPECTRATIO_XMINYMID:S = 0x5s

.field public static final SVG_PRESERVEASPECTRATIO_XMINYMIN:S = 0x2s


# virtual methods
.method public abstract getAlign()S
.end method

.method public abstract getMeetOrSlice()S
.end method

.method public abstract setAlign(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setMeetOrSlice(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method
