.class public Landroid/media/SemUibcInputHandler;
.super Ljava/lang/Object;
.source "SemUibcInputHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemUibcInputHandler.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "SemUibcInputHandler.java"

    const-string/jumbo v1, "try to load libuibc.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "uibc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native handleKeyDown(II)V
.end method

.method public static handleKeyDown(Landroid/content/Context;II)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyDown(II)V

    return-void
.end method

.method public static native handleKeyDownASCII(II)V
.end method

.method public static handleKeyDownASCII(Landroid/content/Context;II)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyDownASCII(II)V

    return-void
.end method

.method public static native handleKeyUp(II)V
.end method

.method public static handleKeyUp(Landroid/content/Context;II)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyUp(II)V

    return-void
.end method

.method public static native handleKeyUpASCII(II)V
.end method

.method public static handleKeyUpASCII(Landroid/content/Context;II)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyUpASCII(II)V

    return-void
.end method

.method public static native handleRotate(II)V
.end method

.method public static handleRotate(Landroid/content/Context;II)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->rotate(II)V

    return-void
.end method

.method public static native handleScroll(FF)V
.end method

.method public static handleScroll(Landroid/content/Context;FF)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->scroll(FF)V

    return-void
.end method

.method public static native handleTouchDown(I[I[I[I)V
.end method

.method public static handleTouchDown(Landroid/content/Context;I[I[I[I)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchDown(I[I[I[I)V

    return-void
.end method

.method public static native handleTouchMove(I[I[I[I)V
.end method

.method public static handleTouchMove(Landroid/content/Context;I[I[I[I)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchMove(I[I[I[I)V

    return-void
.end method

.method public static native handleTouchUp(I[I[I[I)V
.end method

.method public static handleTouchUp(Landroid/content/Context;I[I[I[I)V
    .locals 2

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchUp(I[I[I[I)V

    return-void
.end method

.method public static isActive()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/media/SemUibcInputHandler;->isActiveUIBC()Z

    move-result v1

    const-string/jumbo v2, "SemUibcInputHandler.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UIBC Active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemUibcInputHandler.java"

    const-string/jumbo v3, "NoSuchMethod - mWfdSinkManager.isActiveUIBC()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native isActiveUIBC()Z
.end method

.method private static native keyDown(II)V
.end method

.method private static native keyDownASCII(II)V
.end method

.method private static native keyUp(II)V
.end method

.method private static native keyUpASCII(II)V
.end method

.method private static native rotate(II)V
.end method

.method private static native scroll(FF)V
.end method

.method private static native touchDown(I[I[I[I)V
.end method

.method private static native touchMove(I[I[I[I)V
.end method

.method private static native touchUp(I[I[I[I)V
.end method
