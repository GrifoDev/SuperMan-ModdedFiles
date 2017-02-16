.class public Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextEnvironmentAdaptiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->readFromParcel(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    .line 203
    return-void
.end method


# virtual methods
.method public getBlue()F
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getCCT()I
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CCT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGreen()F
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "G"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getLux()J
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Lux"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRed()F
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "R"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    .line 179
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method
