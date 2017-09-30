.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;
    }
.end annotation


# instance fields
.field private count:I

.field private notices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;->count:I

    return v0
.end method

.method public getNotices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;->notices:Ljava/util/List;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;->count:I

    return-void
.end method

.method public setNotices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo$NoticeResponseInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNoticeInfo;->notices:Ljava/util/List;

    return-void
.end method
