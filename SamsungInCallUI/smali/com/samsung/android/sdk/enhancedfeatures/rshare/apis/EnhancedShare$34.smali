.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getSharedContentsInfo(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$infoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

.field final synthetic val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$34;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$34;->val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$34;->val$infoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, -0xd

    const-string v1, "user not authenticated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$34;->val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getContentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setContentToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$34;->val$infoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
