.class public final enum Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/PhotoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoringMTState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

.field public static final enum PHOTORING_CONTENT_DOWNLOADED:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

.field public static final enum PHOTORING_CONTENT_EXIST:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

.field public static final enum PHOTORING_MOBILE_DATA_OFF:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

.field public static final enum PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    const-string v1, "PHOTORING_NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    new-instance v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    const-string v1, "PHOTORING_CONTENT_EXIST"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_EXIST:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    new-instance v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    const-string v1, "PHOTORING_CONTENT_DOWNLOADED"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    new-instance v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    const-string v1, "PHOTORING_MOBILE_DATA_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    sget-object v1, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_EXIST:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->$VALUES:[Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .locals 1

    const-class v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .locals 1

    sget-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->$VALUES:[Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    invoke-virtual {v0}, [Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    return-object v0
.end method
