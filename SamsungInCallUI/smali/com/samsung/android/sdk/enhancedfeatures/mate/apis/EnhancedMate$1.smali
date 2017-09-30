.class Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate$1;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;-><init>()V

    const v1, 0x13881

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setResultCode(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate$1;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;)V

    return-void
.end method
