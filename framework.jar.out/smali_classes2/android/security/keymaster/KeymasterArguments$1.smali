.class final Landroid/security/keymaster/KeymasterArguments$1;
.super Ljava/lang/Object;
.source "KeymasterArguments.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeymasterArguments;
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
        "Landroid/security/keymaster/KeymasterArguments;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArguments;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;-><init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterArguments;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArguments$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArguments;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/security/keymaster/KeymasterArguments;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 52
    new-array v0, p1, [Landroid/security/keymaster/KeymasterArguments;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArguments$1;->newArray(I)[Landroid/security/keymaster/KeymasterArguments;

    move-result-object v0

    return-object v0
.end method
