.class final enum Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;
.super Ljava/lang/Enum;
.source "OcfKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OcfKeyServiceManagerResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum DEVICE_INSECURE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum INVALID_PARAMETER:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum NO_AVAILABLE_KEY:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum NO_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum PERMISSION_DENIED:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum TZ_COMMUNICATION_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

.field public static final enum TZ_INTERNAL_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x5

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "PERMISSION_DENIED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->PERMISSION_DENIED:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "NO_SERVICE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "INVALID_PARAMETER"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->INVALID_PARAMETER:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "DEVICE_INSECURE"

    const/4 v2, 0x4

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->DEVICE_INSECURE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "TZ_COMMUNICATION_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->TZ_COMMUNICATION_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "TZ_INTERNAL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->TZ_INTERNAL_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "EXCEPTION_OCCUR"

    const/4 v2, 0x7

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    new-instance v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const-string/jumbo v1, "NO_AVAILABLE_KEY"

    const/16 v2, 0x8

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_AVAILABLE_KEY:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->PERMISSION_DENIED:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_SERVICE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->INVALID_PARAMETER:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->DEVICE_INSECURE:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->TZ_COMMUNICATION_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->TZ_INTERNAL_ERROR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->EXCEPTION_OCCUR:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->NO_AVAILABLE_KEY:Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->$VALUES:[Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;
    .locals 1

    const-class v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->$VALUES:[Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/OcfKeyService/OcfKeyServiceManager$OcfKeyServiceManagerResult;->mCode:I

    return v0
.end method
