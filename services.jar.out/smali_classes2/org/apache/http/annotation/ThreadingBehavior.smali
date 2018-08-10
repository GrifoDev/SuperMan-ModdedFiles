.class public final enum Lorg/apache/http/annotation/ThreadingBehavior;
.super Ljava/lang/Enum;
.source "ThreadingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/annotation/ThreadingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;

.field public static final enum SAFE:Lorg/apache/http/annotation/ThreadingBehavior;

.field public static final enum SAFE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;

.field public static final enum UNSAFE:Lorg/apache/http/annotation/ThreadingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/http/annotation/ThreadingBehavior;

    const-string/jumbo v1, "IMMUTABLE"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;

    new-instance v0, Lorg/apache/http/annotation/ThreadingBehavior;

    const-string/jumbo v1, "IMMUTABLE_CONDITIONAL"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;

    new-instance v0, Lorg/apache/http/annotation/ThreadingBehavior;

    const-string/jumbo v1, "SAFE"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;

    new-instance v0, Lorg/apache/http/annotation/ThreadingBehavior;

    const-string/jumbo v1, "SAFE_CONDITIONAL"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;

    new-instance v0, Lorg/apache/http/annotation/ThreadingBehavior;

    const-string/jumbo v1, "UNSAFE"

    invoke-direct {v0, v1, v6}, Lorg/apache/http/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/annotation/ThreadingBehavior;->UNSAFE:Lorg/apache/http/annotation/ThreadingBehavior;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/http/annotation/ThreadingBehavior;

    sget-object v1, Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/annotation/ThreadingBehavior;->UNSAFE:Lorg/apache/http/annotation/ThreadingBehavior;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/http/annotation/ThreadingBehavior;->$VALUES:[Lorg/apache/http/annotation/ThreadingBehavior;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/annotation/ThreadingBehavior;
    .locals 1

    const-class v0, Lorg/apache/http/annotation/ThreadingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/annotation/ThreadingBehavior;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/annotation/ThreadingBehavior;
    .locals 1

    sget-object v0, Lorg/apache/http/annotation/ThreadingBehavior;->$VALUES:[Lorg/apache/http/annotation/ThreadingBehavior;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/annotation/ThreadingBehavior;

    return-object v0
.end method
