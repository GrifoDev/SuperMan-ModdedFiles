.class public Lcom/samsung/android/hardware/context/SemContextAutoBrightness;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextAutoBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAutoBrightness$1;
    }
.end annotation


# static fields
.field public static final CONFIG_DATA_DOWNLOADED:I = 0x3e8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAutoBrightness;",
            ">;"
        }
    .end annotation
.end field

.field public static final EBOOK_MODE:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field public static final UPDATE_MODE:I = 0x2


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAmbientLux()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AmbientLux"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCandela()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Candela"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
