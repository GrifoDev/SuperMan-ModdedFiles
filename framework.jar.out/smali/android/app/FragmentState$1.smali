.class final Landroid/app/FragmentState$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentState;
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
        "Landroid/app/FragmentState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/FragmentState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    new-instance v0, Landroid/app/FragmentState;

    invoke-direct {v0, p1}, Landroid/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/app/FragmentState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/FragmentState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/FragmentState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 159
    new-array v0, p1, [Landroid/app/FragmentState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/app/FragmentState$1;->newArray(I)[Landroid/app/FragmentState;

    move-result-object v0

    return-object v0
.end method
