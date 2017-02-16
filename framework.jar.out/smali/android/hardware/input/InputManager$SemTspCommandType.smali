.class public final enum Landroid/hardware/input/InputManager$SemTspCommandType;
.super Ljava/lang/Enum;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemTspCommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/input/InputManager$SemTspCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

.field public static final enum EMPTY:Landroid/hardware/input/InputManager$SemTspCommandType;

.field public static final enum SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;


# instance fields
.field private mvalue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    new-instance v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string/jumbo v1, "EMPTY"

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    .line 289
    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->EMPTY:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 290
    new-instance v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string/jumbo v1, "SPAY"

    invoke-direct {v0, v1, v3, v3}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    .line 293
    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/input/InputManager$SemTspCommandType;

    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->EMPTY:Landroid/hardware/input/InputManager$SemTspCommandType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->$VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 298
    iput p3, p0, Landroid/hardware/input/InputManager$SemTspCommandType;->mvalue:I

    .line 297
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/input/InputManager$SemTspCommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    const-class v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/input/InputManager$SemTspCommandType;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->$VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

    return-object v0
.end method


# virtual methods
.method public getvalue()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Landroid/hardware/input/InputManager$SemTspCommandType;->mvalue:I

    return v0
.end method
