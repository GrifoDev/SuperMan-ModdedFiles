.class final enum Lcom/google/common/primitives/Longs$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Longs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/Longs$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[J>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Longs$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 543
    new-instance v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Longs$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    .line 542
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Longs$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Longs$LexicographicalComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 542
    const-class v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Longs$LexicographicalComparator;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Longs$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Longs$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 542
    check-cast p1, [J

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [J

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LexicographicalComparator;->compare([J[J)I

    move-result v0

    return v0
.end method

.method public compare([J[J)I
    .locals 8
    .param p1, "left"    # [J
    .param p2, "right"    # [J

    .prologue
    .line 547
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 548
    .local v1, "minLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 549
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v2

    .line 550
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 554
    .end local v2    # "result":I
    :goto_1
    return v2

    .line 548
    .restart local v2    # "result":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "result":I
    :cond_1
    array-length v3, p1

    array-length v4, p2

    sub-int v2, v3, v4

    goto :goto_1
.end method
