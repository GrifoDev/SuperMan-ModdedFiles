.class final Landroid/telecom/Voicemail$1;
.super Ljava/lang/Object;
.source "Voicemail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Voicemail;
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
        "Landroid/telecom/Voicemail;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Voicemail;
    .locals 2

    new-instance v0, Landroid/telecom/Voicemail;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telecom/Voicemail;-><init>(Landroid/os/Parcel;Landroid/telecom/Voicemail;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telecom/Voicemail$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Voicemail;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/Voicemail;
    .locals 1

    new-array v0, p1, [Landroid/telecom/Voicemail;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telecom/Voicemail$1;->newArray(I)[Landroid/telecom/Voicemail;

    move-result-object v0

    return-object v0
.end method
