.class Lcom/samsung/android/support/reminder/RemindContents$1;
.super Ljava/lang/Object;
.source "RemindContents.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/reminder/RemindContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/support/reminder/RemindContents;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/reminder/RemindContents;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 151
    new-instance v0, Lcom/samsung/android/support/reminder/RemindContents;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/reminder/RemindContents;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/reminder/RemindContents$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/support/reminder/RemindContents;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/support/reminder/RemindContents;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 156
    new-array v0, p1, [Lcom/samsung/android/support/reminder/RemindContents;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/reminder/RemindContents$1;->newArray(I)[Lcom/samsung/android/support/reminder/RemindContents;

    move-result-object v0

    return-object v0
.end method
