.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateList"
.end annotation


# instance fields
.field private msisdn:Ljava/lang/String;

.field private update_type:Ljava/lang/Long;

.field private updateer_msisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;->msisdn:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;->update_type:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;->updateer_msisdn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;->update_type:Ljava/lang/Long;

    return-object v0
.end method

.method public getUpdateerMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;->updateer_msisdn:Ljava/lang/String;

    return-object v0
.end method
