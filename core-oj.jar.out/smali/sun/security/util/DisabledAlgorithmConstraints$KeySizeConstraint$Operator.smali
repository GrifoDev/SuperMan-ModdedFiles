.class final enum Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
.super Ljava/lang/Enum;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string/jumbo v1, "EQ"

    invoke-direct {v0, v1, v3}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string/jumbo v1, "NE"

    invoke-direct {v0, v1, v4}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string/jumbo v1, "LT"

    invoke-direct {v0, v1, v5}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string/jumbo v1, "LE"

    invoke-direct {v0, v1, v6}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string/jumbo v1, "GT"

    invoke-direct {v0, v1, v7}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string/jumbo v1, "GE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const/4 v0, 0x6

    new-array v0, v0, [Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    aput-object v1, v0, v6

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    aput-object v1, v0, v7

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .locals 3

    const-string/jumbo v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0

    :cond_0
    const-string/jumbo v0, "!="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0

    :cond_1
    const-string/jumbo v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0

    :cond_2
    const-string/jumbo v0, "<="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0

    :cond_3
    const-string/jumbo v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0

    :cond_4
    const-string/jumbo v0, ">="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a legal Operator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .locals 1

    const-class v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0
.end method

.method public static values()[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .locals 1

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0
.end method
