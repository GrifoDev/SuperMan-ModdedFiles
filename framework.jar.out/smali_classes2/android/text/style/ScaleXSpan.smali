.class public Landroid/text/style/ScaleXSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "ScaleXSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mProportion:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "proportion"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 29
    iput p1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/text/style/ScaleXSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x4

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 63
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ScaleXSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    return-void
.end method
