.class public Lcom/samsung/android/hardware/context/SemContextAirMotion;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextAirMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAirMotion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAirMotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWN:I = 0x3

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final UP:I = 0x4


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAirMotion$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAirMotion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAirMotion;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextAirMotion;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSpeed()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAirMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
