.class public Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;
.super Ljava/lang/Object;


# instance fields
.field protected cc:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected nm:Ljava/lang/String;

.field protected pn:Ljava/lang/String;

.field protected tp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->pn:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->nm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->pn:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->nm:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->cc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->tp:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->pn:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->nm:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->cc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryCallingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->nm:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->pn:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryCallingCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->cc:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->nm:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->pn:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->tp:Ljava/lang/String;

    return-void
.end method
