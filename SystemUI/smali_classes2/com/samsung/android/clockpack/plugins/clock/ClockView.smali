.class public abstract Lcom/samsung/android/clockpack/plugins/clock/ClockView;
.super Landroid/widget/FrameLayout;
.source "ClockView.java"


# static fields
.field public static final SCALE_MODE_EXTRA_SMALL:I = 0x4

.field public static final SCALE_MODE_MEDIUM:I = 0x1

.field public static final SCALE_MODE_MEDIUM_SMALL:I = 0x2

.field public static final SCALE_MODE_NONE:I = 0x0

.field public static final SCALE_MODE_SMALL:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public abstract getClockType()I
.end method

.method public abstract getExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract isScalable()Z
.end method

.method public abstract refresh()V
.end method

.method public abstract setAdaptiveColors(IIII)V
.end method

.method public abstract setCustomColor(I)V
.end method

.method public abstract setDateVisibility(I)V
.end method

.method public abstract setExtraData(Landroid/os/Bundle;)V
.end method

.method public abstract setPaletteIndex(I)V
.end method

.method public abstract setScaleClock(FI)V
.end method

.method public abstract setScaleMode(I)V
.end method

.method public abstract setTimeVisibility(I)V
.end method

.method public abstract suspend(Z)V
.end method
