.class public Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;
.super Ljava/lang/Object;


# instance fields
.field protected DATE:Ljava/lang/String;

.field protected LABEL:Ljava/lang/String;

.field protected TYPE:Ljava/lang/String;

.field protected d14:Ljava/lang/String;

.field protected d15:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->TYPE:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->DATE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getD14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->d14:Ljava/lang/String;

    return-object v0
.end method

.method public getD15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->d15:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->DATE:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->LABEL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public setD14(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->d14:Ljava/lang/String;

    return-void
.end method

.method public setD15(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->d15:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->LABEL:Ljava/lang/String;

    return-void
.end method
