.class public Landroid/telephony/VisualVoicemailSms$Builder;
.super Ljava/lang/Object;
.source "VisualVoicemailSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFields:Landroid/os/Bundle;

.field private mMessageBody:Ljava/lang/String;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPrefix:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mFields:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/VisualVoicemailSms;
    .locals 1

    new-instance v0, Landroid/telephony/VisualVoicemailSms;

    invoke-direct {v0, p0}, Landroid/telephony/VisualVoicemailSms;-><init>(Landroid/telephony/VisualVoicemailSms$Builder;)V

    return-object v0
.end method

.method public setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mFields:Landroid/os/Bundle;

    return-object p0
.end method

.method public setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mMessageBody:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPrefix:Ljava/lang/String;

    return-object p0
.end method
