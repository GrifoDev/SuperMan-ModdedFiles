.class synthetic Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$sdk$enhancedfeatures$shop$internal$utils$AsyncWorker$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->values()[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$3;->$SwitchMap$com$samsung$android$sdk$enhancedfeatures$shop$internal$utils$AsyncWorker$Status:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$3;->$SwitchMap$com$samsung$android$sdk$enhancedfeatures$shop$internal$utils$AsyncWorker$Status:[I

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->RUNNING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$3;->$SwitchMap$com$samsung$android$sdk$enhancedfeatures$shop$internal$utils$AsyncWorker$Status:[I

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->FINISHED:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
