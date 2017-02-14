.class public Lcom/android/settings/qstile/DevelopmentTiles;
.super Ljava/lang/Object;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/qstile/DevelopmentTiles$GPUProfiling;,
        Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;
    }
.end annotation


# static fields
.field static final TILE_CLASSES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/settings/qstile/DevelopmentTiles$ShowLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/qstile/DevelopmentTiles$GPUProfiling;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/qstile/DevelopmentTiles;->TILE_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTilesEnabled(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method
