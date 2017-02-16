.class public Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextPhoneStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXIMITY_CLOSE:I = 0x2

.field public static final PROXIMITY_NONE:I = 0x0

.field public static final PROXIMITY_OPEN:I = 0x1

.field public static final SCREEN_DOWN:I = 0x4

.field public static final SCREEN_NONE:I = 0x0

.field public static final SCREEN_PERFECT_DOWN:I = 0x5

.field public static final SCREEN_PERFECT_UP:I = 0x1

.field public static final SCREEN_TILT:I = 0x3

.field public static final SCREEN_UP:I = 0x2


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 193
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 274
    return-void
.end method


# virtual methods
.method public getProximity()I
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "embower"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getScreenDirection()I
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "lcddirect"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isInClosedSpace()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "lcdOffRecommend"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 250
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 264
    return-void
.end method
