.class public Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;
.super Ljava/lang/Object;
.source "SVirtualScreenManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchParams"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static FLAG_BASE_ACTIVITY:I

.field public static FLAG_CLEAR_TASKS:I

.field public static FLAG_FOCUS_POLICY:I

.field public static FLAG_LAYOUT_POLICY:I

.field public static FLAG_NO_ANIMATION:I

.field public static FLAG_RECREATE_VIRTUALSCREEN:I

.field public static FLAG_ZEROPAGE_POLICY:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "FLAG_BASE_ACTIVITY"

    aput-object v8, v6, v7

    const-string v7, "FLAG_CLEAR_TASKS"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v8, "FLAG_NO_ANIMATION"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "FLAG_RECREATE_VIRTUALSCREEN"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "FLAG_LAYOUT_POLICY"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "FLAG_FOCUS_POLICY"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "FLAG_ZEROPAGE_POLICY"

    aput-object v8, v6, v7

    sput-object v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v6

    const/4 v4, 0x0

    :try_start_0
    # getter for: Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I
    invoke-static {}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->access$000()I

    move-result v6

    if-ge v6, v9, :cond_0

    const-string v6, "com.samsung.android.multidisplay.virtualscreen.VirtualScreenLaunchParams"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    :try_start_1
    sget-object v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-class v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;

    sget-object v7, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v5, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v6, "com.samsung.android.multiscreen.MultiScreenLaunchParams"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    return-void

    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
