.class public final enum Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;
.super Ljava/lang/Enum;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WidgetSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

.field public static final enum LEFT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

.field public static final enum RIGHT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->LEFT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->RIGHT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->LEFT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->RIGHT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    return-object v0
.end method
