.class Lcom/absolute/android/persistence/MethodReturnValue$1;
.super Ljava/lang/Object;
.source "MethodReturnValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/MethodReturnValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/absolute/android/persistence/MethodReturnValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/absolute/android/persistence/MethodReturnValue;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/absolute/android/persistence/MethodReturnValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/MethodReturnValue$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistence/MethodReturnValue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/absolute/android/persistence/MethodReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/absolute/android/persistence/MethodReturnValue;
    .locals 1

    .prologue
    .line 87
    new-array v0, p1, [Lcom/absolute/android/persistence/MethodReturnValue;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistence/MethodReturnValue$1;->newArray(I)[Lcom/absolute/android/persistence/MethodReturnValue;

    move-result-object v0

    return-object v0
.end method
