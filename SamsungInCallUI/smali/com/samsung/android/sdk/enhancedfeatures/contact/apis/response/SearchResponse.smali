.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;
.super Ljava/lang/Object;


# instance fields
.field protected result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected result_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult_count()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->result_count:I

    return v0
.end method

.method public setResult(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->result:Ljava/util/ArrayList;

    return-void
.end method

.method public setResult_count(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->result_count:I

    return-void
.end method
