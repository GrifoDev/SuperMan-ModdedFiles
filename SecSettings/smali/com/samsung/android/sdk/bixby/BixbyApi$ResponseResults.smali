.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
.super Ljava/lang/Enum;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseResults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "STATE_SUCCESS"

    invoke-direct {v0, v1, v6, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "STATE_FAILURE"

    invoke-direct {v0, v1, v7, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "TEST_SETUP_SUCCESS"

    invoke-direct {v0, v1, v8, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "TEST_SETUP_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "TEST_TEARDOWN_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "TEST_TEARDOWN_FAILURE"

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "TEST_ALL_STATES_SUCCESS"

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, "TEST_ALL_STATES_FAILURE"

    const/16 v2, 0x9

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

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

    iput p3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
