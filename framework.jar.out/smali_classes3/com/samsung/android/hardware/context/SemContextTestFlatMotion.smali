.class public Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextTestFlatMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextTestFlatMotion$1;
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
            "Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEST_FLAT_MOTION_DOWN:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEST_FLAT_MOTION_FALSE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEST_FLAT_MOTION_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEST_FLAT_MOTION_UP:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEST_FLAT_MOTION_VERTICALITY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 98
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;->mContext:Landroid/os/Bundle;

    .line 169
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 177
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 176
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;->mContext:Landroid/os/Bundle;

    .line 224
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;->mContext:Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextTestFlatMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method
