.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePolicyResponse;
.super Ljava/lang/Object;


# instance fields
.field private sharePolicyBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePolicyResponse;->sharePolicyBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getSharePolicyBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePolicyResponse;->sharePolicyBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setSharePolicyBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePolicyResponse;->sharePolicyBundle:Landroid/os/Bundle;

    return-void
.end method
