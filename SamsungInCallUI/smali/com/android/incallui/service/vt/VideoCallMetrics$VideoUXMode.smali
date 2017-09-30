.class public Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoUXMode"
.end annotation


# static fields
.field public static DEX:I

.field public static MULTIWINDOW:I

.field public static PHONE:I

.field public static TABLET:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->PHONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->TABLET:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->MULTIWINDOW:I

    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->DEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasMultiWindowType(I)Z

    move-result v0

    return v0
.end method

.method private static has(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasDexType(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->DEX:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->has(II)Z

    move-result v0

    return v0
.end method

.method private static hasMultiWindowType(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->MULTIWINDOW:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->has(II)Z

    move-result v0

    return v0
.end method

.method public static hasTabletType(I)Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->TABLET:I

    invoke-static {p0, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->has(II)Z

    move-result v0

    return v0
.end method

.method public static is(II)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneType(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasTabletType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasMultiWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTabletType(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasTabletType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasMultiWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget v1, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->TABLET:I

    invoke-static {p0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->has(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TABLET"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_0
    sget v1, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->MULTIWINDOW:I

    invoke-static {p0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->has(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MULTIWINDOW"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->DEX:I

    invoke-static {p0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->has(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DEX"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "PHONE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method
