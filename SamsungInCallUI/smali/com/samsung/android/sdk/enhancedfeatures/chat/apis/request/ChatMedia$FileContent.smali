.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileContent"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private size:J

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->size:J

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;->url:Ljava/lang/String;

    return-object v0
.end method
