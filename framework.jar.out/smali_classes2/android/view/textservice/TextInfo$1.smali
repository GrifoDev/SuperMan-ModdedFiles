.class final Landroid/view/textservice/TextInfo$1;
.super Ljava/lang/Object;
.source "TextInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/TextInfo;
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
        "Landroid/view/textservice/TextInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/TextInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 145
    new-instance v0, Landroid/view/textservice/TextInfo;

    invoke-direct {v0, p1}, Landroid/view/textservice/TextInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/view/textservice/TextInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/TextInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/textservice/TextInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Landroid/view/textservice/TextInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Landroid/view/textservice/TextInfo$1;->newArray(I)[Landroid/view/textservice/TextInfo;

    move-result-object v0

    return-object v0
.end method
