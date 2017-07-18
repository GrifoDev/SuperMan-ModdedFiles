.class final enum Ljava/util/stream/MatchOps$MatchKind;
.super Ljava/lang/Enum;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MatchKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/MatchOps$MatchKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum ALL:Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum ANY:Ljava/util/stream/MatchOps$MatchKind;

.field public static final enum NONE:Ljava/util/stream/MatchOps$MatchKind;


# instance fields
.field private final shortCircuitResult:Z

.field private final stopOnPredicateMatches:Z


# direct methods
.method static synthetic -get0(Ljava/util/stream/MatchOps$MatchKind;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    return v0
.end method

.method static synthetic -get1(Ljava/util/stream/MatchOps$MatchKind;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    const-string/jumbo v1, "ANY"

    invoke-direct {v0, v1, v2, v3, v3}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3, v2, v2}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    new-instance v0, Ljava/util/stream/MatchOps$MatchKind;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v3, v2}, Ljava/util/stream/MatchOps$MatchKind;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/stream/MatchOps$MatchKind;

    sget-object v1, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    aput-object v1, v0, v4

    sput-object v0, Ljava/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava/util/stream/MatchOps$MatchKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ljava/util/stream/MatchOps$MatchKind;->stopOnPredicateMatches:Z

    iput-boolean p4, p0, Ljava/util/stream/MatchOps$MatchKind;->shortCircuitResult:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/MatchOps$MatchKind;
    .locals 1

    const-class v0, Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    return-object v0
.end method

.method public static values()[Ljava/util/stream/MatchOps$MatchKind;
    .locals 1

    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->$VALUES:[Ljava/util/stream/MatchOps$MatchKind;

    return-object v0
.end method
