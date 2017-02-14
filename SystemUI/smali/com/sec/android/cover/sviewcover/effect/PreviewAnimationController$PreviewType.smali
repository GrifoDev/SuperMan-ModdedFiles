.class public final enum Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;
.super Ljava/lang/Enum;
.source "PreviewAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

.field public static final enum Camera:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

.field public static final enum Contact:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    const-string/jumbo v1, "Camera"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Camera:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    const-string/jumbo v1, "Contact"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Contact:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Camera:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Contact:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->$VALUES:[Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    return-object v0
.end method
