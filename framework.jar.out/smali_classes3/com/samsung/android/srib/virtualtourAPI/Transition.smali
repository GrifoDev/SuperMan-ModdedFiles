.class public final enum Lcom/samsung/android/srib/virtualtourAPI/Transition;
.super Ljava/lang/Enum;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/srib/virtualtourAPI/Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field public static final enum HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field public static final enum NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field public static final enum TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field public static final enum WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;

    const-string/jumbo v1, "TURN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/srib/virtualtourAPI/Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    new-instance v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;

    const-string/jumbo v1, "WALK"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/srib/virtualtourAPI/Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    new-instance v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;

    const-string/jumbo v1, "NA"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/srib/virtualtourAPI/Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    new-instance v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;

    const-string/jumbo v1, "HELPER"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/srib/virtualtourAPI/Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;->$VALUES:[Lcom/samsung/android/srib/virtualtourAPI/Transition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/srib/virtualtourAPI/Transition;
    .locals 1

    const-class v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/srib/virtualtourAPI/Transition;
    .locals 1

    sget-object v0, Lcom/samsung/android/srib/virtualtourAPI/Transition;->$VALUES:[Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/srib/virtualtourAPI/Transition;

    return-object v0
.end method
