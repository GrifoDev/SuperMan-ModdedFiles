.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageManager"
.end annotation


# static fields
.field public static FEATURE_MULTIWINDOW:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_FREESTYLE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_FREESTYLE_DOCKING:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_MINIMIZE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_MULTIINSTANCE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_PHONE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_QUADVIEW:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_TABLET:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 119
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "FEATURE_MULTIWINDOW"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "FEATURE_MULTIWINDOW_FREESTYLE"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "FEATURE_MULTIWINDOW_MINIMIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "FEATURE_MULTIWINDOW_QUADVIEW"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "FEATURE_MULTIWINDOW_MULTIINSTANCE"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "FEATURE_MULTIWINDOW_FREESTYLE_DOCKING"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "FEATURE_MULTIWINDOW_PHONE"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "FEATURE_MULTIWINDOW_TABLET"

    aput-object v6, v4, v5

    sput-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    .line 132
    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 133
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 135
    :try_start_0
    const-class v4, Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 136
    .local v3, "src":Ljava/lang/reflect/Field;
    const-class v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 137
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v3    # "src":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void

    .line 140
    :catch_0
    move-exception v4

    goto :goto_1

    .line 139
    :catch_1
    move-exception v4

    goto :goto_1

    .line 138
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
