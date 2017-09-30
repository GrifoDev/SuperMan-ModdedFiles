.class public Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;
.super Ljava/lang/Object;


# instance fields
.field private fileContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private shopContentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->type:I

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->fileContents:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->shopContentIds:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->url:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->latitude:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->longitude:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->fileContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getShopContentIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->shopContentIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MediaMessage;->url:Ljava/lang/String;

    return-object v0
.end method
