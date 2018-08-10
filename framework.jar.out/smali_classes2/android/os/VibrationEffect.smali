.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$1;,
        Landroid/os/VibrationEffect$OneShot;,
        Landroid/os/VibrationEffect$Prebaked;,
        Landroid/os/VibrationEffect$Waveform;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AMPLITUDE:I = -0x1

.field public static final EFFECT_CLICK:I = 0x0

.field public static final EFFECT_DOUBLE_CLICK:I = 0x1

.field private static final PARCEL_TOKEN_EFFECT:I = 0x3

.field private static final PARCEL_TOKEN_ONE_SHOT:I = 0x1

.field private static final PARCEL_TOKEN_WAVEFORM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOneShot(JI)Landroid/os/VibrationEffect;
    .locals 2

    new-instance v0, Landroid/os/VibrationEffect$OneShot;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method

.method public static createWaveform([JI)Landroid/os/VibrationEffect;
    .locals 4

    array-length v2, p0

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v2

    return-object v2
.end method

.method public static createWaveform([J[II)Landroid/os/VibrationEffect;
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$Waveform;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method

.method public static get(I)Landroid/os/VibrationEffect;
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$Prebaked;

    invoke-direct {v0, p0}, Landroid/os/VibrationEffect$Prebaked;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract validate()V
.end method
