.class public abstract Landroid/view/animation/BaseInterpolator;
.super Ljava/lang/Object;
.source "BaseInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mChangingConfiguration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfiguration()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Landroid/view/animation/BaseInterpolator;->mChangingConfiguration:I

    return v0
.end method

.method setChangingConfiguration(I)V
    .locals 0
    .param p1, "changingConfiguration"    # I

    .prologue
    .line 37
    iput p1, p0, Landroid/view/animation/BaseInterpolator;->mChangingConfiguration:I

    .line 36
    return-void
.end method
