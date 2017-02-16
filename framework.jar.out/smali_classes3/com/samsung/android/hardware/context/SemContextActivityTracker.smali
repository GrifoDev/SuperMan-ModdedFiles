.class public Lcom/samsung/android/hardware/context/SemContextActivityTracker;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextActivityTracker$1;
    }
.end annotation


# static fields
.field public static final ACCURACY_HIGH:I = 0x2

.field public static final ACCURACY_LOW:I = 0x0

.field public static final ACCURACY_MID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextActivityTracker;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BIKE:I = 0x5

.field public static final STATUS_RUN:I = 0x3

.field public static final STATUS_STATIONARY:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final STATUS_VEHICLE:I = 0x4

.field public static final STATUS_WALK:I = 0x2


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityTracker$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
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

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->mContext:Landroid/os/Bundle;

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
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 193
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->mContext:Landroid/os/Bundle;

    .line 261
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TimeStamp"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->mContext:Landroid/os/Bundle;

    .line 237
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 251
    return-void
.end method
