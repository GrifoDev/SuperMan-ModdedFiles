.class Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

.field final synthetic val$socialListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$2;->val$socialListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;-><init>()V

    const/16 v1, -0x75

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$2;->val$socialListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    return-void
.end method
