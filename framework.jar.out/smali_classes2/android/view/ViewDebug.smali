.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$DumpZ;,
        Landroid/view/ViewDebug$ExportedProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$ViewOperation;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field public static final DEBUG_POSITIONING:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final REMOTE_COMMAND_DUMP_Z:Ljava/lang/String; = "DUMPZ"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v8, 0x0

    instance-of v9, p1, Landroid/view/View;

    if-nez v9, :cond_0

    nop

    nop

    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_0
    move-object v7, p1

    nop

    nop

    new-instance v0, Landroid/view/ViewDebug$8;

    invoke-direct {v0, p0, v7}, Landroid/view/ViewDebug$8;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    new-instance v4, Ljava/util/concurrent/FutureTask;

    invoke-direct {v4, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v7}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const-wide/16 v8, 0xfa0

    :try_start_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v10}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v2

    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unexpected cancellation exception"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/IllegalAccessException;

    if-eqz v8, :cond_2

    nop

    nop

    throw v6

    :cond_2
    instance-of v8, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v8, :cond_3

    nop

    nop

    throw v6

    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unexpected exception"

    invoke-direct {v8, v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "View"

    const-string/jumbo v4, "Failed to create capture bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    throw v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    move v6, p2

    :goto_0
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    if-eqz v6, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v10, 0x2

    new-array v9, v10, [I

    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v10, 0x0

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    const/4 v10, 0x1

    invoke-static {p0, v10}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    :cond_2
    instance-of v10, p0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    move-object v3, p0

    nop

    nop

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    iget-object v10, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    iget-object v8, v10, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v8, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    :cond_6
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v8, "null"

    return-object v8

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v0, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    aget-object v2, v4, v5

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\n"

    const-string/jumbo v10, "\\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v12, "null"

    return-object v12

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v1, v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v7, v4

    const/4 v12, 0x0

    :try_start_0
    nop

    nop

    invoke-virtual {v5, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v12, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-interface {v8}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v9, v12}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "()="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, "\\n"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v12, "; "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    const-string/jumbo v12, "null"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v5, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v0, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v1, v2, v4

    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v0, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, v5, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string/jumbo v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v3, v4, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "dump_s"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v3, v4, p3}, Landroid/view/ViewDebug;->dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "DUMP_THEME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "DUMPZ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p3}, Landroid/view/ViewDebug$DumpZ;->-wrap0(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, p3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, v9

    nop

    nop

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    :cond_0
    const-string/jumbo v1, "DONE."

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    move-object v3, v8

    :goto_1
    :try_start_2
    const-string/jumbo v1, "View"

    const-string/jumbo v4, "Problem dumping the view:"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v8

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V
    .locals 3

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/IGLViewGroup;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/view/IGLViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/IGLViewGroup;

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, Landroid/view/ViewDebug;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Landroid/view/IGLView;

    if-eqz v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V
    .locals 3

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/IGLContext;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/IGLContext;

    invoke-interface {v1}, Landroid/view/IGLContext;->getGLRootView()Landroid/view/IGLViewGroup;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, Landroid/view/ViewDebug;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    :cond_1
    return-void
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v6, 0x8000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    aget-object v5, v0, v2

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "DONE."

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    const-string/jumbo v5, "View"

    const-string/jumbo v6, "Problem dumping View Theme:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private static dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z
    .locals 5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "ViewOverlay"

    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    if-eqz p4, :cond_2

    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "View"

    const-string/jumbo v4, "Error while dumping hierarchy tree"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 10

    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v1, v9

    nop

    nop

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    :goto_1
    iget-object v0, v9, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v8

    iget-object v1, v8, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    instance-of v0, v9, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_4

    move-object v0, v9

    nop

    nop

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p5}, Landroid/view/ViewDebug;->dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v9, p2, v0, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    :cond_6
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=4,null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    return-void
.end method

.method public static dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 239
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v85, 0x0

    const/16 v170, 0x0

    const/16 v190, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v234

    const-string/jumbo v235, "power"

    invoke-virtual/range {v234 .. v235}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v179

    check-cast v179, Landroid/os/PowerManager;

    invoke-virtual/range {v179 .. v179}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v190

    const/16 v120, 0x0

    new-instance v172, Ljava/lang/StringBuilder;

    invoke-direct/range {v172 .. v172}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v159, 0x3

    const/16 v204, 0x0

    const/16 v202, 0x0

    const/16 v50, 0x0

    const/16 v46, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v44, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v31, 0x0

    const/16 v29, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v35, 0x0

    const/16 v33, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v105, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/16 v173, 0x0

    const/16 v26, 0x0

    const/16 v38, 0x0

    const/16 v136, 0x0

    const/16 v111, 0x0

    const/16 v110, 0x0

    const/16 v64, 0x0

    new-instance v195, Ljava/util/ArrayList;

    invoke-direct/range {v195 .. v195}, Ljava/util/ArrayList;-><init>()V

    new-instance v222, Ljava/util/ArrayList;

    invoke-direct/range {v222 .. v222}, Ljava/util/ArrayList;-><init>()V

    new-instance v95, Ljava/util/Hashtable;

    invoke-direct/range {v95 .. v95}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v50

    move-object/from16 v0, v50

    nop

    nop

    move-object/from16 v234, v0

    invoke-virtual/range {v234 .. v234}, Landroid/view/View;->getVisibility()I

    move-result v234

    if-nez v234, :cond_0

    move-object/from16 v0, v195

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    const/16 v235, 0x0

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Stack Size : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    if-lez v234, :cond_70

    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    add-int/lit8 v84, v234, -0x1

    move-object/from16 v0, v195

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v50

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v94

    move-object/from16 v0, v222

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v234, v0

    if-eqz v234, :cond_3

    move-object/from16 v0, v50

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v220, v0

    invoke-virtual/range {v220 .. v220}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v234

    add-int/lit8 v80, v234, -0x1

    :goto_1
    if-ltz v80, :cond_1

    move-object/from16 v0, v220

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v205

    invoke-virtual/range {v205 .. v205}, Landroid/view/View;->getVisibility()I

    move-result v234

    if-nez v234, :cond_2

    const-string/jumbo v234, "TDK"

    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v195

    move-object/from16 v1, v205

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v80, v80, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeSurfaceView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_2d

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Inside Home Surface View "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v234, Landroid/view/SurfaceView;

    const-string/jumbo v235, "mCallbacks"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v109

    const/16 v234, 0x1

    move-object/from16 v0, v109

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v109

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v201

    if-eqz v201, :cond_1

    move-object/from16 v0, v201

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v100, v0

    invoke-interface/range {v100 .. v100}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v169

    :cond_4
    :goto_2
    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_1

    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v168

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_4

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mVisibleFragmentId"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v49

    const/16 v234, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v49

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v147

    if-nez v147, :cond_15

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mHomeFragment"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v125

    const/16 v234, 0x1

    move-object/from16 v0, v125

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v125

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v126

    const/16 v234, 0x1

    move-object/from16 v0, v126

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v126

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v79

    :try_start_2
    invoke-virtual/range {v79 .. v79}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mFolderPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v119

    const/16 v234, 0x1

    move-object/from16 v0, v119

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v119

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v124

    const/16 v25, 0x0

    invoke-virtual/range {v124 .. v124}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_3
    if-eqz v176, :cond_5

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "FolderPresenterBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_6

    move-object/from16 v25, v176

    :cond_5
    if-eqz v25, :cond_a

    const-string/jumbo v234, "getActiveOpenFolderView"

    const/16 v235, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v69

    const/16 v234, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v124

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string/jumbo v234, "getActiveFolderItem"

    const/16 v235, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v68

    const/16 v234, 0x1

    move-object/from16 v0, v68

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v124

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    if-nez v36, :cond_8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_4
    if-eqz v176, :cond_4

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_7

    move-object/from16 v36, v176

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_3

    :cond_7
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_4

    :cond_8
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_4

    move-object/from16 v0, v195

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v60

    :try_start_3
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting home fragment items : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v60

    :try_start_4
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception in get mCallbacks"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v52

    :goto_5
    :try_start_5
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Problem dumping the view:"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v170, :cond_9

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedWriter;->close()V

    :cond_9
    :goto_6
    return-void

    :cond_a
    :try_start_6
    invoke-virtual/range {v79 .. v79}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mPagePresenters"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v131

    const/16 v234, 0x1

    move-object/from16 v0, v131

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v131

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v174

    invoke-virtual/range {v79 .. v79}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTopFivePresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v146

    const/16 v234, 0x1

    move-object/from16 v0, v146

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v146

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v164

    invoke-virtual/range {v164 .. v164}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAdapter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v199

    const/16 v234, 0x1

    move-object/from16 v0, v199

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v199

    move-object/from16 v1, v164

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v162

    const/16 v16, 0x0

    const/16 v215, 0x0

    :try_start_7
    invoke-virtual/range {v162 .. v162}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getItems"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v162

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/List;

    move-object/from16 v215, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    :try_start_8
    move-object/from16 v0, v174

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v15, v0

    const/16 v80, 0x0

    :goto_8
    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v234

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_13

    const/16 v37, 0x0

    const/16 v234, 0x0

    move/from16 v0, v234

    invoke-virtual {v15, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeZeroPagePresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_d

    const/16 v234, 0x0

    move/from16 v0, v234

    invoke-virtual {v15, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v37

    :goto_9
    :try_start_9
    const-string/jumbo v234, "getItems"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v154

    const/16 v234, 0x1

    move-object/from16 v0, v154

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move/from16 v0, v80

    invoke-virtual {v15, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v154

    move-object/from16 v1, v235

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v197

    move-object/from16 v0, v197

    check-cast v0, Ljava/util/List;

    move-object v7, v0

    if-nez v35, :cond_f

    const/16 v234, 0x0

    move/from16 v0, v234

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_a
    if-eqz v176, :cond_b

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v234

    if-eqz v234, :cond_e

    move-object/from16 v35, v176

    :cond_b
    :goto_b
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_8

    :catch_3
    move-exception v60

    :try_start_a
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception in adapterlist "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v234

    :goto_c
    if-eqz v170, :cond_c

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedWriter;->close()V

    :cond_c
    throw v234

    :cond_d
    const/16 v234, 0x0

    :try_start_b
    move/from16 v0, v234

    invoke-virtual {v15, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v37

    goto/16 :goto_9

    :cond_e
    :try_start_c
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_a

    :cond_f
    const/16 v92, 0x0

    :goto_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v92

    move/from16 v1, v234

    if-ge v0, v1, :cond_b

    const-string/jumbo v234, "getItemView"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move/from16 v0, v92

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v70

    move-object/from16 v1, v235

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v78

    if-nez v36, :cond_12

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_e
    if-eqz v176, :cond_10

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_11

    move-object/from16 v36, v176

    :cond_10
    :goto_f
    add-int/lit8 v92, v92, 0x1

    goto :goto_d

    :cond_11
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_e

    :cond_12
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_10

    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_f

    :catch_4
    move-exception v52

    :try_start_d
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception in get mCallbacks"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_13
    if-eqz v35, :cond_4

    const/16 v92, 0x0

    :goto_10
    invoke-interface/range {v215 .. v215}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v92

    move/from16 v1, v234

    if-ge v0, v1, :cond_4

    const-string/jumbo v234, "getItemView"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v215

    move/from16 v1, v92

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v70

    move-object/from16 v1, v235

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v78

    if-eqz v36, :cond_14

    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_14

    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_14
    add-int/lit8 v92, v92, 0x1

    goto/16 :goto_10

    :cond_15
    const/16 v234, 0x1

    move/from16 v0, v147

    move/from16 v1, v234

    if-ne v0, v1, :cond_27

    :try_start_e
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAppsFragment"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v107

    const/16 v234, 0x1

    move-object/from16 v0, v107

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v107

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAppsPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v108

    const/16 v234, 0x1

    move-object/from16 v0, v108

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v108

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v12

    const/16 v66, 0x0

    const/4 v13, 0x0

    :try_start_f
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mFolderPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v119

    const/16 v234, 0x1

    move-object/from16 v0, v119

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v119

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/16 v25, 0x0

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_11
    if-eqz v176, :cond_16

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "FolderPresenterBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_18

    move-object/from16 v25, v176

    :cond_16
    const/4 v10, 0x0

    if-eqz v25, :cond_17

    const-string/jumbo v234, "getActiveOpenFolderView"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v69

    const/16 v234, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v69

    move-object/from16 v1, v234

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :cond_17
    if-eqz v10, :cond_1b

    const-string/jumbo v234, "getActiveFolderItem"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v68

    const/16 v234, 0x1

    move-object/from16 v0, v68

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v68

    move-object/from16 v1, v234

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    if-nez v36, :cond_1a

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_12
    if-eqz v176, :cond_4

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_19

    move-object/from16 v36, v176

    goto/16 :goto_2

    :cond_18
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_11

    :cond_19
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_12

    :cond_1a
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_4

    move-object/from16 v0, v195

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v60

    :try_start_10
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, " Exception while getting folder item "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    :cond_1b
    :try_start_11
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getFolderItems"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v234

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/util/List;

    move-object/from16 v66, v0

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, " Found folder item list "

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v80, 0x0

    :goto_13
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_4

    if-nez v35, :cond_1f

    move-object/from16 v0, v66

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_14
    if-eqz v176, :cond_1c

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_1e

    move-object/from16 v35, v176

    :cond_1c
    :goto_15
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mItemList"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v127

    const/16 v234, 0x1

    move-object/from16 v0, v127

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v127

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/HashSet;

    invoke-interface/range {v88 .. v88}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v194

    :cond_1d
    :goto_16
    invoke-interface/range {v194 .. v194}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_26

    invoke-interface/range {v194 .. v194}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v193

    if-nez v35, :cond_23

    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_17
    if-eqz v176, :cond_1d

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_22

    move-object/from16 v35, v176

    goto :goto_16

    :cond_1e
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_14

    :cond_1f
    const-string/jumbo v234, "getItemView"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v66

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v70

    move-object/from16 v1, v235

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v78

    if-nez v36, :cond_21

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_18
    if-eqz v176, :cond_1c

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_20

    move-object/from16 v36, v176

    goto/16 :goto_15

    :cond_20
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_18

    :cond_21
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_1c

    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    :cond_22
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_17

    :cond_23
    const-string/jumbo v234, "getItemView"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v70

    move-object/from16 v1, v193

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v78

    if-nez v36, :cond_25

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_19
    if-eqz v176, :cond_1d

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_24

    move-object/from16 v36, v176

    goto/16 :goto_16

    :cond_24
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_19

    :cond_25
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_1d

    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_16

    :cond_26
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_13

    :cond_27
    const/16 v234, 0x2

    move/from16 v0, v147

    move/from16 v1, v234

    if-ne v0, v1, :cond_4

    :try_start_12
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidgetsFragment"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v148

    const/16 v234, 0x1

    move-object/from16 v0, v148

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v148

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v229

    invoke-virtual/range {v229 .. v229}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidgetsPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v149

    const/16 v234, 0x1

    move-object/from16 v0, v149

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v149

    move-object/from16 v1, v229

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v230

    invoke-virtual/range {v230 .. v230}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidgetItemList"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v127

    const/16 v234, 0x1

    move-object/from16 v0, v127

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v127

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Ljava/util/List;

    const/16 v80, 0x0

    :goto_1a
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_4

    if-nez v35, :cond_2a

    move-object/from16 v0, v89

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_1b
    if-eqz v176, :cond_28

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_29

    move-object/from16 v35, v176

    :cond_28
    :goto_1c
    add-int/lit8 v80, v80, 0x1

    goto :goto_1a

    :cond_29
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_1b

    :cond_2a
    const-string/jumbo v234, "getItemView"

    const/16 v235, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v89

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    const/16 v235, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v78

    if-nez v36, :cond_2c

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_1d
    if-eqz v176, :cond_28

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_2b

    move-object/from16 v36, v176

    goto :goto_1c

    :cond_2b
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_1d

    :cond_2c
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_28

    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1c

    :cond_2d
    if-eqz v34, :cond_38

    if-eqz v105, :cond_38

    :try_start_13
    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result v234

    if-eqz v234, :cond_38

    const/4 v9, 0x0

    :try_start_14
    const-string/jumbo v234, "mTitleView"

    move-object/from16 v0, v34

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v144

    const/16 v234, 0x1

    move-object/from16 v0, v144

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v144

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v9

    :goto_1e
    const/16 v24, 0x0

    :try_start_15
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_1f
    if-eqz v176, :cond_2e

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "FolderItem"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_30

    move-object/from16 v24, v176

    :cond_2e
    if-eqz v24, :cond_2f

    const-string/jumbo v234, "getItems"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v234

    const/16 v235, 0x0

    move-object/from16 v0, v234

    move-object/from16 v1, v105

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Ljava/util/List;

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Folder Item Size : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-interface/range {v91 .. v91}, Ljava/util/List;->size()I

    move-result v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v35, :cond_32

    const/16 v234, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v234

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_20
    if-eqz v176, :cond_2f

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_31

    move-object/from16 v35, v176

    :cond_2f
    if-eqz v36, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_1

    move-object/from16 v0, v195

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_0

    :catch_6
    move-exception v61

    :try_start_16
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such field in Home open folder view"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    :cond_30
    :try_start_17
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_1f

    :cond_31
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_20

    :cond_32
    const/16 v92, 0x0

    :goto_21
    invoke-interface/range {v91 .. v91}, Ljava/util/List;->size()I
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result v234

    move/from16 v0, v92

    move/from16 v1, v234

    if-ge v0, v1, :cond_2f

    const/16 v78, 0x0

    :try_start_18
    const-string/jumbo v234, "getItemView"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-interface/range {v91 .. v92}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v70

    move-object/from16 v1, v235

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v78

    :goto_22
    if-eqz v78, :cond_35

    :try_start_19
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Folder Item Object"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_33

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeItemView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_33

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    :cond_33
    if-nez v32, :cond_34

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeFolderView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_34

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    :cond_34
    if-nez v36, :cond_37

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_23
    if-eqz v176, :cond_35

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_36

    move-object/from16 v36, v176

    :cond_35
    :goto_24
    add-int/lit8 v92, v92, 0x1

    goto/16 :goto_21

    :catch_7
    move-exception v62

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting ItemView"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_22

    :catch_8
    move-exception v60

    :try_start_1a
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception in Home open folder view"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_0

    :cond_36
    :try_start_1b
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_23

    :cond_37
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_35

    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_24

    :cond_38
    if-eqz v33, :cond_39

    :try_start_1c
    move-object/from16 v0, v33

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_1

    :cond_39
    if-eqz v32, :cond_3a

    move-object/from16 v0, v32

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_1

    :cond_3a
    if-eqz v39, :cond_3b

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_1

    :cond_3b
    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    move/from16 v234, v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v234, :cond_5c

    :try_start_1d
    move-object/from16 v0, v50

    check-cast v0, Landroid/view/View;

    move-object/from16 v234, v0

    invoke-virtual/range {v234 .. v234}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v202

    const-class v234, Landroid/opengl/GLSurfaceView;

    const-string/jumbo v235, "mRenderer"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v200

    const-string/jumbo v234, "TDK"

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "com.sec.samsung.gallery.glview.GlRootView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_3c

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "com.sec.android.gallery3d.glcore.GlRootView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-result v234

    if-eqz v234, :cond_4f

    :cond_3c
    :try_start_1e
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mContentView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-result-object v116

    :goto_25
    if-eqz v116, :cond_3e

    :try_start_1f
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Got mContentView : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ", simple name : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v195

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v26, :cond_1

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_26
    if-eqz v176, :cond_1

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_3d

    move-object/from16 v26, v176

    goto/16 :goto_0

    :catch_9
    move-exception v52

    const/16 v116, 0x0

    goto/16 :goto_25

    :cond_3d
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result-object v176

    goto :goto_26

    :cond_3e
    :try_start_20
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mGLObjectZ"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v120, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v201

    if-eqz v201, :cond_46

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "What: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v201

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v101, v0

    invoke-interface/range {v101 .. v101}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v169

    :cond_3f
    :goto_27
    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_41

    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v168

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Array: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v29, :cond_40

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_28
    if-eqz v176, :cond_40

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_45

    move-object/from16 v29, v176

    :cond_40
    if-eqz v29, :cond_3f

    const-string/jumbo v234, "getVisibility"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v234

    if-eqz v234, :cond_3f

    move-object/from16 v0, v195

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20 .. :try_end_20} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_20} :catch_b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_27

    :catch_a
    move-exception v53

    :try_start_21
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, " No such field"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_29
    if-nez v120, :cond_1

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mRootObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v201

    if-eqz v201, :cond_1

    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mChildCount"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v23

    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mChild"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, [Ljava/lang/Object;

    add-int/lit8 v80, v23, -0x1

    :goto_2a
    if-ltz v80, :cond_1

    aget-object v168, v102, v80

    if-eqz v168, :cond_44

    if-nez v29, :cond_42

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_2b
    if-eqz v176, :cond_42

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_47

    move-object/from16 v29, v176

    :cond_42
    const-string/jumbo v234, "mState"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v196

    const/16 v234, 0x1

    move/from16 v0, v196

    move/from16 v1, v234

    if-ne v0, v1, :cond_44

    const-string/jumbo v234, "getVisibility"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v234

    if-eqz v234, :cond_44

    move-object/from16 v0, v195

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "GlObject class name "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlThumbObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_43

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlReorderObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_48

    :cond_43
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v27

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "GlObject super class name "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v234, "getChildTextObject"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v113

    if-eqz v113, :cond_44

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "GlObject >> Text obj class name >> "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v195

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :cond_44
    add-int/lit8 v80, v80, -0x1

    goto/16 :goto_2a

    :cond_45
    :try_start_22
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_28

    :cond_46
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "mGLObjectZ is null"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_22 .. :try_end_22} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_22} :catch_b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_29

    :catch_b
    move-exception v55

    :try_start_23
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, " No such field"

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_29

    :catch_c
    move-exception v52

    :try_start_24
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Problem: "

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_0

    :cond_47
    :try_start_25
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_2b

    :cond_48
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlComposeObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_44

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mChild"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, [Ljava/lang/Object;

    move-object/from16 v0, v98

    array-length v0, v0

    move/from16 v234, v0

    add-int/lit8 v93, v234, -0x1

    :goto_2c
    if-ltz v93, :cond_44

    aget-object v22, v98, v93

    if-eqz v22, :cond_4e

    const-string/jumbo v234, "mState"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v196

    const/16 v234, 0x1

    move/from16 v0, v196

    move/from16 v1, v234

    if-ne v0, v1, :cond_4e

    const-string/jumbo v234, "getVisibility"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v22

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v234

    if-eqz v234, :cond_4e

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GroupObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_4e

    const-string/jumbo v234, "mChild"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, [Ljava/lang/Object;

    move-object/from16 v0, v103

    array-length v0, v0

    move/from16 v234, v0

    add-int/lit8 v92, v234, -0x1

    :goto_2d
    if-ltz v92, :cond_4e

    aget-object v210, v103, v92

    if-eqz v210, :cond_4d

    const-string/jumbo v234, "mState"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v196

    const/16 v234, 0x1

    move/from16 v0, v196

    move/from16 v1, v234

    if-ne v0, v1, :cond_4d

    const-string/jumbo v234, "getVisibility"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v210

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v234

    if-eqz v234, :cond_49

    move-object/from16 v0, v195

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "ThumbObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-result v234

    if-eqz v234, :cond_4d

    const/16 v213, 0x0

    if-eqz v85, :cond_4b

    :try_start_26
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v65

    const/16 v228, 0x0

    :goto_2e
    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v228

    move/from16 v1, v234

    if-ge v0, v1, :cond_4a

    aget-object v234, v65, v228

    const/16 v235, 0x1

    invoke-virtual/range {v234 .. v235}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> thumbObj field >> "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v65, v228

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, " "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v65, v228

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, " "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v65, v228

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v228, v228, 0x1

    goto :goto_2e

    :cond_4a
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v65

    const/16 v228, 0x0

    :goto_2f
    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v228

    move/from16 v1, v234

    if-ge v0, v1, :cond_4b

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> thumbObj field >> "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v65, v228

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, " "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v65, v228

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, " "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v65, v228

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v228, v228, 0x1

    goto :goto_2f

    :cond_4b
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitleObj"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v213

    if-eqz v213, :cond_4c

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> Got title object >> "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v213 .. v213}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v234, "getVisibility"

    const/16 v235, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v234

    const/16 v235, 0x0

    move-object/from16 v0, v234

    move-object/from16 v1, v213

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v234

    if-eqz v234, :cond_4c

    move-object/from16 v0, v195

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v213 .. v213}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v213 .. v213}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    :cond_4c
    :goto_30
    if-nez v213, :cond_4d

    :try_start_27
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Checking for album title"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAlbumTitleObj"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v213

    if-eqz v213, :cond_4d

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> Got title object >> "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v213 .. v213}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v234, "getVisibility"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v213

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v234

    if-eqz v234, :cond_4d

    move-object/from16 v0, v195

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v213 .. v213}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v213 .. v213}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/NoSuchFieldException; {:try_start_27 .. :try_end_27} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_27} :catch_f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :cond_4d
    :goto_31
    add-int/lit8 v92, v92, -0x1

    goto/16 :goto_2d

    :catch_d
    move-exception v52

    :try_start_28
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception in getting mTitleObj "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    :catch_e
    move-exception v52

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception for text title>> "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_f
    move-exception v63

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No mTitle field "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_10
    move-exception v61

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No mTitle field "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_4e
    add-int/lit8 v93, v93, -0x1

    goto/16 :goto_2c

    :cond_4f
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLContext"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_58

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mRootView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v135

    invoke-virtual/range {v135 .. v135}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_c
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    move-result-object v45

    :try_start_29
    const-string/jumbo v234, "mClipRect"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/graphics/Rect;

    if-eqz v114, :cond_50

    if-nez v111, :cond_50

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v234, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v235, v0

    sub-int v111, v234, v235

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v234, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v235, v0
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_29} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_29} :catch_11
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_c
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    sub-int v110, v234, v235

    :cond_50
    :goto_32
    :try_start_2a
    move-object/from16 v0, v195

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v135 .. v135}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v135 .. v135}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    add-int/lit8 v203, v234, -0x1

    :cond_51
    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    move/from16 v0, v234

    move/from16 v1, v203

    if-le v0, v1, :cond_1

    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    add-int/lit8 v84, v234, -0x1

    move-object/from16 v0, v195

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v50

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v96

    move-object/from16 v0, v222

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v46, :cond_51

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_51

    const-string/jumbo v234, "mGLViews"

    move-object/from16 v0, v46

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Ljava/util/List;

    invoke-interface/range {v99 .. v99}, Ljava/util/List;->size()I

    move-result v234

    add-int/lit8 v80, v234, -0x1

    :goto_33
    if-ltz v80, :cond_51

    move-object/from16 v0, v99

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v207

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "class Name*** "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v40, :cond_52

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLButton"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_52

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    :cond_52
    if-nez v44, :cond_53

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLText"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_53

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    :cond_53
    if-nez v41, :cond_54

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLItem"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_54

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v41

    :cond_54
    if-nez v42, :cond_55

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLItemDataCheckbox"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_55

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    :cond_55
    if-nez v43, :cond_56

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLModeSwitchButton"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_56

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    :cond_56
    const-string/jumbo v234, "mVisibility"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    and-int/lit8 v234, v234, 0xc

    if-nez v234, :cond_57

    move-object/from16 v0, v195

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v96, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    add-int/lit8 v80, v80, -0x1

    goto/16 :goto_33

    :catch_11
    move-exception v63

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such field mClipRect "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :catch_12
    move-exception v61

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such field mClipRect "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_58
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "com.sec.android.gallery3d.ui.GLRootView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_5b

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mContentView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v116

    if-eqz v116, :cond_59

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, ">> In second test inside gallery 3D: "

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v195

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    if-nez v26, :cond_1

    if-eqz v116, :cond_1

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_34
    if-eqz v176, :cond_1

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_5a

    move-object/from16 v26, v176

    goto/16 :goto_0

    :cond_5a
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_34

    :cond_5b
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> Unknown class in GLSurfaceView: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_c
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto/16 :goto_0

    :cond_5c
    :try_start_2b
    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/view/View;

    move/from16 v234, v0

    if-nez v234, :cond_1

    if-eqz v29, :cond_60

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_60

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "instance of GlObject : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v234, "getView"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v50

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v122

    if-eqz v122, :cond_5f

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "got GlView: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v195

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v31, :cond_5d

    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_35
    if-eqz v176, :cond_5d

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_5e

    move-object/from16 v31, v176

    :cond_5d
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "got classGlView: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5e
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_35

    :cond_5f
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "got GlView: mGlView is null"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_60
    if-eqz v31, :cond_63

    move-object/from16 v0, v31

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_63

    if-nez v30, :cond_61

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlTextView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_61

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Got ClassGlTextView : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    if-nez v28, :cond_62

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlImageView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_62

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Got classGlImageView : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "instance of GlView : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v234, "getChildCount"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v50

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Child Count :  "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v80, v21, -0x1

    :goto_36
    if-ltz v80, :cond_1

    const-string/jumbo v234, "getChild"

    const/16 v235, 0x1

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    sget-object v236, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v237, 0x0

    aput-object v236, v235, v237

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v234

    const/16 v235, 0x1

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v235, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v236

    const/16 v237, 0x0

    aput-object v236, v235, v237

    move-object/from16 v0, v234

    move-object/from16 v1, v50

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v195

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v80, v80, -0x1

    goto :goto_36

    :cond_63
    if-eqz v26, :cond_6f

    move-object/from16 v0, v26

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_6f

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "FilmStripView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    move-result v234

    if-eqz v234, :cond_64

    :try_start_2c
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAlbumView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v106

    const/16 v234, 0x1

    move-object/from16 v0, v106

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v106

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, v195

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_2c} :catch_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2c .. :try_end_2c} :catch_14
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto/16 :goto_0

    :catch_13
    move-exception v55

    :try_start_2d
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mAlbumView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_14
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mAlbumView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_64
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "AlbumView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_65

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "AlbumSetView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_6c

    :cond_65
    if-nez v38, :cond_66

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    :goto_37
    if-eqz v176, :cond_66

    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "SlotView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_68

    move-object/from16 v38, v176

    :cond_66
    if-eqz v38, :cond_1

    new-instance v212, Ljava/util/HashMap;

    invoke-direct/range {v212 .. v212}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v234, "mItems"

    move-object/from16 v0, v38

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v128

    const/16 v234, 0x1

    move-object/from16 v0, v128

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v128

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Ljava/util/HashMap;

    invoke-virtual/range {v90 .. v90}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v86

    :cond_67
    :goto_38
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_6a

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v235

    const/16 v234, 0x0

    move-object/from16 v0, v235

    array-length v0, v0

    move/from16 v236, v0

    :goto_39
    move/from16 v0, v234

    move/from16 v1, v236

    if-ge v0, v1, :cond_67

    aget-object v209, v235, v234

    const/16 v237, 0x1

    move-object/from16 v0, v209

    move/from16 v1, v237

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v209

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v214

    invoke-virtual/range {v214 .. v214}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v237

    invoke-virtual/range {v237 .. v237}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v237

    const-string/jumbo v238, "LabelDisplayItem"

    invoke-virtual/range {v237 .. v238}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    move-result v237

    if-eqz v237, :cond_69

    :try_start_2e
    invoke-virtual/range {v214 .. v214}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitle"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v143

    const/16 v234, 0x1

    move-object/from16 v0, v143

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v143

    move-object/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Ljava/lang/String;

    invoke-virtual/range {v214 .. v214}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mSlotIndex"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v139

    const/16 v234, 0x1

    move-object/from16 v0, v139

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v139

    move-object/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v83

    invoke-virtual/range {v214 .. v214}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mCount"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v117

    const/16 v234, 0x1

    move-object/from16 v0, v117

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v117

    move-object/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v234

    new-instance v235, Landroid/util/Pair;

    move-object/from16 v0, v235

    move-object/from16 v1, v211

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v212

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_2e} :catch_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2e .. :try_end_2e} :catch_16
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto/16 :goto_38

    :catch_15
    move-exception v55

    :try_start_2f
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mTitle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    :cond_68
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_37

    :catch_16
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mTitle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto/16 :goto_38

    :cond_69
    add-int/lit8 v234, v234, 0x1

    goto/16 :goto_39

    :cond_6a
    const/16 v191, 0x0

    const/16 v192, 0x0

    :try_start_30
    const-string/jumbo v234, "mScrollX"

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v137

    const/16 v234, 0x1

    move-object/from16 v0, v137

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v137

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v191

    const-string/jumbo v234, "mScrollY"

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v138

    const/16 v234, 0x1

    move-object/from16 v0, v138

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v138

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_30} :catch_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_30 .. :try_end_30} :catch_17
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    move-result v192

    :goto_3a
    :try_start_31
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "mScrollX/mScrollY: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ", "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move/from16 v1, v192

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_2
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    :try_start_32
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getVisibleStart"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v74

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getVisibleEnd"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v73

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getSlotRect"

    const/16 v236, 0x1

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    sget-object v237, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v238, 0x0

    aput-object v237, v236, v238

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v71

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v74

    move-object/from16 v1, v50

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v157

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v73

    move-object/from16 v1, v50

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v156

    add-int/lit8 v80, v156, -0x1

    :goto_3b
    move/from16 v0, v80

    move/from16 v1, v157

    if-lt v0, v1, :cond_1

    const/16 v234, 0x1

    move/from16 v0, v234

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v234, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    const/16 v236, 0x0

    aput-object v235, v234, v236

    move-object/from16 v0, v71

    move-object/from16 v1, v50

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/graphics/Rect;

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v234, v0

    sub-int v234, v234, v191

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v235, v0

    sub-int v235, v235, v192

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v236, v0

    sub-int v236, v236, v191

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v237, v0

    sub-int v237, v237, v192

    move-object/from16 v0, v186

    move/from16 v1, v234

    move/from16 v2, v235

    move/from16 v3, v236

    move/from16 v4, v237

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v158, Ljava/lang/StringBuilder;

    invoke-direct/range {v158 .. v158}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v204, "Slot"

    const-string/jumbo v234, "class="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v234

    add-int v234, v234, v80

    add-int/lit8 v234, v234, 0x1

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hash="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "enable="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "pos_relative="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v232, v0

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v233, v0

    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->width()I

    move-result v231

    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->height()I

    move-result v76

    const-string/jumbo v234, "x="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "y="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "width="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v231

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v231

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "height="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v234

    move-object/from16 v0, v212

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_6b

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v234

    move-object/from16 v0, v212

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v175

    check-cast v175, Landroid/util/Pair;

    move-object/from16 v0, v175

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v234, v0

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    const-string/jumbo v234, "text="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v175

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v234, v0

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    const-string/jumbo v234, "entry="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    const-string/jumbo v204, "true"

    const-string/jumbo v234, "clickable="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "touchable="

    move-object/from16 v0, v158

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v158 .. v158}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    move-object/from16 v0, v195

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v204 .. v204}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_32} :catch_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_32} :catch_19
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_2
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    add-int/lit8 v80, v80, -0x1

    goto/16 :goto_3b

    :catch_17
    move-exception v53

    :try_start_33
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    :catch_18
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    :catch_19
    move-exception v54

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mAlbumView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1a
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mAlbumView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_2
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto/16 :goto_0

    :cond_6c
    :try_start_34
    const-string/jumbo v234, "mComponents"

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v115

    const/16 v234, 0x1

    move-object/from16 v0, v115

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v115

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Ljava/util/ArrayList;
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_34} :catch_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_34 .. :try_end_34} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_2
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    if-eqz v97, :cond_1

    :try_start_35
    const-string/jumbo v234, "getVisibility"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v72

    const/16 v234, 0x1

    move-object/from16 v0, v72

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v188, Ljava/util/ArrayList;

    invoke-direct/range {v188 .. v188}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v97 .. v97}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v161

    :goto_3c
    invoke-interface/range {v161 .. v161}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_6d

    invoke-interface/range {v161 .. v161}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v160

    const/16 v234, 0x0

    move-object/from16 v0, v188

    move/from16 v1, v234

    move-object/from16 v2, v160

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_35} :catch_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_35} :catch_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_35 .. :try_end_35} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_2
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    goto :goto_3c

    :catch_1b
    move-exception v55

    :try_start_36
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: getVisibility"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_36} :catch_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_36 .. :try_end_36} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_2
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    goto/16 :goto_0

    :catch_1c
    move-exception v55

    :try_start_37
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mComponents"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_2
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto/16 :goto_0

    :cond_6d
    :try_start_38
    invoke-interface/range {v188 .. v188}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v161

    :cond_6e
    :goto_3d
    invoke-interface/range {v161 .. v161}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_1

    invoke-interface/range {v161 .. v161}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v160

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v72

    move-object/from16 v1, v160

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v226

    if-nez v226, :cond_6e

    move-object/from16 v0, v195

    move-object/from16 v1, v160

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v160 .. v160}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v160 .. v160}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    add-int/lit8 v235, v94, 0x1

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_38} :catch_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_38} :catch_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_38} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_2
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    goto :goto_3d

    :catch_1d
    move-exception v54

    :try_start_39
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: getVisibility"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_39} :catch_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_39 .. :try_end_39} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_2
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    goto/16 :goto_0

    :catch_1e
    move-exception v53

    :try_start_3a
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mComponents"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6f
    move-object/from16 v0, v50

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v234, v0

    if-nez v234, :cond_1

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "!!!!!!!!!! In while Unknown classes: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_70
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, ">> Start traversing the viewList!"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v216, 0x0

    const/16 v180, -0x1

    const/16 v181, -0x1

    invoke-interface/range {v222 .. v222}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v169

    :cond_71
    :goto_3e
    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_c0

    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v168

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    move-object/from16 v0, v95

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v94

    if-eqz v216, :cond_72

    const/16 v216, 0x0

    move/from16 v0, v94

    move/from16 v1, v180

    if-le v0, v1, :cond_72

    move/from16 v94, v180

    :cond_72
    move/from16 v0, v94

    move/from16 v1, v181

    if-le v0, v1, :cond_73

    sub-int v234, v94, v181

    const/16 v235, 0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-le v0, v1, :cond_73

    add-int/lit8 v94, v181, 0x1

    :cond_73
    const/16 v80, 0x0

    :goto_3f
    move/from16 v0, v80

    move/from16 v1, v94

    if-ge v0, v1, :cond_74

    const/16 v234, 0x20

    move-object/from16 v0, v172

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v80, v80, 0x1

    goto :goto_3f

    :cond_74
    move/from16 v181, v94

    if-nez v94, :cond_75

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v219

    invoke-virtual/range {v219 .. v219}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "package="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v173, v204

    invoke-virtual/range {v219 .. v219}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "activity="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v234

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "screenon="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v136

    :cond_75
    move-object/from16 v0, v168

    instance-of v0, v0, Landroid/view/View;

    move/from16 v234, v0

    if-eqz v234, :cond_98

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "ViewList: (View) "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "class="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hash="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v168

    check-cast v0, Landroid/view/View;

    move-object/from16 v218, v0

    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getId()I

    move-result v81

    if-ltz v81, :cond_78

    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_2
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    move-result-object v202

    :try_start_3b
    move-object/from16 v0, v202

    move/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_77

    :goto_40
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_76

    const/16 v234, 0xa

    const/16 v235, 0x3

    move-object/from16 v0, v204

    move/from16 v1, v234

    move/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v204

    goto :goto_40

    :cond_76
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    const-string/jumbo v234, "id="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_59
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_2
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    :cond_78
    :goto_41
    const/16 v234, 0x2

    :try_start_3c
    move/from16 v0, v234

    new-array v0, v0, [I

    move-object/from16 v104, v0

    move-object/from16 v0, v218

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v234, 0x0

    aget v234, v104, v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v234, 0x1

    aget v234, v104, v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v111, :cond_8e

    move/from16 v0, v111

    move/from16 v1, v136

    if-le v0, v1, :cond_8e

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLSurfaceView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_8e

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v234

    move/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v234

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v234

    if-eqz v234, :cond_7a

    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v234

    invoke-interface/range {v234 .. v234}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v204

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_79

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> getContentDescription - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    const-string/jumbo v234, "contentdesc="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_2
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    :cond_7a
    const/16 v234, -0x1

    :try_start_3d
    move-object/from16 v0, v218

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v234

    if-nez v234, :cond_7b

    const/16 v234, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v234

    if-eqz v234, :cond_7c

    :cond_7b
    const-string/jumbo v204, "true"

    const-string/jumbo v234, "vertical_draggable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7c
    const/16 v234, -0x1

    move-object/from16 v0, v218

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v234

    if-nez v234, :cond_7d

    const/16 v234, 0x1

    move-object/from16 v0, v218

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v234

    if-eqz v234, :cond_7e

    :cond_7d
    const-string/jumbo v204, "true"

    const-string/jumbo v234, "horizontal_draggable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1f
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    :cond_7e
    :goto_43
    :try_start_3e
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isEnabled()Z

    move-result v234

    if-eqz v234, :cond_8f

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "enable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isLongClickable()Z

    move-result v234

    if-eqz v234, :cond_7f

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "longclickable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isClickable()Z

    move-result v234

    if-eqz v234, :cond_80

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "clickable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isEnabled()Z

    move-result v234

    if-eqz v234, :cond_82

    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isLongClickable()Z

    move-result v234

    if-nez v234, :cond_81

    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isClickable()Z

    move-result v234

    if-eqz v234, :cond_82

    :cond_81
    const-string/jumbo v204, "true"

    const-string/jumbo v234, "touchable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isFocusable()Z

    move-result v234

    if-eqz v234, :cond_83

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "hasfocus="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isSelected()Z

    move-result v234

    if-eqz v234, :cond_84

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "isselected="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/AdapterView;

    move/from16 v234, v0

    if-eqz v234, :cond_85

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "adapter="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v234, v0

    if-eqz v234, :cond_88

    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v206, v0

    invoke-virtual/range {v206 .. v206}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v234

    invoke-interface/range {v234 .. v234}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v204

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_86

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> textview - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v206 .. v206}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v234

    if-eqz v234, :cond_87

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "editable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    invoke-virtual/range {v206 .. v206}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_2
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    move-result-object v234

    if-eqz v234, :cond_88

    :try_start_3f
    const-class v234, Landroid/widget/TextView;

    const-string/jumbo v235, "mResource"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v206

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_3f} :catch_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3f .. :try_end_3f} :catch_22
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_2
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    move-result v187

    if-eqz v187, :cond_90

    :try_start_40
    invoke-virtual/range {v206 .. v206}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "background="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_40} :catch_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_40 .. :try_end_40} :catch_22
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_2
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    :cond_88
    :goto_45
    :try_start_41
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v234, v0

    if-eqz v234, :cond_89

    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/Checkable;->isChecked()Z

    move-result v234

    if-eqz v234, :cond_93

    const-string/jumbo v204, "true"

    :goto_46
    const-string/jumbo v234, "checked="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_89
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v234, v0

    if-eqz v234, :cond_8a

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "progressbar="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v183, v0

    invoke-virtual/range {v183 .. v183}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v234

    if-nez v234, :cond_94

    invoke-virtual/range {v183 .. v183}, Landroid/widget/ProgressBar;->getMax()I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_2
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    move-result v151

    if-eqz v151, :cond_8a

    :try_start_42
    const-class v234, Landroid/widget/ProgressBar;

    const-string/jumbo v235, "mProgress"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v182

    mul-int/lit8 v234, v182, 0x64

    div-int v234, v234, v151

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "progress="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_42} :catch_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_42 .. :try_end_42} :catch_23
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_2
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    :goto_47
    :try_start_43
    const-class v234, Landroid/widget/ProgressBar;

    const-string/jumbo v235, "mSecondaryProgress"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v182

    mul-int/lit8 v234, v182, 0x64

    div-int v234, v234, v151

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "progress2="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_43} :catch_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_43 .. :try_end_43} :catch_25
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_2
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    :cond_8a
    :goto_48
    :try_start_44
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v234, v0

    if-eqz v234, :cond_8b

    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v82, v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_2
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    :try_start_45
    const-class v234, Landroid/widget/ImageView;

    const-string/jumbo v235, "mResource"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_45} :catch_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_45 .. :try_end_45} :catch_29
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_2
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    move-result v187

    if-eqz v187, :cond_95

    :try_start_46
    invoke-virtual/range {v82 .. v82}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "entry="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_46} :catch_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_46 .. :try_end_46} :catch_29
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_2
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    :cond_8b
    :goto_49
    :try_start_47
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v234, v0

    if-eqz v234, :cond_8d

    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/EditText;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v234

    if-eqz v234, :cond_8c

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "editText: editText1"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v56 .. v56}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v234

    invoke-interface/range {v234 .. v234}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hint="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "editText: editText2"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_4a
    const/16 v234, 0xa

    move-object/from16 v0, v172

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3e

    :cond_8e
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getWidth()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getHeight()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_42

    :catch_1f
    move-exception v60

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Failed to get scrolling information: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    :cond_8f
    const-string/jumbo v204, "false"

    const-string/jumbo v234, "enable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_2
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    goto/16 :goto_44

    :catch_20
    move-exception v51

    :try_start_48
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_48} :catch_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_48 .. :try_end_48} :catch_22
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_2
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    goto/16 :goto_45

    :catch_21
    move-exception v55

    :try_start_49
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mResource for entry of ImageView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_2
    .catchall {:try_start_49 .. :try_end_49} :catchall_0

    goto/16 :goto_45

    :cond_90
    :try_start_4a
    const-class v234, Landroid/widget/ImageView;

    const-string/jumbo v235, "mUri"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v206

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v217

    check-cast v217, Landroid/net/Uri;

    if-eqz v217, :cond_88

    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v189

    const-string/jumbo v234, "android.resource"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_91

    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "background="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_4a} :catch_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4a .. :try_end_4a} :catch_22
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_2
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    goto/16 :goto_45

    :catch_22
    move-exception v53

    :try_start_4b
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mResource for entry of ImageView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_2
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0

    goto/16 :goto_45

    :cond_91
    :try_start_4c
    const-string/jumbo v234, "content"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_92

    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "background="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_45

    :cond_92
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "background="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_4c} :catch_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4c .. :try_end_4c} :catch_22
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_2
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0

    goto/16 :goto_45

    :cond_93
    :try_start_4d
    const-string/jumbo v204, "false"

    goto/16 :goto_46

    :catch_23
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    :catch_24
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    :catch_25
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    :catch_26
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    :cond_94
    const-string/jumbo v204, "true"

    const-string/jumbo v234, "indeterminate="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_2
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    goto/16 :goto_48

    :catch_27
    move-exception v51

    :try_start_4e
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_4e} :catch_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4e .. :try_end_4e} :catch_29
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_2
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    goto/16 :goto_49

    :catch_28
    move-exception v55

    :try_start_4f
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mResource for entry of ImageView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_2
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0

    goto/16 :goto_49

    :cond_95
    :try_start_50
    const-class v234, Landroid/widget/ImageView;

    const-string/jumbo v235, "mUri"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v217

    check-cast v217, Landroid/net/Uri;

    if-eqz v217, :cond_8b

    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v189

    const-string/jumbo v234, "android.resource"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_96

    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "entry="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_50} :catch_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_50 .. :try_end_50} :catch_29
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_2
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    goto/16 :goto_49

    :catch_29
    move-exception v53

    :try_start_51
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mResource for entry of ImageView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_2
    .catchall {:try_start_51 .. :try_end_51} :catchall_0

    goto/16 :goto_49

    :cond_96
    :try_start_52
    const-string/jumbo v234, "content"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_97

    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "entry="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_49

    :cond_97
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "entry="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_52} :catch_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_52 .. :try_end_52} :catch_29
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_2
    .catchall {:try_start_52 .. :try_end_52} :catchall_0

    goto/16 :goto_49

    :cond_98
    if-eqz v36, :cond_a4

    :try_start_53
    move-object/from16 v0, v36

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_a4

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "ViewList: (NativeViewBase) "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "class="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hash="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_2
    .catchall {:try_start_53 .. :try_end_53} :catchall_0

    :try_start_54
    const-string/jumbo v234, "getScreenBoundingRect"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/graphics/Rect;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->width()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->height()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_2a
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    :goto_4b
    const/16 v47, 0x0

    :try_start_55
    const-string/jumbo v234, "isClickable"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "clickable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_55 .. :try_end_55} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_2b
    .catchall {:try_start_55 .. :try_end_55} :catchall_0

    :goto_4c
    const/16 v58, 0x0

    :try_start_56
    const-string/jumbo v234, "isEnabled"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Boolean;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "enable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catch Ljava/lang/NoSuchMethodException; {:try_start_56 .. :try_end_56} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_2d
    .catchall {:try_start_56 .. :try_end_56} :catchall_0

    :goto_4d
    const/16 v153, 0x0

    :try_start_57
    const-string/jumbo v234, "mLongClickable"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v130

    const/16 v234, 0x1

    move-object/from16 v0, v130

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v130

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v153

    invoke-static/range {v153 .. v153}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "longclickable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_57
    .catch Ljava/lang/NoSuchFieldException; {:try_start_57 .. :try_end_57} :catch_30
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_2f
    .catchall {:try_start_57 .. :try_end_57} :catchall_0

    :goto_4e
    if-eqz v58, :cond_9a

    if-nez v47, :cond_99

    if-eqz v153, :cond_9a

    :cond_99
    :try_start_58
    const-string/jumbo v204, "true"

    const-string/jumbo v234, "touchable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeItemView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_2
    .catchall {:try_start_58 .. :try_end_58} :catchall_0

    move-result v234

    if-eqz v234, :cond_9e

    :try_start_59
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitle"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v155

    const/16 v234, 0x1

    move-object/from16 v0, v155

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v155

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v208

    if-eqz v85, :cond_9c

    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    const/16 v80, 0x0

    :goto_4f
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_9b

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> txt methods - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v152, v80

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/NoSuchFieldException; {:try_start_59 .. :try_end_59} :catch_32
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_31
    .catchall {:try_start_59 .. :try_end_59} :catchall_0

    add-int/lit8 v80, v80, 0x1

    goto :goto_4f

    :catch_2a
    move-exception v52

    :try_start_5a
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, " Exception while getting screen bound : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :catch_2b
    move-exception v60

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting clickable for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    :catch_2c
    move-exception v62

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such method Exception while getting clickable for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    :catch_2d
    move-exception v60

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting isEnabled for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    :catch_2e
    move-exception v62

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such method Exception while getting isEnabled for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    :catch_2f
    move-exception v60

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting clickable for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    :catch_30
    move-exception v61

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such field Exception while getting long clickable for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_2
    .catchall {:try_start_5a .. :try_end_5a} :catchall_0

    goto/16 :goto_4e

    :cond_9b
    :try_start_5b
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    const/16 v80, 0x0

    :goto_50
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_9c

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> private txt methods - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v152, v80

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v80, v80, 0x1

    goto :goto_50

    :cond_9c
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getText"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v208

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_9d

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5b .. :try_end_5b} :catch_32
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_31
    .catchall {:try_start_5b .. :try_end_5b} :catchall_0

    :cond_9e
    :goto_51
    :try_start_5c
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "TextView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2
    .catchall {:try_start_5c .. :try_end_5c} :catchall_0

    move-result v234

    if-eqz v234, :cond_a0

    :try_start_5d
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getText"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Get FolderViewtitle: "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_9f

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_33
    .catchall {:try_start_5d .. :try_end_5d} :catchall_0

    :cond_a0
    :goto_52
    :try_start_5e
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeFolderView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_2
    .catchall {:try_start_5e .. :try_end_5e} :catchall_0

    move-result v234

    if-eqz v234, :cond_8d

    :try_start_5f
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitleView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v155

    const/16 v234, 0x1

    move-object/from16 v0, v155

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v155

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v208

    if-eqz v85, :cond_a2

    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    const/16 v80, 0x0

    :goto_53
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_a1

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> txt methods - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v152, v80

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5f .. :try_end_5f} :catch_34
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_35
    .catchall {:try_start_5f .. :try_end_5f} :catchall_0

    add-int/lit8 v80, v80, 0x1

    goto :goto_53

    :catch_31
    move-exception v60

    :try_start_60
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting title for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    :catch_32
    move-exception v61

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such method Exception while getting title for homeitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    :catch_33
    move-exception v52

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting title for openFolderView : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_2
    .catchall {:try_start_60 .. :try_end_60} :catchall_0

    goto/16 :goto_52

    :cond_a1
    :try_start_61
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    const/16 v80, 0x0

    :goto_54
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_a2

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> private txt methods - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    aget-object v236, v152, v80

    invoke-virtual/range {v236 .. v236}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v80, v80, 0x1

    goto :goto_54

    :cond_a2
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getText"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v208

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_a3

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catch Ljava/lang/NoSuchFieldException; {:try_start_61 .. :try_end_61} :catch_34
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_35
    .catchall {:try_start_61 .. :try_end_61} :catchall_0

    goto/16 :goto_4a

    :catch_34
    move-exception v61

    :try_start_62
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "No such method Exception while getting title for homefolderitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :catch_35
    move-exception v60

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "Exception while getting title for homefolderitem : "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    :cond_a4
    if-eqz v45, :cond_b7

    move-object/from16 v0, v45

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_b7

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "ViewList: (TwGLView) "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v67, v168

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "class="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hash="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_2
    .catchall {:try_start_62 .. :try_end_62} :catchall_0

    const/16 v57, 0x0

    :try_start_63
    const-string/jumbo v234, "mOnClickListener"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_63
    .catch Ljava/lang/NoSuchFieldException; {:try_start_63 .. :try_end_63} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_63} :catch_39
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_2
    .catchall {:try_start_63 .. :try_end_63} :catchall_0

    move-result-object v64

    :goto_55
    const/16 v234, 0x1

    :try_start_64
    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    if-eqz v234, :cond_a5

    const/16 v57, 0x1

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "clickable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "false"

    const-string/jumbo v234, "longclickable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "touchable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_64 .. :try_end_64} :catch_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_64 .. :try_end_64} :catch_38
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_2
    .catchall {:try_start_64 .. :try_end_64} :catchall_0

    :cond_a5
    :goto_56
    if-eqz v57, :cond_ae

    :try_start_65
    const-string/jumbo v204, "true"

    :goto_57
    const-string/jumbo v234, "enable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_2
    .catchall {:try_start_65 .. :try_end_65} :catchall_0

    :try_start_66
    const-string/jumbo v234, "mTitle"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    if-eqz v204, :cond_a7

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_a6

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    const-string/jumbo v234, "id="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_66 .. :try_end_66} :catch_3b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_66 .. :try_end_66} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_2
    .catchall {:try_start_66 .. :try_end_66} :catchall_0

    :cond_a7
    :goto_58
    :try_start_67
    const-string/jumbo v234, "mClipRect"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/graphics/Rect;

    if-eqz v114, :cond_b0

    if-eqz v111, :cond_af

    move/from16 v0, v111

    move/from16 v1, v136

    if-le v0, v1, :cond_af

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v235, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v236, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v237, v0

    sub-int v236, v236, v237

    add-int v235, v235, v236

    sub-int v235, v136, v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v235, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v236, v0

    sub-int v235, v235, v236

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v235, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v236, v0

    sub-int v235, v235, v236

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_67 .. :try_end_67} :catch_3c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_67 .. :try_end_67} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_2
    .catchall {:try_start_67 .. :try_end_67} :catchall_0

    :goto_59
    const/16 v64, 0x0

    if-eqz v40, :cond_b1

    :try_start_68
    move-object/from16 v0, v40

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_2
    .catchall {:try_start_68 .. :try_end_68} :catchall_0

    move-result v234

    if-eqz v234, :cond_b1

    :try_start_69
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v40

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_69} :catch_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_69 .. :try_end_69} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_2
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    :cond_a8
    :goto_5a
    if-eqz v64, :cond_b2

    if-eqz v44, :cond_b2

    :try_start_6a
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_2
    .catchall {:try_start_6a .. :try_end_6a} :catchall_0

    move-result-object v141

    if-eqz v141, :cond_aa

    :try_start_6b
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v44

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v141

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    if-eqz v204, :cond_aa

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_a9

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_6b .. :try_end_6b} :catch_43
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6b .. :try_end_6b} :catch_42
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_2
    .catchall {:try_start_6b .. :try_end_6b} :catchall_0

    :cond_aa
    :goto_5b
    if-eqz v44, :cond_ac

    :try_start_6c
    move-object/from16 v0, v44

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_2
    .catchall {:try_start_6c .. :try_end_6c} :catchall_0

    move-result v234

    if-eqz v234, :cond_ac

    :try_start_6d
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v44

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    if-eqz v204, :cond_ac

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_ab

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6d
    .catch Ljava/lang/SecurityException; {:try_start_6d .. :try_end_6d} :catch_47
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6d .. :try_end_6d} :catch_46
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_2
    .catchall {:try_start_6d .. :try_end_6d} :catchall_0

    :cond_ac
    :goto_5c
    if-eqz v42, :cond_ad

    :try_start_6e
    move-object/from16 v0, v42

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_2
    .catchall {:try_start_6e .. :try_end_6e} :catchall_0

    move-result v234

    if-eqz v234, :cond_ad

    :try_start_6f
    const-string/jumbo v234, "mChecked"

    move-object/from16 v0, v42

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v112

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v234

    move/from16 v1, v112

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "checked="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6f
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_6f} :catch_49
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6f .. :try_end_6f} :catch_48
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_2
    .catchall {:try_start_6f .. :try_end_6f} :catchall_0

    :cond_ad
    :goto_5d
    if-eqz v43, :cond_8d

    :try_start_70
    move-object/from16 v0, v43

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_2
    .catchall {:try_start_70 .. :try_end_70} :catchall_0

    move-result v234

    if-eqz v234, :cond_8d

    :try_start_71
    const-string/jumbo v234, "mSwitchBallPosition"

    move-object/from16 v0, v43

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v140

    if-nez v140, :cond_b6

    const-string/jumbo v204, "Camera"

    :goto_5e
    const-string/jumbo v234, "entry="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_71 .. :try_end_71} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_71 .. :try_end_71} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_2
    .catchall {:try_start_71 .. :try_end_71} :catchall_0

    goto/16 :goto_4a

    :catch_36
    move-exception v55

    :try_start_72
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_2
    .catchall {:try_start_72 .. :try_end_72} :catchall_0

    goto/16 :goto_4a

    :catch_37
    move-exception v53

    :try_start_73
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mOnClickListener for touch"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v234, "mClickListener"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_73 .. :try_end_73} :catch_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_73 .. :try_end_73} :catch_38
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_2
    .catchall {:try_start_73 .. :try_end_73} :catchall_0

    move-result-object v64

    goto/16 :goto_55

    :catch_38
    move-exception v53

    :try_start_74
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mClickListener for touch"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    :catch_39
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mClickListener for touch"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    :cond_ae
    const-string/jumbo v204, "false"

    goto/16 :goto_57

    :catch_3a
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mTile for ID"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58

    :catch_3b
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mTile for ID"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_2
    .catchall {:try_start_74 .. :try_end_74} :catchall_0

    goto/16 :goto_58

    :cond_af
    :try_start_75
    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v235, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v236, v0

    sub-int v235, v235, v236

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v235, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v236, v0

    sub-int v235, v235, v236

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_75
    .catch Ljava/lang/SecurityException; {:try_start_75 .. :try_end_75} :catch_3c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_75 .. :try_end_75} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_2
    .catchall {:try_start_75 .. :try_end_75} :catchall_0

    goto/16 :goto_59

    :catch_3c
    move-exception v55

    :try_start_76
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a rectangle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_2
    .catchall {:try_start_76 .. :try_end_76} :catchall_0

    goto/16 :goto_59

    :cond_b0
    :try_start_77
    const-string/jumbo v234, "getCurrentArea"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/graphics/RectF;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v118

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v235, v0

    move/from16 v0, v235

    float-to-int v0, v0

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v118

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v235, v0

    move/from16 v0, v235

    float-to-int v0, v0

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v118

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v235, v0

    move-object/from16 v0, v118

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v236, v0

    sub-float v235, v235, v236

    move/from16 v0, v235

    float-to-int v0, v0

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v118

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v235, v0

    move-object/from16 v0, v118

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v236, v0

    sub-float v235, v235, v236

    move/from16 v0, v235

    float-to-int v0, v0

    move/from16 v235, v0

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_77
    .catch Ljava/lang/SecurityException; {:try_start_77 .. :try_end_77} :catch_3c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_77 .. :try_end_77} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_2
    .catchall {:try_start_77 .. :try_end_77} :catchall_0

    goto/16 :goto_59

    :catch_3d
    move-exception v53

    :try_start_78
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a rectangle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59

    :catch_3e
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    :catch_3f
    move-exception v55

    const/16 v64, 0x0

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    :cond_b1
    if-eqz v41, :cond_a8

    move-object/from16 v0, v41

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_2
    .catchall {:try_start_78 .. :try_end_78} :catchall_0

    move-result v234

    if-eqz v234, :cond_a8

    :try_start_79
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v41

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_79
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_79} :catch_40
    .catch Ljava/lang/NoSuchFieldException; {:try_start_79 .. :try_end_79} :catch_41
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_2
    .catchall {:try_start_79 .. :try_end_79} :catchall_0

    goto/16 :goto_5a

    :catch_40
    move-exception v55

    const/16 v64, 0x0

    :try_start_7a
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    :catch_41
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    :catch_42
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    :catch_43
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    :cond_b2
    if-eqz v40, :cond_b3

    move-object/from16 v0, v40

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_b4

    :cond_b3
    if-eqz v41, :cond_aa

    move-object/from16 v0, v41

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_2
    .catchall {:try_start_7a .. :try_end_7a} :catchall_0

    move-result v234

    if-eqz v234, :cond_aa

    :cond_b4
    :try_start_7b
    const-string/jumbo v234, "mTitle"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    if-eqz v204, :cond_aa

    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_b5

    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, ">> newlineReplacement - "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    move-object/from16 v0, v235

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catch Ljava/lang/SecurityException; {:try_start_7b .. :try_end_7b} :catch_44
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7b .. :try_end_7b} :catch_45
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_2
    .catchall {:try_start_7b .. :try_end_7b} :catchall_0

    goto/16 :goto_5b

    :catch_44
    move-exception v55

    :try_start_7c
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mTile for Text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    :catch_45
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mTile for Text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    :catch_46
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    :catch_47
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    :catch_48
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mChecked for check"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    :catch_49
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mChecked for check"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_2
    .catchall {:try_start_7c .. :try_end_7c} :catchall_0

    goto/16 :goto_5d

    :cond_b6
    :try_start_7d
    const-string/jumbo v204, "Camcorder"
    :try_end_7d
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_7d} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7d .. :try_end_7d} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_2
    .catchall {:try_start_7d .. :try_end_7d} :catchall_0

    goto/16 :goto_5e

    :catch_4a
    move-exception v53

    :try_start_7e
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    :cond_b7
    if-eqz v31, :cond_bb

    move-object/from16 v0, v31

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_bb

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "ViewList: (GlView-Sec) "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "class="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hash="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v28, :cond_b8

    move-object/from16 v0, v28

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_2
    .catchall {:try_start_7e .. :try_end_7e} :catchall_0

    move-result v234

    if-eqz v234, :cond_b8

    :try_start_7f
    const-string/jumbo v234, "mResourceID"

    move-object/from16 v0, v28

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_7f
    .catch Ljava/lang/SecurityException; {:try_start_7f .. :try_end_7f} :catch_4c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7f .. :try_end_7f} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_2
    .catchall {:try_start_7f .. :try_end_7f} :catchall_0

    move-result v134

    if-eqz v134, :cond_b8

    if-eqz v202, :cond_b8

    :try_start_80
    move-object/from16 v0, v202

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "entry="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_80
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_80 .. :try_end_80} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_80 .. :try_end_80} :catch_4c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_80 .. :try_end_80} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_2
    .catchall {:try_start_80 .. :try_end_80} :catchall_0

    :cond_b8
    :goto_5f
    const/16 v121, 0x0

    :try_start_81
    const-string/jumbo v234, "mRect"

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v133

    const/16 v234, 0x1

    move-object/from16 v0, v133

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v133

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v75

    const-string/jumbo v234, "mGlObject"

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_81} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_81 .. :try_end_81} :catch_51
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_2
    .catchall {:try_start_81 .. :try_end_81} :catchall_0

    move-result-object v121

    :try_start_82
    const-string/jumbo v234, "checkPosIn"

    const/16 v235, 0x2

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    sget-object v236, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v237, 0x0

    aput-object v236, v235, v237

    sget-object v236, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v237, 0x1

    aput-object v236, v235, v237

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    const/16 v234, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x2

    move/from16 v0, v234

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v234, v0

    const/16 v235, 0x0

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    const/16 v236, 0x0

    aput-object v235, v234, v236

    const/16 v235, 0x0

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    const/16 v236, 0x1

    aput-object v235, v234, v236

    move-object/from16 v0, v18

    move-object/from16 v1, v121

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/SecurityException; {:try_start_82 .. :try_end_82} :catch_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_82 .. :try_end_82} :catch_4e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_82 .. :try_end_82} :catch_51
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_2
    .catchall {:try_start_82 .. :try_end_82} :catchall_0

    :goto_60
    :try_start_83
    const-string/jumbo v234, "mXlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v166

    const-string/jumbo v234, "mYlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v167

    const-string/jumbo v234, "mXrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    sub-float v165, v234, v166

    const-string/jumbo v234, "mYrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    sub-float v163, v234, v167

    const-string/jumbo v234, "x2="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v166

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "y2="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "width2="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "height2="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v163

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mLeft"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v129

    const/16 v234, 0x1

    move-object/from16 v0, v129

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v129

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v232

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTop"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v145

    const/16 v234, 0x1

    move-object/from16 v0, v145

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v145

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v233

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidth"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v150

    const/16 v234, 0x1

    move-object/from16 v0, v150

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v150

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v231

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mHeight"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v123

    const/16 v234, 0x1

    move-object/from16 v0, v123

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v123

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v76

    const-string/jumbo v234, "mParent"

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v132

    if-eqz v132, :cond_ba

    const-string/jumbo v234, "getWidth"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v132

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v178

    const-string/jumbo v234, "getHeight"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v235

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v235

    move-object/from16 v1, v132

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    check-cast v234, Ljava/lang/Integer;

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Integer;->intValue()I

    move-result v177

    move/from16 v0, v178

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v184, v165, v234

    move/from16 v0, v177

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v185, v163, v234

    :goto_61
    move/from16 v0, v232

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v184

    add-float v234, v234, v166

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v224, v0

    move/from16 v0, v233

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v185

    add-float v234, v234, v167

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v225, v0

    move/from16 v0, v231

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v184

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v223, v0

    move/from16 v0, v76

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v185

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v221, v0

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v223

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v221

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v221

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_83
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_83} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_83 .. :try_end_83} :catch_51
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_2
    .catchall {:try_start_83 .. :try_end_83} :catchall_0

    :goto_62
    if-eqz v30, :cond_b9

    :try_start_84
    move-object/from16 v0, v30

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_2
    .catchall {:try_start_84 .. :try_end_84} :catchall_0

    move-result v234

    if-eqz v234, :cond_b9

    :try_start_85
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v30

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Ljava/lang/String;

    const-string/jumbo v234, "text="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v142 .. v142}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_85
    .catch Ljava/lang/SecurityException; {:try_start_85 .. :try_end_85} :catch_53
    .catch Ljava/lang/NoSuchFieldException; {:try_start_85 .. :try_end_85} :catch_52
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_2
    .catchall {:try_start_85 .. :try_end_85} :catchall_0

    :cond_b9
    :goto_63
    const/16 v57, 0x1

    :try_start_86
    new-instance v234, Ljava/lang/StringBuilder;

    invoke-direct/range {v234 .. v234}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v234

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ""

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "enable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_2
    .catchall {:try_start_86 .. :try_end_86} :catchall_0

    goto/16 :goto_4a

    :catch_4b
    move-exception v51

    :try_start_87
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get Resource entry name"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catch Ljava/lang/SecurityException; {:try_start_87 .. :try_end_87} :catch_4c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_87 .. :try_end_87} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_2
    .catchall {:try_start_87 .. :try_end_87} :catchall_0

    goto/16 :goto_5f

    :catch_4c
    move-exception v55

    :try_start_88
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mResourceID for entry"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f

    :catch_4d
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mResourceID for entry"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_2
    .catchall {:try_start_88 .. :try_end_88} :catchall_0

    goto/16 :goto_5f

    :catch_4e
    move-exception v54

    :try_start_89
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: checkPosIn"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catch Ljava/lang/SecurityException; {:try_start_89 .. :try_end_89} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_89 .. :try_end_89} :catch_51
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_2
    .catchall {:try_start_89 .. :try_end_89} :catchall_0

    goto/16 :goto_60

    :catch_4f
    move-exception v55

    :try_start_8a
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a rectangle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_2
    .catchall {:try_start_8a .. :try_end_8a} :catchall_0

    goto/16 :goto_62

    :catch_50
    move-exception v55

    :try_start_8b
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: checkPosIn"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catch Ljava/lang/SecurityException; {:try_start_8b .. :try_end_8b} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8b .. :try_end_8b} :catch_51
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_2
    .catchall {:try_start_8b .. :try_end_8b} :catchall_0

    goto/16 :goto_60

    :catch_51
    move-exception v53

    :try_start_8c
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a rectangle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62

    :cond_ba
    move/from16 v0, v231

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v184, v165, v234

    move/from16 v0, v76

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v185, v163, v234

    goto/16 :goto_61

    :catch_52
    move-exception v53

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63

    :catch_53
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63

    :cond_bb
    if-eqz v29, :cond_bc

    move-object/from16 v0, v29

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_bc

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "ViewList: (GlObject-Sec) "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "class="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hash="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "enable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_2
    .catchall {:try_start_8c .. :try_end_8c} :catchall_0

    :try_start_8d
    const-string/jumbo v234, "checkPosIn"

    const/16 v235, 0x2

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    sget-object v236, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v237, 0x0

    aput-object v236, v235, v237

    sget-object v236, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v237, 0x1

    aput-object v236, v235, v237

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    const/16 v234, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x2

    move/from16 v0, v234

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v234, v0

    const/16 v235, 0x0

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    const/16 v236, 0x0

    aput-object v235, v234, v236

    const/16 v235, 0x0

    invoke-static/range {v235 .. v235}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v235

    const/16 v236, 0x1

    aput-object v235, v234, v236

    move-object/from16 v0, v18

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/SecurityException; {:try_start_8d .. :try_end_8d} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8d .. :try_end_8d} :catch_54
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_2
    .catchall {:try_start_8d .. :try_end_8d} :catchall_0

    :goto_64
    :try_start_8e
    const-string/jumbo v234, "mXlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v129

    const/16 v234, 0x1

    move-object/from16 v0, v129

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v129

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v232, v0

    const-string/jumbo v234, "mYlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v145

    const/16 v234, 0x1

    move-object/from16 v0, v145

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v145

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v233, v0

    const-string/jumbo v234, "mXrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v150

    const/16 v234, 0x1

    move-object/from16 v0, v150

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v150

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v234, v0

    sub-int v231, v234, v232

    const-string/jumbo v234, "mYrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v123

    const/16 v234, 0x1

    move-object/from16 v0, v123

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v123

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v234, v0

    sub-int v76, v234, v233

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v231

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v231

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4a

    :catch_54
    move-exception v54

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: checkPosIn"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64

    :catch_55
    move-exception v55

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: checkPosIn"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64

    :cond_bc
    if-eqz v26, :cond_be

    move-object/from16 v0, v26

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_be

    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "ViewList: (GLView-Sec) "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->isEmpty()Z

    move-result v234

    if-eqz v234, :cond_bd

    const-string/jumbo v204, "$"

    :cond_bd
    const-string/jumbo v234, "class="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    const-string/jumbo v234, "hash="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "enable="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_2
    .catchall {:try_start_8e .. :try_end_8e} :catchall_0

    :try_start_8f
    const-string/jumbo v234, "bounds"

    const/16 v235, 0x0

    move/from16 v0, v235

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v235, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v234, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v17

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/graphics/Rect;

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v232, v0

    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v233, v0

    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->width()I

    move-result v231

    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->height()I

    move-result v76

    const-string/jumbo v234, "x="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "y="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v233

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "width="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v231

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v231

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v234, "height="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v235

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v235

    const-string/jumbo v236, ""

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v204, "true"

    const-string/jumbo v234, "pos_relative="

    move-object/from16 v0, v172

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v235

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, ","

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    move-object/from16 v0, v234

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v234

    const-string/jumbo v235, " "

    invoke-virtual/range {v234 .. v235}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8f
    .catch Ljava/lang/SecurityException; {:try_start_8f .. :try_end_8f} :catch_56
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8f .. :try_end_8f} :catch_57
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_2
    .catchall {:try_start_8f .. :try_end_8f} :catchall_0

    goto/16 :goto_4a

    :catch_56
    move-exception v55

    :try_start_90
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a boundary"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    :catch_57
    move-exception v54

    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a boundary"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    :cond_be
    move-object/from16 v0, v168

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v234, v0

    if-eqz v234, :cond_bf

    check-cast v168, Ljava/lang/String;

    move-object/from16 v0, v172

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4a

    :cond_bf
    const-string/jumbo v234, "TDK"

    new-instance v235, Ljava/lang/StringBuilder;

    invoke-direct/range {v235 .. v235}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v236, "ViewList: (Unknown) "

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v236

    invoke-virtual/range {v236 .. v236}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v236

    invoke-virtual/range {v235 .. v236}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v216, 0x1

    move/from16 v180, v94

    const/16 v80, 0x0

    :goto_65
    move/from16 v0, v80

    move/from16 v1, v94

    if-ge v0, v1, :cond_71

    invoke-virtual/range {v172 .. v172}, Ljava/lang/StringBuilder;->length()I

    move-result v234

    add-int/lit8 v234, v234, -0x1

    move-object/from16 v0, v172

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v80, v80, 0x1

    goto :goto_65

    :cond_c0
    new-instance v171, Ljava/io/BufferedWriter;

    new-instance v234, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v234

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v235, 0x8000

    move-object/from16 v0, v171

    move-object/from16 v1, v234

    move/from16 v2, v235

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_2
    .catchall {:try_start_90 .. :try_end_90} :catchall_0

    :try_start_91
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v234

    move-object/from16 v0, v171

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v234, "DONE."

    move-object/from16 v0, v171

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_58
    .catchall {:try_start_91 .. :try_end_91} :catchall_1

    if-eqz v171, :cond_c1

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedWriter;->close()V

    :cond_c1
    move-object/from16 v170, v171

    goto/16 :goto_6

    :catchall_1
    move-exception v234

    move-object/from16 v170, v171

    goto/16 :goto_c

    :catch_58
    move-exception v52

    move-object/from16 v170, v171

    goto/16 :goto_5

    :catch_59
    move-exception v51

    goto/16 :goto_41

    :catch_5a
    move-exception v52

    goto/16 :goto_1e
.end method

.method public static dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Landroid/view/ViewDebug$7;

    invoke-direct {v2, p0, v0, v1}, Landroid/view/ViewDebug$7;-><init>(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    return-void
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v14

    array-length v10, v14

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v10, :cond_10

    aget-object v12, v14, v16

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_b

    :cond_0
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v13

    :cond_1
    :goto_2
    if-nez v13, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v13}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v9, ""

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v15

    array-length v2, v15

    if-lez v2, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    :cond_6
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v20, v21, v19

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v13

    :cond_7
    if-nez v13, :cond_8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :cond_8
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_a

    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v13

    check-cast v0, Ljava/lang/Byte;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v7, 0x1

    invoke-static {v2, v7}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_b
    const-class v2, [I

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v23, ""

    const-string/jumbo v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v11

    goto/16 :goto_3

    :cond_c
    const-class v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    const/16 v19, 0x0

    :goto_5
    array-length v2, v8

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    aget-object v2, v8, v19

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v7, v8, v19

    const-string/jumbo v25, ""

    add-int/lit8 v2, v19, 0x1

    aget-object v2, v8, v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "null"

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v3, v7, v1, v2}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    :cond_e
    add-int/lit8 v2, v19, 0x1

    aget-object v2, v8, v2

    goto :goto_6

    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_10
    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v11, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_c

    aget-object v24, v26, v16

    :try_start_0
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v27

    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_7

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v25

    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v3, v4, v8, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v10, ""

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v15

    array-length v3, v15

    if-lez v3, :cond_4

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    :cond_4
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v3, v0

    if-lez v3, :cond_0

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v20, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v21, v22, v19

    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    move/from16 v0, v18

    if-ne v3, v0, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v25

    const/16 v20, 0x1

    :cond_5
    if-nez v20, :cond_0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_7
    const-class v3, [I

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_8

    move-object/from16 v0, v25

    check-cast v0, [I

    move-object v6, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v28, "()"

    const-string/jumbo v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v12

    goto/16 :goto_3

    :cond_8
    const-class v3, [Ljava/lang/String;

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_b

    move-object/from16 v0, v25

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    const/16 v19, 0x0

    :goto_5
    array-length v3, v9

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    aget-object v3, v9, v19

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v8, v9, v19

    const-string/jumbo v29, "()"

    add-int/lit8 v3, v19, 0x1

    aget-object v3, v9, v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "null"

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v4, v8, v1, v3}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v19, 0x1

    aget-object v3, v9, v3

    goto :goto_6

    :cond_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    :catch_1
    move-exception v13

    goto/16 :goto_3

    :cond_c
    return-void

    :catch_2
    move-exception v14

    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz p0, :cond_5

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p3

    array-length v15, v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v15, :cond_9

    const/4 v14, 0x0

    aget v6, p3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_0

    array-length v11, v5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v11, :cond_0

    aget-object v9, v5, v8

    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    :cond_0
    if-eqz v4, :cond_1

    array-length v11, v10

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v11, :cond_1

    aget-object v9, v10, v8

    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_7

    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    :cond_1
    if-eqz v13, :cond_8

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    :cond_2
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v1, p1, v3

    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_2

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_0

    if-nez v2, :cond_3

    :cond_0
    if-nez v6, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string/jumbo v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v0, v3, v5

    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    nop

    nop

    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    return-object v5

    :cond_1
    return-object v8
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v3

    nop

    nop

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_1
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v4, v4, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v5
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v7, 0x0

    sget-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Field;

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Ljava/lang/reflect/Field;

    move-object v4, v0

    invoke-virtual {v6, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    :cond_1
    sget-object v2, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v3, v4, v6

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/lang/Void;

    if-eq v5, v8, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    const-string/jumbo v5, "null"

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v1

    array-length v7, v1

    mul-int/lit8 v7, v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget v0, v1, v8

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    add-int/lit8 v10, v4, 0x1

    const/4 v7, 0x1

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v2, v10

    add-int/lit8 v4, v4, 0x2

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v11, :cond_0

    add-int/lit8 v7, v4, -0x1

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_1
    move-object v7, v5

    goto :goto_1

    :cond_2
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static getViewInstanceCount()J
    .locals 2

    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Landroid/view/ViewDebug$9;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$9;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception v7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v0, v3, [Landroid/graphics/Bitmap;

    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v2, v0, p0, p1}, Landroid/view/ViewDebug$6;-><init>(Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;Landroid/view/View;Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object v6
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    :goto_0
    const-string/jumbo v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string/jumbo v4, "View"

    const-string/jumbo v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    throw v4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x20

    const/4 v10, 0x0

    if-nez p2, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_3

    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v6

    :goto_0
    if-nez p2, :cond_1

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_4

    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4

    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_5

    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v1, p0

    nop

    nop

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_6

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v0, v3, [J

    new-instance v3, Landroid/view/ViewDebug$5;

    invoke-direct {v3, v2, p1, v0}, Landroid/view/ViewDebug$5;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/view/ViewDebug$ViewOperation;[J)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not complete the profiling of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v6

    :catch_0
    move-exception v1

    const-string/jumbo v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not complete the profiling of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    return-wide v6

    :cond_0
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    return-wide v4
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-ltz p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "NO_ID"

    goto :goto_0
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/view/ViewDebug$10;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$10;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string/jumbo v0, "[EXCEPTION]"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
