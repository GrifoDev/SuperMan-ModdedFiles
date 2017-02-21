.class public final enum Landroid/graphics/Bitmap$GLCompressionConfig;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GLCompressionConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Bitmap$GLCompressionConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Bitmap$GLCompressionConfig;

.field public static final enum ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

.field private static compressedConfigLookup:[Landroid/graphics/Bitmap$GLCompressionConfig;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    const-string/jumbo v1, "ASTC"

    invoke-direct {v0, v1, v3, v5}, Landroid/graphics/Bitmap$GLCompressionConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

    new-array v0, v4, [Landroid/graphics/Bitmap$GLCompressionConfig;

    sget-object v1, Landroid/graphics/Bitmap$GLCompressionConfig;->ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->$VALUES:[Landroid/graphics/Bitmap$GLCompressionConfig;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    sget-object v1, Landroid/graphics/Bitmap$GLCompressionConfig;->ASTC:Landroid/graphics/Bitmap$GLCompressionConfig;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->compressedConfigLookup:[Landroid/graphics/Bitmap$GLCompressionConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/graphics/Bitmap$GLCompressionConfig;->nativeInt:I

    return-void
.end method

.method static nativeToConfig(I)Landroid/graphics/Bitmap$GLCompressionConfig;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->compressedConfigLookup:[Landroid/graphics/Bitmap$GLCompressionConfig;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$GLCompressionConfig;
    .locals 1

    const-class v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$GLCompressionConfig;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Bitmap$GLCompressionConfig;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$GLCompressionConfig;->$VALUES:[Landroid/graphics/Bitmap$GLCompressionConfig;

    return-object v0
.end method
