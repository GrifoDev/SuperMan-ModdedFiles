.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;
    }
.end annotation


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mFileName:Ljava/lang/String;

.field protected mFileSize:I

.field protected mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;->mFileSize:I

    return v0
.end method

.method public getState()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;->mTag:Ljava/lang/String;

    return-object v0
.end method
