.class public final Landroid/telephony/VisualVoicemailSms;
.super Ljava/lang/Object;
.source "VisualVoicemailSms.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VisualVoicemailSms$1;,
        Landroid/telephony/VisualVoicemailSms$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/VisualVoicemailSms;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFields:Landroid/os/Bundle;

.field private final mMessageBody:Ljava/lang/String;

.field private final mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/VisualVoicemailSms$1;

    invoke-direct {v0}, Landroid/telephony/VisualVoicemailSms$1;-><init>()V

    sput-object v0, Landroid/telephony/VisualVoicemailSms;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/telephony/VisualVoicemailSms$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->-get2(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->-get3(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPrefix:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->-get0(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mFields:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->-get1(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mMessageBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFields()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mFields:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getFields()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
