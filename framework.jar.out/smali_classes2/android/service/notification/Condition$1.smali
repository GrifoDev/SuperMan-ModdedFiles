.class final Landroid/service/notification/Condition$1;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/Condition;
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
        "Landroid/service/notification/Condition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/Condition;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 229
    new-instance v0, Landroid/service/notification/Condition;

    invoke-direct {v0, p1}, Landroid/service/notification/Condition;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/service/notification/Condition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/notification/Condition;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 234
    new-array v0, p1, [Landroid/service/notification/Condition;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Landroid/service/notification/Condition$1;->newArray(I)[Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method
