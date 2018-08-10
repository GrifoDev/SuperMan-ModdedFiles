.class Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Lcom/airbnb/lottie/utils/JsonUtils;->valueFromObject(Ljava/lang/Object;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
