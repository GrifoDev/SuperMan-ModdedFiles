.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowManagerPolicy"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static WINDOW_MODE_FREESTYLE:I

.field public static WINDOW_MODE_MASK:I

.field public static WINDOW_MODE_NORMAL:I

.field public static WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

.field public static WINDOW_MODE_OPTION_COMMON_PINUP:I

.field public static WINDOW_MODE_OPTION_COMMON_SCALE:I

.field public static WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "WINDOW_MODE_MASK"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "WINDOW_MODE_NORMAL"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "WINDOW_MODE_FREESTYLE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "WINDOW_MODE_OPTION_COMMON_SCALE"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "WINDOW_MODE_OPTION_COMMON_PINUP"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "WINDOW_MODE_OPTION_COMMON_MINIMIZED"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_MASK"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_A"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_B"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_C"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_D"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_E"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_F"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK"

    aput-object v6, v4, v5

    sput-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    const-class v4, Landroid/view/WindowManagerPolicy;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
