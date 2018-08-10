.class final Lcom/android/server/pm/FastBitmapDrawable$1;
.super Ljava/lang/Object;
.source "FastBitmapDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    div-float v0, p1, v1

    return v0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    return v2

    :cond_1
    sub-float v0, v2, p1

    const v1, 0x3f333333    # 0.7f

    div-float/2addr v0, v1

    return v0
.end method
