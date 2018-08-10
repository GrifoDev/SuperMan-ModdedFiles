.class public final enum Landroid/graphics/ColorSpace$RenderIntent;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/ColorSpace$RenderIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum SATURATION:Landroid/graphics/ColorSpace$RenderIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string/jumbo v1, "PERCEPTUAL"

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string/jumbo v1, "RELATIVE"

    invoke-direct {v0, v1, v3}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string/jumbo v1, "SATURATION"

    invoke-direct {v0, v1, v4}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->SATURATION:Landroid/graphics/ColorSpace$RenderIntent;

    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string/jumbo v1, "ABSOLUTE"

    invoke-direct {v0, v1, v5}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/ColorSpace$RenderIntent;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->SATURATION:Landroid/graphics/ColorSpace$RenderIntent;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$RenderIntent;
    .locals 1

    const-class v0, Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public static values()[Landroid/graphics/ColorSpace$RenderIntent;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method
