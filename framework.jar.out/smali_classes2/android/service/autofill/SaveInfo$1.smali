.class final Landroid/service/autofill/SaveInfo$1;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
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
        "Landroid/service/autofill/SaveInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/service/autofill/SaveInfo$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v4, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Landroid/view/autofill/AutofillId;

    invoke-direct {v0, v3, v2}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I[Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    invoke-virtual {v0, v3, v2}, Landroid/service/autofill/SaveInfo$Builder;->setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;

    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v4, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/service/autofill/SaveInfo$Builder;->setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/service/autofill/SaveInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/service/autofill/SaveInfo$Builder;->setFlags(I)Landroid/service/autofill/SaveInfo$Builder;

    invoke-virtual {v0}, Landroid/service/autofill/SaveInfo$Builder;->build()Landroid/service/autofill/SaveInfo;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/SaveInfo;
    .locals 1

    new-array v0, p1, [Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->newArray(I)[Landroid/service/autofill/SaveInfo;

    move-result-object v0

    return-object v0
.end method
