.class final Landroid/app/assist/AssistContent$1;
.super Ljava/lang/Object;
.source "AssistContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistContent;
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
        "Landroid/app/assist/AssistContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistContent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 212
    new-instance v0, Landroid/app/assist/AssistContent;

    invoke-direct {v0, p1}, Landroid/app/assist/AssistContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistContent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/assist/AssistContent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 216
    new-array v0, p1, [Landroid/app/assist/AssistContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistContent$1;->newArray(I)[Landroid/app/assist/AssistContent;

    move-result-object v0

    return-object v0
.end method
