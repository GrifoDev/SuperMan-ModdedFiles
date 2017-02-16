.class public final enum Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;
.super Ljava/lang/Enum;
.source "ExecutorMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/executor/ExecutorMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseResults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

.field public static final enum FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

.field public static final enum SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->$VALUES:[Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;
    .locals 1

    const-class v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->$VALUES:[Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$2;->$SwitchMap$com$samsung$android$app$executor$ExecutorMediator$ResponseResults:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "success"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "failure"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
