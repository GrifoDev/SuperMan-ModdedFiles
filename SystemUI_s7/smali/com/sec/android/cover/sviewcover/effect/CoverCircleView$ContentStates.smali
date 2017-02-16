.class public final enum Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;
.super Ljava/lang/Enum;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

.field public static final enum DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

.field public static final enum PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

.field public static final enum SWIPE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    const-string/jumbo v1, "PRESSED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    const-string/jumbo v1, "SWIPE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->SWIPE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->SWIPE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    return-object v0
.end method
