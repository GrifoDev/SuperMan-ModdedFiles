.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

.field public static final enum FINISHED:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

.field public static final enum PENDING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

.field public static final enum RUNNING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->PENDING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->RUNNING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->FINISHED:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->PENDING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->RUNNING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->FINISHED:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    return-object v0
.end method
