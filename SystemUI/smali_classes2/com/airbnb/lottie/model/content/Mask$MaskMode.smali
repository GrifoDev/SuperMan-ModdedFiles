.class public final enum Lcom/airbnb/lottie/model/content/Mask$MaskMode;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/model/content/Mask$MaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MaskModeAdd:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MaskModeIntersect:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MaskModeSubtract:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MaskModeUnknown:Lcom/airbnb/lottie/model/content/Mask$MaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string/jumbo v1, "MaskModeAdd"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string/jumbo v1, "MaskModeSubtract"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string/jumbo v1, "MaskModeIntersect"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string/jumbo v1, "MaskModeUnknown"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->$VALUES:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->$VALUES:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method
