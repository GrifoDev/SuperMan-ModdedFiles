.class public final enum Lcom/gsma/services/rcs/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/gsma/services/rcs/f$a;

.field public static final enum b:Lcom/gsma/services/rcs/f$a;

.field public static final enum c:Lcom/gsma/services/rcs/f$a;

.field private static e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/gsma/services/rcs/f$a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/gsma/services/rcs/f$a;

    const-string v2, "INTERNAL_ERROR"

    invoke-direct {v1, v2, v0, v0}, Lcom/gsma/services/rcs/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/f$a;->a:Lcom/gsma/services/rcs/f$a;

    new-instance v1, Lcom/gsma/services/rcs/f$a;

    const-string v2, "SERVICE_DISABLED"

    invoke-direct {v1, v2, v3, v3}, Lcom/gsma/services/rcs/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/f$a;->b:Lcom/gsma/services/rcs/f$a;

    new-instance v1, Lcom/gsma/services/rcs/f$a;

    const-string v2, "CONNECTION_LOST"

    invoke-direct {v1, v2, v4, v4}, Lcom/gsma/services/rcs/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/f$a;->c:Lcom/gsma/services/rcs/f$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/gsma/services/rcs/f$a;

    sget-object v2, Lcom/gsma/services/rcs/f$a;->a:Lcom/gsma/services/rcs/f$a;

    aput-object v2, v1, v0

    sget-object v2, Lcom/gsma/services/rcs/f$a;->b:Lcom/gsma/services/rcs/f$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/gsma/services/rcs/f$a;->c:Lcom/gsma/services/rcs/f$a;

    aput-object v2, v1, v4

    sput-object v1, Lcom/gsma/services/rcs/f$a;->f:[Lcom/gsma/services/rcs/f$a;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/f$a;->e:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/f$a;->values()[Lcom/gsma/services/rcs/f$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/gsma/services/rcs/f$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/f$a;->a()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gsma/services/rcs/f$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/f$a;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/f$a;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/f$a;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/f$a;->f:[Lcom/gsma/services/rcs/f$a;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/f$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/f$a;->d:I

    return v0
.end method
