.class final Lcom/android/internal/statusbar/StatusBarIcon$1;
.super Ljava/lang/Object;
.source "StatusBarIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/StatusBarIcon;
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
        "Lcom/android/internal/statusbar/StatusBarIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 115
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {v0, p1}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIcon$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 120
    new-array v0, p1, [Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIcon$1;->newArray(I)[Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    return-object v0
.end method
