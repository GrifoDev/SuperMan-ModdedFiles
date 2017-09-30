.class public abstract Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setContentType(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setFileSize(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    long-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mFileSize:I

    return-object p0
.end method

.method public setState(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->COMPLETED:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->ON_PROGRESS:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;->NOT_START:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    goto :goto_0
.end method

.method public setState(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;",
            ")TV;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
