.class public Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextCurrentStatusForPositioning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT_STATUS_MOVE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CURRENT_STATUS_NOMOVE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CURRENT_STATUS_UNKNOWN:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 131
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Status"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method
