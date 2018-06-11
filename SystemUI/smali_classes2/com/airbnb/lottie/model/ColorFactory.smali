.class public Lcom/airbnb/lottie/model/ColorFactory;
.super Ljava/lang/Object;
.source "ColorFactory.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/model/ColorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/model/ColorFactory;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/ColorFactory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/ColorFactory;->INSTANCE:Lcom/airbnb/lottie/model/ColorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 14

    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    const/high16 v6, -0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_0
    const/4 v5, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    if-nez v5, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    float-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    float-to-double v12, v4

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/high16 v4, 0x437f0000    # 255.0f

    goto :goto_1
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/ColorFactory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
