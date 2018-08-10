.class public final enum Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;
.super Ljava/lang/Enum;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

.field public static final enum FILTER_BLEND_DST_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

.field public static final enum FILTER_BLEND_SRC_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

.field public static final enum FILTER_BLEND_USAGE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

.field public static final enum FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

.field public static final enum FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

.field public static final enum FILTER_INPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

.field public static final enum FILTER_OUTPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const-string/jumbo v1, "FILTER_BLEND_USAGE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_USAGE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const-string/jumbo v1, "FILTER_BLEND_SRC_FACTOR"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_SRC_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const-string/jumbo v1, "FILTER_BLEND_DST_FACTOR"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_DST_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const-string/jumbo v1, "FILTER_DOWN_SAMPLE_RATE_H"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const-string/jumbo v1, "FILTER_DOWN_SAMPLE_RATE_V"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const-string/jumbo v1, "FILTER_INPUT_TEXTURE_FILTERING_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_INPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const-string/jumbo v1, "FILTER_OUTPUT_TEXTURE_FILTERING_STATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_OUTPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_USAGE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_SRC_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_DST_FACTOR:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_INPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_OUTPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;
    .locals 1

    const-class v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    return-object v0
.end method
