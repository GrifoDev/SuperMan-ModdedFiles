.class final Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 757
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->-wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 756
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 761
    new-array v0, p1, [Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;->newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    return-object v0
.end method
