.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;,
        Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;
    }
.end annotation


# instance fields
.field private fileContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

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

.field private type:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;",
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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->type:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->fileContents:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->shopContentIds:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->latitude:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->longitude:Ljava/lang/String;

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
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$FileContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->fileContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->longitude:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->shopContentIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->type:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/request/ChatMedia;->url:Ljava/lang/String;

    return-object v0
.end method
