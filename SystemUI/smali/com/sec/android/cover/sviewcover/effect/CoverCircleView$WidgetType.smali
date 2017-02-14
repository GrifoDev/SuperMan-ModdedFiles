.class public final enum Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;
.super Ljava/lang/Enum;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

.field public static final enum CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

.field public static final enum CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

.field public static final enum CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

.field public static final enum NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    const-string/jumbo v1, "CALL"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    const-string/jumbo v1, "CAMERA"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    return-object v0
.end method
