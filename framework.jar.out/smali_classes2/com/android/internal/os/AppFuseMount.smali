.class public Lcom/android/internal/os/AppFuseMount;
.super Ljava/lang/Object;
.source "AppFuseMount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/AppFuseMount$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/AppFuseMount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fd:Landroid/os/ParcelFileDescriptor;

.field public final mountPointId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/AppFuseMount$1;

    invoke-direct {v0}, Lcom/android/internal/os/AppFuseMount$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/AppFuseMount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    iput-object p2, p0, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
