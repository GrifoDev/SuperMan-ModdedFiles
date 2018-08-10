.class public final enum Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;
.super Ljava/lang/Enum;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendFactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_CONSTANT_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_CONSTANT_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_DST_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_DST_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ONE:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ONE_MINUS_CONSTANT_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ONE_MINUS_CONSTANT_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ONE_MINUS_DST_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ONE_MINUS_DST_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ONE_MINUS_SRC_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ONE_MINUS_SRC_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_SRC_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_SRC_ALPHA_SATURATE:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_SRC_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

.field public static final enum GL_ZERO:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;


# instance fields
.field private blendFactor:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->blendFactor:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ZERO:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ONE"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_SRC_COLOR"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_SRC_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ONE_MINUS_SRC_COLOR"

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_SRC_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_DST_COLOR"

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_DST_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ONE_MINUS_DST_COLOR"

    const/4 v2, 0x5

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_DST_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_SRC_ALPHA"

    const/4 v2, 0x6

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_SRC_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ONE_MINUS_SRC_ALPHA"

    const/4 v2, 0x7

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_SRC_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_DST_ALPHA"

    const/16 v2, 0x8

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_DST_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ONE_MINUS_DST_ALPHA"

    const/16 v2, 0x9

    const/high16 v3, 0x41100000    # 9.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_DST_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_CONSTANT_COLOR"

    const/16 v2, 0xa

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_CONSTANT_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ONE_MINUS_CONSTANT_COLOR"

    const/16 v2, 0xb

    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_CONSTANT_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_CONSTANT_ALPHA"

    const/16 v2, 0xc

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_CONSTANT_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_ONE_MINUS_CONSTANT_ALPHA"

    const/16 v2, 0xd

    const/high16 v3, 0x41500000    # 13.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_CONSTANT_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const-string/jumbo v1, "GL_SRC_ALPHA_SATURATE"

    const/16 v2, 0xe

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_SRC_ALPHA_SATURATE:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ZERO:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_SRC_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_SRC_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_DST_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_DST_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_SRC_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_SRC_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_DST_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_DST_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_CONSTANT_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_CONSTANT_COLOR:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_CONSTANT_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_ONE_MINUS_CONSTANT_ALPHA:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->GL_SRC_ALPHA_SATURATE:Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->blendFactor:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;
    .locals 1

    const-class v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;

    return-object v0
.end method


# virtual methods
.method public getBlendFactor()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemImageFilter$BlendFactor;->blendFactor:F

    return v0
.end method
