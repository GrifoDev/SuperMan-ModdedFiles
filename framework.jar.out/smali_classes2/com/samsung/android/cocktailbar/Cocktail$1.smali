.class final Lcom/samsung/android/cocktailbar/Cocktail$1;
.super Ljava/lang/Object;
.source "Cocktail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/Cocktail;
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
        "Lcom/samsung/android/cocktailbar/Cocktail;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 1

    new-instance v0, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/Cocktail;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/Cocktail$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/cocktailbar/Cocktail;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/Cocktail$1;->newArray(I)[Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    return-object v0
.end method
