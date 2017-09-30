.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private req_id:I

.field private user_Data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;->req_id:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;->user_Data:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    return-object v0
.end method

.method public setReqId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;->req_id:I

    return-object p0
.end method

.method public setUserData(Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;->user_Data:Ljava/lang/Object;

    return-object p0
.end method
