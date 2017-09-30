.class public Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushMessage"
.end annotation


# instance fields
.field private desc:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private ope:I

.field private pkg:Ljava/lang/String;

.field private push_type:Ljava/lang/String;

.field private ti:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->push_type:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ti:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->desc:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->url:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ope:I

    iput-object p7, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->img:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalFields()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ope:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ti:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->desc:Ljava/lang/String;

    return-void
.end method

.method public setExternalFields(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ext:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->img:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->img:Ljava/lang/String;

    return-void
.end method

.method public setOpenType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ope:I

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->ti:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;->url:Ljava/lang/String;

    return-void
.end method
