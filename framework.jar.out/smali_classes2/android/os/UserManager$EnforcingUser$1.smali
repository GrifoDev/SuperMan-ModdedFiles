.class final Landroid/os/UserManager$EnforcingUser$1;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager$EnforcingUser;
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
        "Landroid/os/UserManager$EnforcingUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/UserManager$EnforcingUser;
    .locals 2

    new-instance v0, Landroid/os/UserManager$EnforcingUser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/UserManager$EnforcingUser;-><init>(Landroid/os/Parcel;Landroid/os/UserManager$EnforcingUser;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/UserManager$EnforcingUser$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/UserManager$EnforcingUser;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/UserManager$EnforcingUser;
    .locals 1

    new-array v0, p1, [Landroid/os/UserManager$EnforcingUser;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/UserManager$EnforcingUser$1;->newArray(I)[Landroid/os/UserManager$EnforcingUser;

    move-result-object v0

    return-object v0
.end method
