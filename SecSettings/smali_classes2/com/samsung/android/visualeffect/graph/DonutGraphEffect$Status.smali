.class final enum Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;
.super Ljava/lang/Enum;
.source "DonutGraphEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

.field public static final enum CLEAN:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

.field public static final enum DETAIL:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

.field public static final enum NONE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

.field public static final enum SIMPLE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->NONE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    new-instance v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    const-string/jumbo v1, "SIMPLE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->SIMPLE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    new-instance v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    const-string/jumbo v1, "DETAIL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->DETAIL:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    new-instance v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    const-string/jumbo v1, "CLEAN"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->CLEAN:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->NONE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->SIMPLE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->DETAIL:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->CLEAN:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->$VALUES:[Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->$VALUES:[Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    return-object v0
.end method
