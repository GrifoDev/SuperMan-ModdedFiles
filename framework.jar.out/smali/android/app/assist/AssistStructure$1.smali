.class final Landroid/app/assist/AssistStructure$1;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
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
        "Landroid/app/assist/AssistStructure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1513
    new-instance v0, Landroid/app/assist/AssistStructure;

    invoke-direct {v0, p1}, Landroid/app/assist/AssistStructure;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1512
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/assist/AssistStructure;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1517
    new-array v0, p1, [Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1516
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$1;->newArray(I)[Landroid/app/assist/AssistStructure;

    move-result-object v0

    return-object v0
.end method
