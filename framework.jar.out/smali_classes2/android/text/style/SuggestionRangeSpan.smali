.class public Landroid/text/style/SuggestionRangeSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionRangeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mBackgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/SuggestionRangeSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionRangeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
