.class final Landroid/app/AppOpsManager$PackageOps$1;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager$PackageOps;
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
        "Landroid/app/AppOpsManager$PackageOps;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/AppOpsManager$PackageOps;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1177
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    invoke-direct {v0, p1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$PackageOps$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/AppOpsManager$PackageOps;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1181
    new-array v0, p1, [Landroid/app/AppOpsManager$PackageOps;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$PackageOps$1;->newArray(I)[Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    return-object v0
.end method
