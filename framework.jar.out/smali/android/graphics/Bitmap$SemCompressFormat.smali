.class public final enum Landroid/graphics/Bitmap$SemCompressFormat;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemCompressFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Bitmap$SemCompressFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Bitmap$SemCompressFormat;

.field public static final enum Astc:Landroid/graphics/Bitmap$SemCompressFormat;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1369
    new-instance v0, Landroid/graphics/Bitmap$SemCompressFormat;

    const-string/jumbo v1, "Astc"

    .line 1374
    const/16 v2, 0x63

    .line 1369
    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/Bitmap$SemCompressFormat;-><init>(Ljava/lang/String;II)V

    .line 1374
    sput-object v0, Landroid/graphics/Bitmap$SemCompressFormat;->Astc:Landroid/graphics/Bitmap$SemCompressFormat;

    .line 1368
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$SemCompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$SemCompressFormat;->Astc:Landroid/graphics/Bitmap$SemCompressFormat;

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/Bitmap$SemCompressFormat;->$VALUES:[Landroid/graphics/Bitmap$SemCompressFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    .prologue
    .line 1376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1377
    iput p3, p0, Landroid/graphics/Bitmap$SemCompressFormat;->nativeInt:I

    .line 1376
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$SemCompressFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1368
    const-class v0, Landroid/graphics/Bitmap$SemCompressFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$SemCompressFormat;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Bitmap$SemCompressFormat;
    .locals 1

    .prologue
    .line 1368
    sget-object v0, Landroid/graphics/Bitmap$SemCompressFormat;->$VALUES:[Landroid/graphics/Bitmap$SemCompressFormat;

    return-object v0
.end method
