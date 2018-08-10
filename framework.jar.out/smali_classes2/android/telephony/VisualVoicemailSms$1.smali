.class final Landroid/telephony/VisualVoicemailSms$1;
.super Ljava/lang/Object;
.source "VisualVoicemailSms.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSms;
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
        "Landroid/telephony/VisualVoicemailSms;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VisualVoicemailSms;
    .locals 2

    new-instance v1, Landroid/telephony/VisualVoicemailSms$Builder;

    invoke-direct {v1}, Landroid/telephony/VisualVoicemailSms$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v0}, Landroid/telephony/VisualVoicemailSms$Builder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSms$Builder;->setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSms$Builder;->setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSms$Builder;->setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/VisualVoicemailSms$Builder;->build()Landroid/telephony/VisualVoicemailSms;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/VisualVoicemailSms$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VisualVoicemailSms;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/VisualVoicemailSms;
    .locals 1

    new-array v0, p1, [Landroid/telephony/VisualVoicemailSms;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/VisualVoicemailSms$1;->newArray(I)[Landroid/telephony/VisualVoicemailSms;

    move-result-object v0

    return-object v0
.end method
