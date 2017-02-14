.class Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;
.super Ljava/lang/Object;
.source "SmoothPagedView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SmoothPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkspaceOvershootInterpolator"
.end annotation


# static fields
.field private static final DEFAULT_TENSION:F = 1.3f


# instance fields
.field private mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    return-void
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    mul-float v0, p1, p1

    iget v1, p0, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public setDistance(I)V
    .locals 2

    const v0, 0x3fa66666    # 1.3f

    if-lez p1, :cond_0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->mTension:F

    return-void
.end method
