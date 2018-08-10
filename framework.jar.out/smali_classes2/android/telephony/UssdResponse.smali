.class public final Landroid/telephony/UssdResponse;
.super Ljava/lang/Object;
.source "UssdResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UssdResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/UssdResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mReturnMessage:Ljava/lang/CharSequence;

.field private mUssdRequest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/UssdResponse$1;

    invoke-direct {v0}, Landroid/telephony/UssdResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/UssdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReturnMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUssdRequest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
