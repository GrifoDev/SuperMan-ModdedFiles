.class public final enum Ljava/lang/Thread$State;
.super Ljava/lang/Enum;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/lang/Thread$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/lang/Thread$State;

.field public static final enum BLOCKED:Ljava/lang/Thread$State;

.field public static final enum NEW:Ljava/lang/Thread$State;

.field public static final enum RUNNABLE:Ljava/lang/Thread$State;

.field public static final enum TERMINATED:Ljava/lang/Thread$State;

.field public static final enum TIMED_WAITING:Ljava/lang/Thread$State;

.field public static final enum WAITING:Ljava/lang/Thread$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/Thread$State;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    new-instance v0, Ljava/lang/Thread$State;

    const-string/jumbo v1, "RUNNABLE"

    invoke-direct {v0, v1, v4}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    new-instance v0, Ljava/lang/Thread$State;

    const-string/jumbo v1, "BLOCKED"

    invoke-direct {v0, v1, v5}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    new-instance v0, Ljava/lang/Thread$State;

    const-string/jumbo v1, "WAITING"

    invoke-direct {v0, v1, v6}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    new-instance v0, Ljava/lang/Thread$State;

    const-string/jumbo v1, "TIMED_WAITING"

    invoke-direct {v0, v1, v7}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    new-instance v0, Ljava/lang/Thread$State;

    const-string/jumbo v1, "TERMINATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Thread$State;

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    aput-object v1, v0, v7

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Thread$State;
    .locals 1

    const-class v0, Ljava/lang/Thread$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$State;

    return-object v0
.end method

.method public static values()[Ljava/lang/Thread$State;
    .locals 1

    sget-object v0, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    return-object v0
.end method
