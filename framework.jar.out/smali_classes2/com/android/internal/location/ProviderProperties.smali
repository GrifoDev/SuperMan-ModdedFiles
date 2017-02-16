.class public final Lcom/android/internal/location/ProviderProperties;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ProviderProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/location/ProviderProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAccuracy:I

.field public final mHasMonetaryCost:Z

.field public final mPowerRequirement:I

.field public final mRequiresCell:Z

.field public final mRequiresNetwork:Z

.field public final mRequiresSatellite:Z

.field public final mSupportsAltitude:Z

.field public final mSupportsBearing:Z

.field public final mSupportsSpeed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/android/internal/location/ProviderProperties$1;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderProperties$1;-><init>()V

    .line 112
    sput-object v0, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>(ZZZZZZZII)V
    .locals 0
    .param p1, "mRequiresNetwork"    # Z
    .param p2, "mRequiresSatellite"    # Z
    .param p3, "mRequiresCell"    # Z
    .param p4, "mHasMonetaryCost"    # Z
    .param p5, "mSupportsAltitude"    # Z
    .param p6, "mSupportsSpeed"    # Z
    .param p7, "mSupportsBearing"    # Z
    .param p8, "mPowerRequirement"    # I
    .param p9, "mAccuracy"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean p1, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    .line 102
    iput-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    .line 103
    iput-boolean p3, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    .line 104
    iput-boolean p4, p0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    .line 105
    iput-boolean p5, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    .line 106
    iput-boolean p6, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    .line 107
    iput-boolean p7, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    .line 108
    iput p8, p0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    .line 109
    iput p9, p0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    :cond_1
    move v0, v2

    .line 143
    goto :goto_1

    :cond_2
    move v0, v2

    .line 144
    goto :goto_2

    :cond_3
    move v0, v2

    .line 145
    goto :goto_3

    :cond_4
    move v0, v2

    .line 146
    goto :goto_4

    :cond_5
    move v0, v2

    .line 147
    goto :goto_5

    :cond_6
    move v1, v2

    .line 148
    goto :goto_6
.end method
