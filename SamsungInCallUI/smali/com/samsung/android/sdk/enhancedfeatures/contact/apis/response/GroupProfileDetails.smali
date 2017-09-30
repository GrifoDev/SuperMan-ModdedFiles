.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;
.super Ljava/lang/Object;


# instance fields
.field protected cts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected tt:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;->cts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;->cts:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;->tt:Ljava/lang/Long;

    return-object v0
.end method

.method public setCts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;->cts:Ljava/util/List;

    return-void
.end method

.method public setTt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;->tt:Ljava/lang/Long;

    return-void
.end method
