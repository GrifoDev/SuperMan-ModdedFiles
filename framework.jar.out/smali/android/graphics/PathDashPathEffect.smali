.class public Landroid/graphics/PathDashPathEffect;
.super Landroid/graphics/PathEffect;
.source "PathDashPathEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathDashPathEffect$Style;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V
    .locals 3
    .param p1, "shape"    # Landroid/graphics/Path;
    .param p2, "advance"    # F
    .param p3, "phase"    # F
    .param p4, "style"    # Landroid/graphics/PathDashPathEffect$Style;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    move-result-wide v0

    .line 45
    iget v2, p4, Landroid/graphics/PathDashPathEffect$Style;->native_style:I

    .line 44
    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/PathDashPathEffect;->nativeCreate(JFFI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathDashPathEffect;->native_instance:J

    .line 43
    return-void
.end method

.method private static native nativeCreate(JFFI)J
.end method
