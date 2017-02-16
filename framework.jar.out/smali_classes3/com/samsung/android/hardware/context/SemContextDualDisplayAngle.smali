.class public Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextDualDisplayAngle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;",
            ">;"
        }
    .end annotation
.end field

.field public static final LCD_OFF:I = 0x1

.field public static final LCD_ON:I


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    .line 198
    return-void
.end method


# virtual methods
.method public getDualAngle()S
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getIntensity()S
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Intensity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getType()S
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    .line 173
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method
