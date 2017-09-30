.class Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    const/16 v1, -0x75

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    return-void
.end method
