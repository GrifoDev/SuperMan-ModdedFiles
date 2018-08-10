.class public Lcom/android/systemui/util/KeyguardFontEffectUtil;
.super Ljava/lang/Object;
.source "KeyguardFontEffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;,
        Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;,
        Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;,
        Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;
    }
.end annotation


# static fields
.field private static mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

.field private static mIsSetDropShadow:Z

.field private static mIsSetLinearGradient:Z

.field private static mIsSetOuterGlow:Z

.field private static mIsSetStroke:Z

.field private static mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

.field private static mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

.field private static mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    sput-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetStroke:Z

    sput-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    sput-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;-><init>(Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;)V

    sput-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    new-instance v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;-><init>(Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;)V

    sput-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    new-instance v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;-><init>(Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;)V

    sput-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    new-instance v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;-><init>(Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;)V

    sput-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    return-void
.end method

.method private static isAvailable()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetStroke:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "KeyguardFontEffectUtil"

    const-string/jumbo v1, "Font effect is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static parseStringToColor(Ljava/lang/String;)I
    .locals 6

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static parsingFontEffectString(Ljava/lang/String;)Z
    .locals 15

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "|"

    invoke-static {p0, v7}, Lcom/android/systemui/util/KeyguardFontEffectUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v7, v2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    aget-object v7, v2, v10

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->offset:F

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    aget-object v8, v1, v12

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->softness:F

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->blendingOpacity:F

    array-length v7, v1

    const/4 v8, 0x4

    if-le v7, v8, :cond_3

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    const/4 v8, 0x4

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->angle:F

    :cond_0
    :goto_0
    aget-object v7, v2, v11

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetStroke:Z

    sget-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetStroke:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;->size:F

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    aget-object v8, v1, v12

    invoke-static {v8}, Lcom/android/systemui/util/KeyguardFontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;->color:I

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;->blendingOpacity:F

    :cond_1
    aget-object v7, v2, v12

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    sget-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;->size:F

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    aget-object v8, v1, v12

    invoke-static {v8}, Lcom/android/systemui/util/KeyguardFontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;->color:I

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;->blendingOpacity:F

    :cond_2
    aget-object v7, v2, v13

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    sget-boolean v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v7, :cond_5

    const/4 v4, 0x1

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    const/4 v4, 0x2

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->scale:F

    add-int/lit8 v5, v4, 0x1

    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    new-array v8, v0, [I

    iput-object v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->colors:[I

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->alphas:[F

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->positions:[F

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->colors:[I

    add-int/lit8 v4, v5, 0x1

    aget-object v8, v1, v5

    invoke-static {v8}, Lcom/android/systemui/util/KeyguardFontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->alphas:[F

    add-int/lit8 v5, v4, 0x1

    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->positions:[F

    add-int/lit8 v4, v5, 0x1

    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    const/high16 v8, 0x42b40000    # 90.0f

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->angle:F

    goto/16 :goto_0

    :cond_4
    array-length v7, v1

    if-ge v5, v7, :cond_6

    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v14

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->blendingOpacity:F

    :cond_5
    :goto_2
    const/4 v6, 0x1

    :goto_3
    const-string/jumbo v7, "KeyguardFontEffectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isParsed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    sget-object v7, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->blendingOpacity:F

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public static setTextFontEffect(Landroid/widget/TextView;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/util/KeyguardFontEffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    iget v1, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->angle:F

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    iget v2, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->offset:F

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    iget v3, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->softness:F

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mDropShadow:Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;

    iget v5, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$DropShadow;->blendingOpacity:F

    const/high16 v4, -0x1000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->semAddOuterShadowTextEffect(FFFIF)I

    :cond_1
    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    iget v0, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;->size:F

    sget-object v1, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    iget v1, v1, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;->color:I

    sget-object v2, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mOuterGlow:Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;

    iget v2, v2, Lcom/android/systemui/util/KeyguardFontEffectUtil$OuterGlow;->blendingOpacity:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->semAddOuterGlowTextEffect(FIF)I

    :cond_2
    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetStroke:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    iget v0, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;->size:F

    sget-object v1, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    iget v1, v1, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;->color:I

    sget-object v2, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mStroke:Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;

    iget v2, v2, Lcom/android/systemui/util/KeyguardFontEffectUtil$Stroke;->blendingOpacity:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    :cond_3
    sget-boolean v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget v2, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->scale:F

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget-object v3, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->colors:[I

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget-object v4, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->alphas:[F

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget-object v5, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->positions:[F

    sget-object v0, Lcom/android/systemui/util/KeyguardFontEffectUtil;->mLinearGradient:Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;

    iget v6, v0, Lcom/android/systemui/util/KeyguardFontEffectUtil$LinearGradient;->blendingOpacity:F

    const/high16 v1, 0x42b40000    # 90.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->semAddLinearGradientTextEffect(FF[I[F[FF)I

    :cond_4
    return-void
.end method

.method private static stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "KeyguardFontEffectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_1
    move-exception v2

    const-string/jumbo v5, "KeyguardFontEffectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NPE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    return-object v4
.end method
