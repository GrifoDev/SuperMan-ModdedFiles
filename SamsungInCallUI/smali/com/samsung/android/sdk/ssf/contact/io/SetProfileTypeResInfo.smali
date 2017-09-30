.class public Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeResInfo;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeResInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeResInfo;->url:Ljava/lang/String;

    return-void
.end method
