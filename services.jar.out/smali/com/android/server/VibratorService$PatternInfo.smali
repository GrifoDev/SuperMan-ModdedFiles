.class Lcom/android/server/VibratorService$PatternInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternInfo"
.end annotation


# instance fields
.field private engine:[I

.field private pattern:[J


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$PatternInfo;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->engine:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$PatternInfo;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->pattern:[J

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/VibratorService$PatternInfo;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$PatternInfo;->engine:[I

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/VibratorService$PatternInfo;[J)[J
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$PatternInfo;->pattern:[J

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService$PatternInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService$PatternInfo;-><init>()V

    return-void
.end method
