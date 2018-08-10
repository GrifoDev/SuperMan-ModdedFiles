.class public Landroid/app/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final CLEAR_LOCK:I = 0x8d05

.field public static final DISMISS_SCREEN:I = 0x8d04

.field public static final REQUIRESTRONGAUTH:I = 0x8d06

.field public static final SCREEN_DISABLED:I = 0x8d03


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeClearLock(II)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x8d05

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeDismissScreen(I)V
    .locals 1

    const v0, 0x8d04

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static writeRequirestrongauth(I)V
    .locals 1

    const v0, 0x8d06

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static writeScreenDisabled(ILjava/lang/String;I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x8d03

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
