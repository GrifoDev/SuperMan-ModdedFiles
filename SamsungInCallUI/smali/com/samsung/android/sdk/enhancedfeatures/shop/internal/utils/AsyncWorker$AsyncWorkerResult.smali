.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncWorkerResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;",
            "[TData;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;->mTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;->mData:[Ljava/lang/Object;

    return-void
.end method
