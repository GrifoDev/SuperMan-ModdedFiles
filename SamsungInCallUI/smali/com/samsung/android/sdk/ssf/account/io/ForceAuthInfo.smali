.class public Lcom/samsung/android/sdk/ssf/account/io/ForceAuthInfo;
.super Lcom/samsung/android/sdk/ssf/common/CommonInfo;


# instance fields
.field protected ccc:Ljava/lang/String;

.field protected device_id:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field protected phone_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/ForceAuthInfo;->device_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/io/ForceAuthInfo;->imsi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/account/io/ForceAuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/ForceAuthInfo;->ccc:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/account/io/ForceAuthInfo;->phone_number:Ljava/lang/String;

    return-void
.end method
