.class public Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileContent"
.end annotation


# instance fields
.field protected name:Ljava/lang/String;

.field protected size:J

.field protected type:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->size:J

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$FileContent;->url:Ljava/lang/String;

    return-object v0
.end method
