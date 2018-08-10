.class public final enum Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;
.super Ljava/lang/Enum;
.source "NeonFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NeonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum ALARM:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum CALENDAR:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum COVER_CLOSED:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum FULL_ON:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum TEST_MODE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field public static final enum TIMER:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;


# instance fields
.field private priority:I


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->priority:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "TEST_MODE"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TEST_MODE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "CALL"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "ALARM"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ALARM:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "TIMER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TIMER:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "CALENDAR"

    const/4 v2, 0x4

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALENDAR:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "MESSAGE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "COVER_CLOSED"

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->COVER_CLOSED:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "FULL_ON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->FULL_ON:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const-string/jumbo v1, "IDLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TEST_MODE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ALARM:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TIMER:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALENDAR:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->COVER_CLOSED:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->FULL_ON:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->$VALUES:[Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;
    .locals 1

    const-class v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->$VALUES:[Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->priority:I

    return v0
.end method
