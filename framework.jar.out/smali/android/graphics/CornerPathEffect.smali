.class public Landroid/graphics/CornerPathEffect;
.super Landroid/graphics/PathEffect;
.source "CornerPathEffect.java"


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/graphics/CornerPathEffect;->nativeCreate(F)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/CornerPathEffect;->native_instance:J

    .line 27
    return-void
.end method

.method private static native nativeCreate(F)J
.end method
