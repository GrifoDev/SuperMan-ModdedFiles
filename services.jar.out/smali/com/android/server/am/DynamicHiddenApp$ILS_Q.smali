.class public final Lcom/android/server/am/DynamicHiddenApp$ILS_Q;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ILS_Q"
.end annotation


# static fields
.field private static HARD_FLAG:Z

.field private static ILS_DEBUG:Z

.field private static MAX_Q_SIZE:I

.field private static Q_Front:I

.field private static Q_Node:[Ljava/lang/String;

.field private static Q_Rear:I

.field private static Q_Size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    const-string/jumbo v0, "ro.config.dha_ils_size"

    const-string/jumbo v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->ILS_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppsLaunchFreq(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->isInsert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->ILS_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ILS: Launch App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    return v0
.end method

.method private static isInsert(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "launcher"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "googlequicksearchbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "contact"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x0

    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ge v2, v3, :cond_2

    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    :cond_2
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    aput-object p0, v2, v3

    sget v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    :cond_3
    :goto_0
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aput-object v6, v2, v0

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    :cond_4
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_5

    sput v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    :cond_5
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_6

    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_6

    sput v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    :cond_6
    return v5

    :cond_7
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    add-int/lit8 v1, v1, 0x1

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    sget v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v2, v3, :cond_8

    if-nez v1, :cond_8

    sput-boolean v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    goto :goto_1
.end method
