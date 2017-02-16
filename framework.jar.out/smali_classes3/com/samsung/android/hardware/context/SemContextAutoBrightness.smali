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

    .prologue
    .line 112
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 86
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    .line 132
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->readFromParcel(Landroid/os/Parcel;)V

    .line 139
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    .line 192
    return-void
.end method


# virtual methods
.method public getAmbientLux()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AmbientLux"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCandela()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Candela"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    .line 168
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 182
    return-void
.end method
