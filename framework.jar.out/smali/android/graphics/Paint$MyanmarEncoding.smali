.class public final enum Landroid/graphics/Paint$MyanmarEncoding;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MyanmarEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Paint$MyanmarEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Paint$MyanmarEncoding;

.field public static final enum ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

.field public static final enum ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

.field public static final enum ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Paint$MyanmarEncoding;

    const-string/jumbo v1, "ME_UNICODE"

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$MyanmarEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    new-instance v0, Landroid/graphics/Paint$MyanmarEncoding;

    const-string/jumbo v1, "ME_ZAWGYI"

    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Paint$MyanmarEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    new-instance v0, Landroid/graphics/Paint$MyanmarEncoding;

    const-string/jumbo v1, "ME_AUTO"

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Paint$MyanmarEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint$MyanmarEncoding;->$VALUES:[Landroid/graphics/Paint$MyanmarEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    const-class v0, Landroid/graphics/Paint$MyanmarEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint$MyanmarEncoding;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->$VALUES:[Landroid/graphics/Paint$MyanmarEncoding;

    return-object v0
.end method
