.class final enum Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
.super Ljava/lang/Enum;
.source "OcfKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OcfKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OcfKeyServiceResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/OcfKeyService$OcfKeyServiceResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum EXCEPTION_OCCUR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum NO_SERVICE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;


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

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "PERMISSION_DENIED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "NO_SERVICE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_SERVICE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "INVALID_PARAMETER"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "DEVICE_INSECURE"

    const/4 v2, 0x4

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "TZ_COMMUNICATION_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "TZ_INTERNAL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "EXCEPTION_OCCUR"

    const/4 v2, 0x7

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->EXCEPTION_OCCUR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string/jumbo v1, "NO_AVAILABLE_KEY"

    const/16 v2, 0x8

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_SERVICE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->EXCEPTION_OCCUR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->$VALUES:[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->mCode:I

    return-void
.end method

.method public static convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    .locals 20

    const/4 v11, 0x0

    const v1, 0x10001

    const v0, 0x10002

    const v12, 0x10003

    const v4, 0x10004

    const v9, 0x10005

    const v10, 0x10006

    const v13, 0x10007

    const v2, 0x1000a

    const v8, 0x1000b

    const v3, 0x1000c

    const v6, 0x1000d

    const v7, 0x1000e

    const v5, 0x1000f

    const/16 v15, 0xc

    const/16 v14, -0xa

    const-string/jumbo v17, "OcfKeyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "result from tz_ocf : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    sparse-switch p0, :sswitch_data_0

    sget-object v16, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    :goto_0
    const-string/jumbo v17, "OcfKeyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "result OcfKeyServiceResult : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :sswitch_0
    sget-object v16, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_0

    :sswitch_1
    sget-object v16, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_0

    :sswitch_2
    sget-object v16, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_0

    :sswitch_3
    sget-object v16, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_0

    :sswitch_4
    sget-object v16, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_4
        0x10001 -> :sswitch_1
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_2
        0x10005 -> :sswitch_2
        0x10007 -> :sswitch_2
        0x1000a -> :sswitch_2
        0x1000c -> :sswitch_3
        0x1000d -> :sswitch_3
        0x1000e -> :sswitch_3
        0x1000f -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    .locals 1

    const-class v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    .locals 1

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->$VALUES:[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->mCode:I

    return v0
.end method
