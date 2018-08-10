.class public final enum Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;
.super Ljava/lang/Enum;
.source "NeonAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/animation/NeonAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

.field public static final enum COVER_CLOSE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

.field public static final enum FULL_ON:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

.field public static final enum NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

.field public static final enum ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

.field public static final enum TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    const-string/jumbo v1, "ONGOING"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    const-string/jumbo v1, "NEW_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    const-string/jumbo v1, "COVER_CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->COVER_CLOSE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    const-string/jumbo v1, "TEST_MODE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    const-string/jumbo v1, "FULL_ON"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->FULL_ON:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->COVER_CLOSE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->FULL_ON:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->$VALUES:[Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;
    .locals 1

    const-class v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->$VALUES:[Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    return-object v0
.end method
