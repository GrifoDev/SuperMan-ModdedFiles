.class public final enum Landroid/graphics/Path$FillType;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Path$FillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$FillType;

.field public static final enum EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_WINDING:Landroid/graphics/Path$FillType;

.field public static final enum WINDING:Landroid/graphics/Path$FillType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string/jumbo v1, "WINDING"

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    .line 209
    sput-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 210
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string/jumbo v1, "EVEN_ODD"

    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    .line 214
    sput-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 215
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string/jumbo v1, "INVERSE_WINDING"

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    .line 218
    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    .line 219
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string/jumbo v1, "INVERSE_EVEN_ODD"

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    .line 222
    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput p3, p0, Landroid/graphics/Path$FillType;->nativeInt:I

    .line 224
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$FillType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v0, Landroid/graphics/Path$FillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$FillType;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    return-object v0
.end method
