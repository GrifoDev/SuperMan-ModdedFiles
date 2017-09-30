.class public final enum Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

.field public static final enum ERROR:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

.field public static final enum NO_CONNECTION:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

.field public static final enum NO_CONTENT:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

.field public static final enum SUCCESS:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->SUCCESS:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    const-string v1, "NO_CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->NO_CONTENT:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->ERROR:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    const-string v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->NO_CONNECTION:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->SUCCESS:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->NO_CONTENT:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->ERROR:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->NO_CONNECTION:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->$VALUES:[Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->$VALUES:[Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    return-object v0
.end method
