.class public Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceState"
.end annotation


# static fields
.field public static BUSY:I

.field public static HELD:I

.field public static PAUSE:I

.field public static RESUMED:I

.field public static RESUMING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->PAUSE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMED:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMING:I

    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->HELD:I

    const/4 v0, 0x5

    sput v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->BUSY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->PAUSE:I

    if-ne p0, v0, :cond_0

    const-string v0, "PAUSE"

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMED:I

    if-ne p0, v0, :cond_1

    const-string v0, "RESUMED"

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMING:I

    if-ne p0, v0, :cond_2

    const-string v0, "RESUMING"

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->HELD:I

    if-ne p0, v0, :cond_3

    const-string v0, "HELD"

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->BUSY:I

    if-ne p0, v0, :cond_4

    const-string v0, "BUSY"

    goto :goto_0

    :cond_4
    const-string v0, "NONE"

    goto :goto_0
.end method
