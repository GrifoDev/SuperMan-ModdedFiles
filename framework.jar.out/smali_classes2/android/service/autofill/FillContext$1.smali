.class final Landroid/service/autofill/FillContext$1;
.super Ljava/lang/Object;
.source "FillContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillContext;
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
        "Landroid/service/autofill/FillContext;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillContext;
    .locals 2

    new-instance v0, Landroid/service/autofill/FillContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/autofill/FillContext;-><init>(Landroid/os/Parcel;Landroid/service/autofill/FillContext;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/FillContext;
    .locals 1

    new-array v0, p1, [Landroid/service/autofill/FillContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillContext$1;->newArray(I)[Landroid/service/autofill/FillContext;

    move-result-object v0

    return-object v0
.end method
