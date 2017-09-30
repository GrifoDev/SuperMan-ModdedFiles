.class public Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberInfo"
.end annotation


# instance fields
.field private ccc:Ljava/lang/String;

.field private msisdn:Ljava/lang/String;

.field private phonenumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;->phonenumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;->ccc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;->ccc:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonenumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;->phonenumber:Ljava/lang/String;

    return-object v0
.end method
