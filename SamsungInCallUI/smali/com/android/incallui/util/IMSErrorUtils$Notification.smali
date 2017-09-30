.class public Lcom/android/incallui/util/IMSErrorUtils$Notification;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/IMSErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notification"
.end annotation


# static fields
.field public static final DIALOG:I = 0x3

.field public static final DIALOG_DIVERT:I = 0x4

.field public static final DIALOG_WIFI:I = 0x6

.field public static final NONE:I = 0x0

.field public static final SILENT_DIVERT:I = 0x5

.field public static final TOAST:I = 0x1

.field public static final TOAST_DIVERT:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "TOAST"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "TOAST_DIVERT"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "DIALOG"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "DIALOG_DIVERT"

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string v0, "SILENT_DIVERT"

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string v0, "DIALOG_WIFI"

    goto :goto_0

    :cond_5
    const-string v0, "NONE"

    goto :goto_0
.end method
