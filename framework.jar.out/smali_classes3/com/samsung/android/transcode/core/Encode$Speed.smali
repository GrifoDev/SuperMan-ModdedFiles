.class public final enum Lcom/samsung/android/transcode/core/Encode$Speed;
.super Ljava/lang/Enum;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/Encode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Speed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/transcode/core/Encode$Speed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum EIGHT_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum FOUR_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum HALF:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum ONE_EIGHTH:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum ONE_FOURTH:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum SIXTEEN_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

.field public static final enum TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "HALF"

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->HALF:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "ONE_FOURTH"

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "ONE_EIGHTH"

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "TWO_TIMES"

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "FOUR_TIMES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "EIGHT_TIMES"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "SIXTEEN_TIMES"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    const-string/jumbo v1, "THIRTY_TWO_TIMES"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/core/Encode$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/transcode/core/Encode$Speed;

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->HALF:Lcom/samsung/android/transcode/core/Encode$Speed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/core/Encode$Speed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/core/Encode$Speed;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->$VALUES:[Lcom/samsung/android/transcode/core/Encode$Speed;

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

    iput p3, p0, Lcom/samsung/android/transcode/core/Encode$Speed;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/core/Encode$Speed;
    .locals 1

    const-class v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/transcode/core/Encode$Speed;
    .locals 1

    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->$VALUES:[Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode$Speed;->value:I

    return v0
.end method
