.class public Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;
.super Ljava/lang/Object;


# instance fields
.field private updated_public_token_list:[Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdated_public_token_list()[Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;->updated_public_token_list:[Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;

    return-object v0
.end method

.method public setUpdated_public_token_list([Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;->updated_public_token_list:[Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;

    return-void
.end method
