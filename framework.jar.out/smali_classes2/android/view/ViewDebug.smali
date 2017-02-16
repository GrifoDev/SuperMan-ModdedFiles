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

    .prologue
    const/4 v0, 0x0

    .line 359
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 360
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1205
    instance-of v9, p1, Landroid/view/View;

    if-nez v9, :cond_0

    .line 1206
    nop

    nop

    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_0
    move-object v7, p1

    .line 1209
    nop

    nop

    .line 1210
    .local v7, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewDebug$8;

    invoke-direct {v0, p0, v7}, Landroid/view/ViewDebug$8;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    .line 1216
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/concurrent/FutureTask;

    invoke-direct {v4, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1218
    .local v4, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v7}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1220
    .local v5, "handler":Landroid/os/Handler;
    if-nez v5, :cond_1

    .line 1221
    new-instance v5, Landroid/os/Handler;

    .end local v5    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1223
    .restart local v5    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1226
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

    .line 1238
    :catch_0
    move-exception v2

    .line 1239
    .local v2, "e":Ljava/util/concurrent/CancellationException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unexpected cancellation exception"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1227
    .end local v2    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v3

    .line 1228
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 1229
    .local v6, "t":Ljava/lang/Throwable;
    instance-of v8, v6, Ljava/lang/IllegalAccessException;

    if-eqz v8, :cond_2

    .line 1230
    nop

    nop

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 1232
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v8, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v8, :cond_3

    .line 1233
    nop

    nop

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 1235
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unexpected exception"

    invoke-direct {v8, v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1236
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 802
    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 804
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 805
    const-string/jumbo v3, "View"

    const-string/jumbo v4, "Failed to create capture bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 809
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 808
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 812
    :cond_0
    const/4 v1, 0x0

    .line 814
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 816
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 818
    if-eqz v2, :cond_1

    .line 819
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 821
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 801
    return-void

    .line 817
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v3

    .line 818
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    :goto_0
    if-eqz v1, :cond_2

    .line 819
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 821
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 817
    throw v3

    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 796
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 793
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    .local v1, "outRect":Landroid/graphics/Rect;
    :try_start_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 722
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 724
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 726
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 728
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    .line 711
    return-void

    .line 727
    .end local v1    # "outRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    .line 728
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    .line 727
    throw v2

    .line 717
    .restart local v1    # "outRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    move v6, p2

    .line 737
    :goto_0
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_2

    .line 738
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 739
    .local v5, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 740
    .local v7, "name":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 744
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 745
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 746
    if-eqz v6, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 748
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 750
    .local v9, "position":[I
    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 752
    const/4 v10, 0x0

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 753
    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 754
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 756
    const/4 v10, 0x1

    invoke-static {p0, v10}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 757
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 758
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 759
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 758
    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 760
    .local v0, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 761
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 762
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 764
    .end local v0    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 767
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "position":[I
    :cond_2
    instance-of v10, p0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    move-object v3, p0

    .line 768
    nop

    nop

    .line 769
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 771
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 772
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 771
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 735
    .end local v2    # "count":I
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_3
    const/4 v6, 0x0

    .local v6, "localVisible":Z
    goto/16 :goto_0

    .line 746
    .end local v6    # "localVisible":Z
    .restart local v5    # "id":I
    .restart local v7    # "name":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 776
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v10, :cond_6

    .line 777
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    iget-object v8, v10, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 778
    .local v8, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v8, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 733
    .end local v8    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_6
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
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

    .prologue
    .line 1642
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1643
    const-string/jumbo v8, "null"

    return-object v8

    .line 1646
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1647
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1649
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v4

    .line 1650
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1651
    aget-object v2, v4, v5

    .line 1653
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1655
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    if-eqz v3, :cond_1

    .line 1660
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\n"

    const-string/jumbo v10, "\\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1661
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    .end local v7    # "value":Ljava/lang/String;
    :goto_1
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1650
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1663
    .restart local v3    # "fieldValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1666
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 1671
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
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

    .prologue
    .line 1599
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1600
    const-string/jumbo v12, "null"

    return-object v12

    .line 1603
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1604
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1606
    .local v7, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v7

    .line 1607
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1608
    aget-object v5, v7, v4

    .line 1610
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    :try_start_0
    nop

    nop

    invoke-virtual {v5, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1611
    .local v6, "methodValue":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 1613
    .local v9, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1614
    .local v8, "property":Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v8}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1616
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

    .line 1607
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1618
    .restart local v6    # "methodValue":Ljava/lang/Object;
    .restart local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    const-string/jumbo v12, "()="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    if-eqz v6, :cond_2

    .line 1623
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, "\\n"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1624
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    .end local v11    # "value":Ljava/lang/String;
    :goto_2
    const-string/jumbo v12, "; "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1630
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 1626
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v6    # "methodValue":Ljava/lang/Object;
    .restart local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v12, "null"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1633
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 1638
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "method":Ljava/lang/reflect/Method;
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

    .prologue
    .line 1537
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1538
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1540
    :cond_0
    sget-object v5, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1542
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1543
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 1544
    return-object v2

    .line 1547
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v3, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1550
    array-length v0, v2

    .line 1551
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1552
    aget-object v1, v2, v4

    .line 1553
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1554
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1555
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1559
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1560
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
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

    .prologue
    .line 1566
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1567
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1569
    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1571
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1572
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    .line 1573
    return-object v5

    .line 1576
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1579
    array-length v0, v5

    .line 1580
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1581
    aget-object v4, v5, v2

    .line 1582
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    .line 1583
    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    .line 1582
    if-eqz v6, :cond_2

    .line 1584
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_2

    .line 1585
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1586
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1590
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1591
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    return-object v5
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 482
    const-string/jumbo v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    invoke-static {p0, v3, v4, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 484
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

    .line 486
    invoke-static {p0, v3, v4, p3}, Landroid/view/ViewDebug;->dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto :goto_0

    .line 487
    :cond_2
    const-string/jumbo v1, "DUMP_THEME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 489
    :cond_3
    const-string/jumbo v1, "DUMPZ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 490
    invoke-static {p0, p3}, Landroid/view/ViewDebug$DumpZ;->-wrap0(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 491
    :cond_4
    const-string/jumbo v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 492
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 494
    :cond_5
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "params":[Ljava/lang/String;
    const-string/jumbo v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 496
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_6
    const-string/jumbo v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 498
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_7
    const-string/jumbo v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 500
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_8
    const-string/jumbo v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 502
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 503
    :cond_9
    const-string/jumbo v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    const/4 v8, 0x0

    .line 864
    .local v8, "out":Ljava/io/BufferedWriter;
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

    .line 865
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 866
    .local v9, "view":Landroid/view/View;
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 867
    move-object v0, v9

    nop

    nop

    move-object v2, v0

    .line 868
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 871
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    const-string/jumbo v1, "DONE."

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 876
    if-eqz v3, :cond_1

    .line 877
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 861
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 873
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v3, v8

    .line 874
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    const-string/jumbo v1, "View"

    const-string/jumbo v4, "Problem dumping the view:"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 876
    if-eqz v3, :cond_1

    .line 877
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 875
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    move-object v3, v8

    .line 876
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_2

    .line 877
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 875
    :cond_2
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 873
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 1682
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1683
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 1684
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    const-string/jumbo v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void
.end method

.method private static dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/IGLViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1063
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1064
    return-void

    .line 1067
    :cond_0
    invoke-interface {p1}, Landroid/view/IGLViewGroup;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "obj$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1068
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, Landroid/view/IGLViewGroup;

    if-eqz v2, :cond_2

    .line 1069
    check-cast v0, Landroid/view/IGLViewGroup;

    .line 1070
    .end local v0    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, p3, 0x1

    .line 1069
    invoke-static {p0, v0, p2, v2, p4}, Landroid/view/ViewDebug;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_0

    .line 1071
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, v0, Landroid/view/IGLView;

    if-eqz v2, :cond_1

    .line 1072
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_0

    .line 1061
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private static dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1049
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1050
    return-void

    .line 1053
    :cond_0
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    .line 1054
    .local v1, "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/IGLContext;

    if-eqz v2, :cond_1

    .line 1055
    check-cast v1, Landroid/view/IGLContext;

    .end local v1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    invoke-interface {v1}, Landroid/view/IGLContext;->getGLRootView()Landroid/view/IGLViewGroup;

    move-result-object v0

    .line 1056
    .local v0, "group":Landroid/view/IGLViewGroup;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, Landroid/view/ViewDebug;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    .line 1047
    .end local v0    # "group":Landroid/view/IGLViewGroup;
    :cond_1
    return-void
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    const/4 v3, 0x0

    .line 911
    .local v3, "out":Ljava/io/BufferedWriter;
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

    .line 912
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 913
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 912
    invoke-static {v5, v6}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "attributes":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 915
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 916
    aget-object v5, v0, v2

    if-eqz v5, :cond_0

    .line 917
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

    .line 918
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

    .line 915
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 922
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v5, "DONE."

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 927
    if-eqz v4, :cond_2

    .line 928
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    move-object v3, v4

    .line 908
    .end local v0    # "attributes":[Ljava/lang/String;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :cond_3
    :goto_1
    return-void

    .line 924
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 925
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v5, "View"

    const-string/jumbo v6, "Problem dumping View Theme:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 927
    if-eqz v3, :cond_3

    .line 928
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 926
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 927
    :goto_3
    if-eqz v3, :cond_4

    .line 928
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 926
    :cond_4
    throw v5

    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 924
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private static dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1081
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 1082
    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1081
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1084
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    const-string/jumbo v0, "ViewOverlay"

    .line 1088
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1089
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1091
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1092
    if-eqz p4, :cond_2

    .line 1093
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1095
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    const/4 v3, 0x1

    return v3

    .line 1096
    .end local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1097
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "View"

    const-string/jumbo v4, "Error while dumping hierarchy tree"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v3, 0x0

    return v3
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .prologue
    .line 1015
    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    return-void

    .line 1019
    :cond_0
    if-eqz p4, :cond_1

    .line 1020
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1024
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 1025
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1026
    .local v9, "view":Landroid/view/View;
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v1, v9

    .line 1027
    nop

    nop

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1034
    :goto_1
    iget-object v0, v9, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v8

    .line 1036
    .local v8, "overlay":Landroid/view/ViewOverlay;
    iget-object v1, v8, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 1037
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 1024
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    .end local v8    # "overlay":Landroid/view/ViewOverlay;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1029
    :cond_3
    instance-of v0, v9, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_4

    move-object v0, v9

    .line 1030
    nop

    nop

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p5}, Landroid/view/ViewDebug;->dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V

    goto :goto_1

    .line 1032
    :cond_4
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v9, p2, v0, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_1

    .line 1041
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_6

    .line 1042
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    .end local p1    # "group":Landroid/view/ViewGroup;
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 1014
    :cond_6
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1183
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1189
    if-nez p1, :cond_0

    .line 1190
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

    .line 1191
    return-void

    .line 1194
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1196
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1197
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1199
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 1187
    return-void
.end method

.method public static dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 239
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2221
    const/16 v85, 0x0

    .line 2223
    .local v85, "isDebug":Z
    const/16 v170, 0x0

    .line 2226
    .local v170, "out":Ljava/io/BufferedWriter;
    const/16 v190, 0x1

    .line 2227
    .local v190, "screenOn":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v234

    const-string/jumbo v235, "power"

    invoke-virtual/range {v234 .. v235}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v179

    check-cast v179, Landroid/os/PowerManager;

    .line 2228
    .local v179, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v179 .. v179}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v190

    .line 2229
    .local v190, "screenOn":Z
    const/16 v120, 0x0

    .line 2231
    .local v120, "mGLObjectZ":Z
    new-instance v172, Ljava/lang/StringBuilder;

    invoke-direct/range {v172 .. v172}, Ljava/lang/StringBuilder;-><init>()V

    .line 2232
    .local v172, "outString":Ljava/lang/StringBuilder;
    const/16 v159, 0x3

    .line 2234
    .local v159, "newlineReplacement":C
    const/16 v204, 0x0

    .line 2235
    .local v204, "tempString":Ljava/lang/String;
    const/16 v202, 0x0

    .line 2236
    .local v202, "tempResources":Landroid/content/res/Resources;
    const/16 v50, 0x0

    .line 2238
    .local v50, "currentView":Ljava/lang/Object;
    const/16 v46, 0x0

    .line 2239
    .local v46, "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v45, 0x0

    .line 2240
    .local v45, "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v40, 0x0

    .line 2241
    .local v40, "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v44, 0x0

    .line 2242
    .local v44, "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v41, 0x0

    .line 2243
    .local v41, "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v42, 0x0

    .line 2244
    .local v42, "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v43, 0x0

    .line 2246
    .local v43, "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v31, 0x0

    .line 2247
    .local v31, "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v29, 0x0

    .line 2248
    .local v29, "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v27, 0x0

    .line 2249
    .local v27, "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v30, 0x0

    .line 2250
    .local v30, "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v28, 0x0

    .line 2254
    .local v28, "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v36, 0x0

    .line 2255
    .local v36, "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v35, 0x0

    .line 2256
    .local v35, "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v33, 0x0

    .line 2257
    .local v33, "classHomeItemView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v32, 0x0

    .line 2258
    .local v32, "classHomeFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v34, 0x0

    .line 2259
    .local v34, "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v39, 0x0

    .line 2260
    .local v39, "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v105, 0x0

    .line 2262
    .local v105, "mActiveFolderItem":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2263
    .local v6, "HomeFragment":I
    const/4 v5, 0x1

    .line 2264
    .local v5, "AppsFragment":I
    const/4 v8, 0x2

    .line 2267
    .local v8, "WidgetsFragment":I
    const/16 v173, 0x0

    .line 2270
    .local v173, "packageName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 2271
    .local v26, "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v38, 0x0

    .line 2274
    .local v38, "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v136, 0x0

    .line 2275
    .local v136, "mRootWidth":I
    const/16 v111, 0x0

    .line 2276
    .local v111, "mCameraRootWidth":I
    const/16 v110, 0x0

    .line 2278
    .local v110, "mCameraRootHeight":I
    const/16 v64, 0x0

    .line 2281
    .local v64, "field":Ljava/lang/reflect/Field;
    new-instance v195, Ljava/util/ArrayList;

    invoke-direct/range {v195 .. v195}, Ljava/util/ArrayList;-><init>()V

    .line 2282
    .local v195, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v222, Ljava/util/ArrayList;

    invoke-direct/range {v222 .. v222}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    .local v222, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v95, Ljava/util/Hashtable;

    invoke-direct/range {v95 .. v95}, Ljava/util/Hashtable;-><init>()V

    .line 2285
    .local v95, "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v50

    .line 2287
    move-object/from16 v0, v50

    nop

    nop

    move-object/from16 v234, v0

    invoke-virtual/range {v234 .. v234}, Landroid/view/View;->getVisibility()I

    move-result v234

    if-nez v234, :cond_0

    .line 2288
    move-object/from16 v0, v195

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2289
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

    .line 2292
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

    .line 2293
    .end local v26    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v27    # "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v32    # "classHomeFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "classHomeItemView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v35    # "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v38    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v40    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v42    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v43    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v44    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v45    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v46    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v105    # "mActiveFolderItem":Ljava/lang/Object;
    .end local v202    # "tempResources":Landroid/content/res/Resources;
    .end local v204    # "tempString":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    if-lez v234, :cond_70

    .line 2294
    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    add-int/lit8 v84, v234, -0x1

    .line 2295
    .local v84, "indexToRemove":I
    move-object/from16 v0, v195

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v50

    .line 2297
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

    .line 2298
    .local v94, "level":I
    move-object/from16 v0, v222

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2300
    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v234, v0

    if-eqz v234, :cond_3

    .line 2301
    move-object/from16 v0, v50

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v220, v0

    .line 2302
    .local v220, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v220 .. v220}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v234

    add-int/lit8 v80, v234, -0x1

    .local v80, "i":I
    :goto_1
    if-ltz v80, :cond_1

    .line 2303
    move-object/from16 v0, v220

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v205

    .line 2304
    .local v205, "tempView":Landroid/view/View;
    invoke-virtual/range {v205 .. v205}, Landroid/view/View;->getVisibility()I

    move-result v234

    if-nez v234, :cond_2

    .line 2305
    const-string/jumbo v234, "TDK"

    invoke-virtual/range {v205 .. v205}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    move-object/from16 v0, v195

    move-object/from16 v1, v205

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
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

    .line 2302
    :cond_2
    add-int/lit8 v80, v80, -0x1

    goto :goto_1

    .line 2313
    .end local v80    # "i":I
    .end local v205    # "tempView":Landroid/view/View;
    .end local v220    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeSurfaceView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_2d

    .line 2314
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

    .line 2317
    :try_start_1
    const-class v234, Landroid/view/SurfaceView;

    const-string/jumbo v235, "mCallbacks"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v109

    .line 2318
    .local v109, "mCallBacks":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v109

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2319
    move-object/from16 v0, v109

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v201

    .line 2320
    .local v201, "tempObject":Ljava/lang/Object;
    if-eqz v201, :cond_1

    .line 2321
    move-object/from16 v0, v201

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v100, v0

    .line 2323
    .local v100, "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-interface/range {v100 .. v100}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v169

    .local v169, "object$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_1

    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v168

    .line 2325
    .local v168, "object":Ljava/lang/Object;
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_4

    .line 2327
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mVisibleFragmentId"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v49

    .line 2328
    .local v49, "currentFragmentField":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2329
    move-object/from16 v0, v49

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v147

    .line 2331
    .local v147, "mVisibleFragmentId":I
    if-nez v147, :cond_15

    .line 2333
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mHomeFragment"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v125

    .line 2334
    .local v125, "mHomeFragment":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v125

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2335
    move-object/from16 v0, v125

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v77

    .line 2338
    .local v77, "homeFragmentObj":Ljava/lang/Object;
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v126

    .line 2339
    .local v126, "mHomePresenter":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v126

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2340
    move-object/from16 v0, v126

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v79

    .line 2345
    .local v79, "homePresenterObj":Ljava/lang/Object;
    :try_start_2
    invoke-virtual/range {v79 .. v79}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mFolderPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v119

    .line 2346
    .local v119, "mFolderPresenter":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v119

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2347
    move-object/from16 v0, v119

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v124

    .line 2350
    .local v124, "mHomeFolderPresenter":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 2352
    .local v25, "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v124 .. v124}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2354
    .local v176, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v176, :cond_5

    .line 2355
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "FolderPresenterBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_6

    .line 2356
    move-object/from16 v25, v176

    .line 2361
    .end local v25    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    if-eqz v25, :cond_a

    .line 2362
    const-string/jumbo v234, "getActiveOpenFolderView"

    const/16 v235, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v69

    .line 2363
    .local v69, "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2364
    const/16 v234, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v124

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2365
    .local v10, "activeOpenFolderView":Ljava/lang/Object;
    if-eqz v10, :cond_4

    .line 2366
    const-string/jumbo v234, "getActiveFolderItem"

    const/16 v235, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v68

    .line 2367
    .local v68, "getActiveFolderItem":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v68

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2368
    const/16 v234, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v124

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    .line 2369
    .restart local v105    # "mActiveFolderItem":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    .line 2370
    .local v34, "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v36, :cond_8

    .line 2372
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2374
    :goto_4
    if-eqz v176, :cond_4

    .line 2375
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_7

    .line 2376
    move-object/from16 v36, v176

    .line 2377
    .local v36, "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_2

    .line 2359
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v68    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v69    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .end local v105    # "mActiveFolderItem":Ljava/lang/Object;
    .restart local v25    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_3

    .line 2379
    .end local v25    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .restart local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v68    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .restart local v69    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .restart local v105    # "mActiveFolderItem":Ljava/lang/Object;
    :cond_7
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_4

    .line 2383
    :cond_8
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2384
    .local v227, "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2386
    move-object/from16 v0, v227

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_4

    .line 2387
    move-object/from16 v0, v195

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
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

    .line 2511
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v68    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v69    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    .end local v105    # "mActiveFolderItem":Ljava/lang/Object;
    .end local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v124    # "mHomeFolderPresenter":Ljava/lang/Object;
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v60

    .line 2512
    .local v60, "ex":Ljava/lang/Exception;
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

    .line 2763
    .end local v49    # "currentFragmentField":Ljava/lang/reflect/Field;
    .end local v60    # "ex":Ljava/lang/Exception;
    .end local v77    # "homeFragmentObj":Ljava/lang/Object;
    .end local v79    # "homePresenterObj":Ljava/lang/Object;
    .end local v100    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v109    # "mCallBacks":Ljava/lang/reflect/Field;
    .end local v125    # "mHomeFragment":Ljava/lang/reflect/Field;
    .end local v126    # "mHomePresenter":Ljava/lang/reflect/Field;
    .end local v147    # "mVisibleFragmentId":I
    .end local v168    # "object":Ljava/lang/Object;
    .end local v169    # "object$iterator":Ljava/util/Iterator;
    .end local v201    # "tempObject":Ljava/lang/Object;
    :catch_1
    move-exception v60

    .line 2764
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 4442
    .end local v5    # "AppsFragment":I
    .end local v6    # "HomeFragment":I
    .end local v8    # "WidgetsFragment":I
    .end local v50    # "currentView":Ljava/lang/Object;
    .end local v60    # "ex":Ljava/lang/Exception;
    .end local v84    # "indexToRemove":I
    .end local v94    # "level":I
    .end local v95    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v110    # "mCameraRootHeight":I
    .end local v111    # "mCameraRootWidth":I
    .end local v120    # "mGLObjectZ":Z
    .end local v136    # "mRootWidth":I
    .end local v159    # "newlineReplacement":C
    .end local v172    # "outString":Ljava/lang/StringBuilder;
    .end local v173    # "packageName":Ljava/lang/String;
    .end local v179    # "pm":Landroid/os/PowerManager;
    .end local v190    # "screenOn":Z
    .end local v195    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v222    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_2
    move-exception v52

    .line 4443
    .end local v170    # "out":Ljava/io/BufferedWriter;
    .local v52, "e":Ljava/lang/Exception;
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

    .line 4445
    if-eqz v170, :cond_9

    .line 4446
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedWriter;->close()V

    .line 2220
    .end local v52    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_6
    return-void

    .line 2396
    .restart local v5    # "AppsFragment":I
    .restart local v6    # "HomeFragment":I
    .restart local v8    # "WidgetsFragment":I
    .restart local v49    # "currentFragmentField":Ljava/lang/reflect/Field;
    .restart local v50    # "currentView":Ljava/lang/Object;
    .restart local v77    # "homeFragmentObj":Ljava/lang/Object;
    .restart local v79    # "homePresenterObj":Ljava/lang/Object;
    .restart local v84    # "indexToRemove":I
    .restart local v94    # "level":I
    .restart local v95    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v100    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v109    # "mCallBacks":Ljava/lang/reflect/Field;
    .restart local v110    # "mCameraRootHeight":I
    .restart local v111    # "mCameraRootWidth":I
    .restart local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .restart local v120    # "mGLObjectZ":Z
    .restart local v124    # "mHomeFolderPresenter":Ljava/lang/Object;
    .restart local v125    # "mHomeFragment":Ljava/lang/reflect/Field;
    .restart local v126    # "mHomePresenter":Ljava/lang/reflect/Field;
    .restart local v136    # "mRootWidth":I
    .restart local v147    # "mVisibleFragmentId":I
    .restart local v159    # "newlineReplacement":C
    .restart local v168    # "object":Ljava/lang/Object;
    .restart local v169    # "object$iterator":Ljava/util/Iterator;
    .restart local v170    # "out":Ljava/io/BufferedWriter;
    .restart local v172    # "outString":Ljava/lang/StringBuilder;
    .restart local v173    # "packageName":Ljava/lang/String;
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v179    # "pm":Landroid/os/PowerManager;
    .restart local v190    # "screenOn":Z
    .restart local v195    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v201    # "tempObject":Ljava/lang/Object;
    .restart local v222    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_a
    :try_start_6
    invoke-virtual/range {v79 .. v79}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mPagePresenters"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v131

    .line 2397
    .local v131, "mPagePresenters":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v131

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2398
    move-object/from16 v0, v131

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v174

    .line 2401
    .local v174, "pagePresenterList":Ljava/lang/Object;
    invoke-virtual/range {v79 .. v79}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTopFivePresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v146

    .line 2402
    .local v146, "mTopFivePresenter":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v146

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2403
    move-object/from16 v0, v146

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v164

    .line 2406
    .local v164, "objTopFivePresenter":Ljava/lang/Object;
    invoke-virtual/range {v164 .. v164}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAdapter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v199

    .line 2407
    .local v199, "tempField":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v199

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2408
    move-object/from16 v0, v199

    move-object/from16 v1, v164

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v162

    .line 2410
    .local v162, "objAdapterList":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 2411
    .local v16, "baseItemList":Ljava/lang/Object;
    const/16 v215, 0x0

    .line 2414
    .local v215, "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
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

    .line 2415
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/List;

    move-object/from16 v215, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2424
    .end local v16    # "baseItemList":Ljava/lang/Object;
    .end local v215    # "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_7
    :try_start_8
    move-object/from16 v0, v174

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v15, v0

    .line 2426
    .local v15, "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    const/16 v80, 0x0

    .restart local v80    # "i":I
    :goto_8
    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v234

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_13

    .line 2427
    const/16 v37, 0x0

    .line 2428
    .local v37, "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 2429
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

    .line 2434
    .local v37, "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 2435
    .local v154, "mtd":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v154

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2436
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

    .line 2437
    .local v197, "temp":Ljava/lang/Object;
    move-object/from16 v0, v197

    check-cast v0, Ljava/util/List;

    move-object v7, v0

    .line 2439
    .local v7, "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v35, :cond_f

    .line 2441
    const/16 v234, 0x0

    move/from16 v0, v234

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2443
    :goto_a
    if-eqz v176, :cond_b

    .line 2444
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v234

    if-eqz v234, :cond_e

    .line 2445
    move-object/from16 v35, v176

    .line 2426
    .end local v7    # "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v154    # "mtd":Ljava/lang/reflect/Method;
    .end local v197    # "temp":Ljava/lang/Object;
    :cond_b
    :goto_b
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_8

    .line 2418
    .end local v15    # "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    .end local v37    # "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v80    # "i":I
    .restart local v215    # "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
    :catch_3
    move-exception v60

    .line 2419
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 4444
    .end local v5    # "AppsFragment":I
    .end local v6    # "HomeFragment":I
    .end local v8    # "WidgetsFragment":I
    .end local v49    # "currentFragmentField":Ljava/lang/reflect/Field;
    .end local v50    # "currentView":Ljava/lang/Object;
    .end local v60    # "ex":Ljava/lang/Exception;
    .end local v77    # "homeFragmentObj":Ljava/lang/Object;
    .end local v79    # "homePresenterObj":Ljava/lang/Object;
    .end local v84    # "indexToRemove":I
    .end local v94    # "level":I
    .end local v95    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v100    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v109    # "mCallBacks":Ljava/lang/reflect/Field;
    .end local v110    # "mCameraRootHeight":I
    .end local v111    # "mCameraRootWidth":I
    .end local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v120    # "mGLObjectZ":Z
    .end local v124    # "mHomeFolderPresenter":Ljava/lang/Object;
    .end local v125    # "mHomeFragment":Ljava/lang/reflect/Field;
    .end local v126    # "mHomePresenter":Ljava/lang/reflect/Field;
    .end local v131    # "mPagePresenters":Ljava/lang/reflect/Field;
    .end local v136    # "mRootWidth":I
    .end local v146    # "mTopFivePresenter":Ljava/lang/reflect/Field;
    .end local v147    # "mVisibleFragmentId":I
    .end local v159    # "newlineReplacement":C
    .end local v162    # "objAdapterList":Ljava/lang/Object;
    .end local v164    # "objTopFivePresenter":Ljava/lang/Object;
    .end local v168    # "object":Ljava/lang/Object;
    .end local v169    # "object$iterator":Ljava/util/Iterator;
    .end local v170    # "out":Ljava/io/BufferedWriter;
    .end local v172    # "outString":Ljava/lang/StringBuilder;
    .end local v173    # "packageName":Ljava/lang/String;
    .end local v174    # "pagePresenterList":Ljava/lang/Object;
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v179    # "pm":Landroid/os/PowerManager;
    .end local v190    # "screenOn":Z
    .end local v195    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v199    # "tempField":Ljava/lang/reflect/Field;
    .end local v201    # "tempObject":Ljava/lang/Object;
    .end local v215    # "topFiveList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v222    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v234

    .line 4445
    :goto_c
    if-eqz v170, :cond_c

    .line 4446
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedWriter;->close()V

    .line 4444
    :cond_c
    throw v234

    .line 2431
    .restart local v5    # "AppsFragment":I
    .restart local v6    # "HomeFragment":I
    .restart local v8    # "WidgetsFragment":I
    .restart local v15    # "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    .local v37, "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v49    # "currentFragmentField":Ljava/lang/reflect/Field;
    .restart local v50    # "currentView":Ljava/lang/Object;
    .restart local v77    # "homeFragmentObj":Ljava/lang/Object;
    .restart local v79    # "homePresenterObj":Ljava/lang/Object;
    .restart local v80    # "i":I
    .restart local v84    # "indexToRemove":I
    .restart local v94    # "level":I
    .restart local v95    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v100    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v109    # "mCallBacks":Ljava/lang/reflect/Field;
    .restart local v110    # "mCameraRootHeight":I
    .restart local v111    # "mCameraRootWidth":I
    .restart local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .restart local v120    # "mGLObjectZ":Z
    .restart local v124    # "mHomeFolderPresenter":Ljava/lang/Object;
    .restart local v125    # "mHomeFragment":Ljava/lang/reflect/Field;
    .restart local v126    # "mHomePresenter":Ljava/lang/reflect/Field;
    .restart local v131    # "mPagePresenters":Ljava/lang/reflect/Field;
    .restart local v136    # "mRootWidth":I
    .restart local v146    # "mTopFivePresenter":Ljava/lang/reflect/Field;
    .restart local v147    # "mVisibleFragmentId":I
    .restart local v159    # "newlineReplacement":C
    .restart local v162    # "objAdapterList":Ljava/lang/Object;
    .restart local v164    # "objTopFivePresenter":Ljava/lang/Object;
    .restart local v168    # "object":Ljava/lang/Object;
    .restart local v169    # "object$iterator":Ljava/util/Iterator;
    .restart local v170    # "out":Ljava/io/BufferedWriter;
    .restart local v172    # "outString":Ljava/lang/StringBuilder;
    .restart local v173    # "packageName":Ljava/lang/String;
    .restart local v174    # "pagePresenterList":Ljava/lang/Object;
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v179    # "pm":Landroid/os/PowerManager;
    .restart local v190    # "screenOn":Z
    .restart local v195    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v199    # "tempField":Ljava/lang/reflect/Field;
    .restart local v201    # "tempObject":Ljava/lang/Object;
    .restart local v222    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
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

    .local v37, "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_9

    .line 2448
    .restart local v7    # "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v154    # "mtd":Ljava/lang/reflect/Method;
    .restart local v197    # "temp":Ljava/lang/Object;
    :cond_e
    :try_start_c
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_a

    .line 2452
    :cond_f
    const/16 v92, 0x0

    .local v92, "j":I
    :goto_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v92

    move/from16 v1, v234

    if-ge v0, v1, :cond_b

    .line 2455
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

    .line 2456
    .local v70, "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2457
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

    .line 2459
    .local v78, "homeItem":Ljava/lang/Object;
    if-nez v36, :cond_12

    .line 2461
    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2463
    :goto_e
    if-eqz v176, :cond_10

    .line 2464
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_11

    .line 2465
    move-object/from16 v36, v176

    .line 2452
    :cond_10
    :goto_f
    add-int/lit8 v92, v92, 0x1

    goto :goto_d

    .line 2468
    :cond_11
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_e

    .line 2475
    :cond_12
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2476
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2478
    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_10

    .line 2479
    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
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

    .line 2485
    .end local v7    # "ObjList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v78    # "homeItem":Ljava/lang/Object;
    .end local v92    # "j":I
    .end local v154    # "mtd":Ljava/lang/reflect/Method;
    .end local v197    # "temp":Ljava/lang/Object;
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    :catch_4
    move-exception v52

    .line 2486
    .restart local v52    # "e":Ljava/lang/Exception;
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

    .line 2491
    .end local v37    # "classPagePresenter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v52    # "e":Ljava/lang/Exception;
    :cond_13
    if-eqz v35, :cond_4

    .line 2492
    const/16 v92, 0x0

    .restart local v92    # "j":I
    :goto_10
    invoke-interface/range {v215 .. v215}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v92

    move/from16 v1, v234

    if-ge v0, v1, :cond_4

    .line 2493
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

    .line 2494
    .restart local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2495
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

    .line 2497
    .restart local v78    # "homeItem":Ljava/lang/Object;
    if-eqz v36, :cond_14

    .line 2500
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2501
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2503
    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_14

    .line 2504
    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2505
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

    .line 2492
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    :cond_14
    add-int/lit8 v92, v92, 0x1

    goto/16 :goto_10

    .line 2516
    .end local v15    # "arrList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<*>;"
    .end local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v77    # "homeFragmentObj":Ljava/lang/Object;
    .end local v78    # "homeItem":Ljava/lang/Object;
    .end local v79    # "homePresenterObj":Ljava/lang/Object;
    .end local v80    # "i":I
    .end local v92    # "j":I
    .end local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v124    # "mHomeFolderPresenter":Ljava/lang/Object;
    .end local v125    # "mHomeFragment":Ljava/lang/reflect/Field;
    .end local v126    # "mHomePresenter":Ljava/lang/reflect/Field;
    .end local v131    # "mPagePresenters":Ljava/lang/reflect/Field;
    .end local v146    # "mTopFivePresenter":Ljava/lang/reflect/Field;
    .end local v162    # "objAdapterList":Ljava/lang/Object;
    .end local v164    # "objTopFivePresenter":Ljava/lang/Object;
    .end local v174    # "pagePresenterList":Ljava/lang/Object;
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v199    # "tempField":Ljava/lang/reflect/Field;
    :cond_15
    const/16 v234, 0x1

    move/from16 v0, v147

    move/from16 v1, v234

    if-ne v0, v1, :cond_27

    .line 2519
    :try_start_e
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAppsFragment"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v107

    .line 2520
    .local v107, "mAppsFragment":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v107

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2521
    move-object/from16 v0, v107

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2525
    .local v14, "appsFragmentObj":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAppsPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v108

    .line 2526
    .local v108, "mAppsPresenter":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v108

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2527
    move-object/from16 v0, v108

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v12

    .line 2532
    .local v12, "appPresenterObj":Ljava/lang/Object;
    const/16 v66, 0x0

    .line 2533
    .local v66, "folderItemList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v13, 0x0

    .line 2535
    .local v13, "appsFolderPresenterObj":Ljava/lang/Object;
    :try_start_f
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mFolderPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v119

    .line 2536
    .restart local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v119

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2537
    move-object/from16 v0, v119

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2539
    const/16 v25, 0x0

    .line 2541
    .restart local v25    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2543
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_11
    if-eqz v176, :cond_16

    .line 2544
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "FolderPresenterBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_18

    .line 2545
    move-object/from16 v25, v176

    .line 2550
    .end local v25    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    const/4 v10, 0x0

    .line 2551
    .restart local v10    # "activeOpenFolderView":Ljava/lang/Object;
    if-eqz v25, :cond_17

    .line 2552
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

    .line 2553
    .restart local v69    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2554
    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v69

    move-object/from16 v1, v234

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2556
    .end local v10    # "activeOpenFolderView":Ljava/lang/Object;
    .end local v69    # "getActiveOpenFolderView":Ljava/lang/reflect/Method;
    :cond_17
    if-eqz v10, :cond_1b

    .line 2557
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

    .line 2558
    .restart local v68    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v68

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2559
    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v68

    move-object/from16 v1, v234

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    .line 2560
    .restart local v105    # "mActiveFolderItem":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    .line 2561
    .restart local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v36, :cond_1a

    .line 2563
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2565
    :goto_12
    if-eqz v176, :cond_4

    .line 2566
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_19

    .line 2567
    move-object/from16 v36, v176

    .line 2568
    .restart local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_2

    .line 2548
    .end local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v68    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v105    # "mActiveFolderItem":Ljava/lang/Object;
    .restart local v25    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_11

    .line 2570
    .end local v25    # "classFolderPresenterBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v68    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .restart local v105    # "mActiveFolderItem":Ljava/lang/Object;
    :cond_19
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_12

    .line 2577
    :cond_1a
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2578
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2580
    move-object/from16 v0, v227

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_4

    .line 2581
    move-object/from16 v0, v195

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2582
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

    .line 2695
    .end local v13    # "appsFolderPresenterObj":Ljava/lang/Object;
    .end local v34    # "classHomeOpenFolderView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v66    # "folderItemList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v68    # "getActiveFolderItem":Ljava/lang/reflect/Method;
    .end local v105    # "mActiveFolderItem":Ljava/lang/Object;
    .end local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    :catch_5
    move-exception v60

    .line 2696
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 2590
    .end local v60    # "ex":Ljava/lang/Exception;
    .restart local v13    # "appsFolderPresenterObj":Ljava/lang/Object;
    .restart local v66    # "folderItemList":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 2591
    .local v66, "folderItemList":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, " Found folder item list "

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    const/16 v80, 0x0

    .restart local v80    # "i":I
    :goto_13
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_4

    .line 2595
    if-nez v35, :cond_1f

    .line 2597
    move-object/from16 v0, v66

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2599
    :goto_14
    if-eqz v176, :cond_1c

    .line 2600
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_1e

    .line 2601
    move-object/from16 v35, v176

    .line 2640
    :cond_1c
    :goto_15
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mItemList"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v127

    .line 2641
    .local v127, "mItemList":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v127

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2643
    move-object/from16 v0, v127

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/HashSet;

    .line 2646
    .local v88, "itemList":Ljava/util/HashSet;, "Ljava/util/HashSet<*>;"
    invoke-interface/range {v88 .. v88}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v194

    .local v194, "setObj$iterator":Ljava/util/Iterator;
    :cond_1d
    :goto_16
    invoke-interface/range {v194 .. v194}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_26

    invoke-interface/range {v194 .. v194}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v193

    .line 2648
    .local v193, "setObj":Ljava/lang/Object;
    if-nez v35, :cond_23

    .line 2650
    invoke-virtual/range {v193 .. v193}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2652
    :goto_17
    if-eqz v176, :cond_1d

    .line 2653
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_22

    .line 2654
    move-object/from16 v35, v176

    .line 2655
    .local v35, "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_16

    .line 2604
    .end local v35    # "classItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v88    # "itemList":Ljava/util/HashSet;, "Ljava/util/HashSet<*>;"
    .end local v127    # "mItemList":Ljava/lang/reflect/Field;
    .end local v193    # "setObj":Ljava/lang/Object;
    .end local v194    # "setObj$iterator":Ljava/util/Iterator;
    :cond_1e
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_14

    .line 2611
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

    .line 2612
    .restart local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2613
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

    .line 2615
    .restart local v78    # "homeItem":Ljava/lang/Object;
    if-nez v36, :cond_21

    .line 2617
    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2619
    :goto_18
    if-eqz v176, :cond_1c

    .line 2620
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_20

    .line 2621
    move-object/from16 v36, v176

    .line 2622
    .restart local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_15

    .line 2624
    .end local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_18

    .line 2629
    :cond_21
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2630
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2632
    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_1c

    .line 2633
    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
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

    .line 2657
    .end local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v78    # "homeItem":Ljava/lang/Object;
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    .restart local v88    # "itemList":Ljava/util/HashSet;, "Ljava/util/HashSet<*>;"
    .restart local v127    # "mItemList":Ljava/lang/reflect/Field;
    .restart local v193    # "setObj":Ljava/lang/Object;
    .restart local v194    # "setObj$iterator":Ljava/util/Iterator;
    :cond_22
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_17

    .line 2663
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

    .line 2664
    .restart local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2665
    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v70

    move-object/from16 v1, v193

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v78

    .line 2667
    .restart local v78    # "homeItem":Ljava/lang/Object;
    if-nez v36, :cond_25

    .line 2669
    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2671
    :goto_19
    if-eqz v176, :cond_1d

    .line 2672
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_24

    .line 2673
    move-object/from16 v36, v176

    .line 2674
    .restart local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_16

    .line 2676
    .end local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_24
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_19

    .line 2683
    :cond_25
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2684
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2686
    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_1d

    .line 2687
    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
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

    .line 2593
    .end local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v78    # "homeItem":Ljava/lang/Object;
    .end local v193    # "setObj":Ljava/lang/Object;
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    :cond_26
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_13

    .line 2700
    .end local v12    # "appPresenterObj":Ljava/lang/Object;
    .end local v13    # "appsFolderPresenterObj":Ljava/lang/Object;
    .end local v14    # "appsFragmentObj":Ljava/lang/Object;
    .end local v66    # "folderItemList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v80    # "i":I
    .end local v88    # "itemList":Ljava/util/HashSet;, "Ljava/util/HashSet<*>;"
    .end local v107    # "mAppsFragment":Ljava/lang/reflect/Field;
    .end local v108    # "mAppsPresenter":Ljava/lang/reflect/Field;
    .end local v119    # "mFolderPresenter":Ljava/lang/reflect/Field;
    .end local v127    # "mItemList":Ljava/lang/reflect/Field;
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v194    # "setObj$iterator":Ljava/util/Iterator;
    :cond_27
    const/16 v234, 0x2

    move/from16 v0, v147

    move/from16 v1, v234

    if-ne v0, v1, :cond_4

    .line 2702
    :try_start_12
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidgetsFragment"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v148

    .line 2703
    .local v148, "mWidgetsFragment":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v148

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2704
    move-object/from16 v0, v148

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v229

    .line 2708
    .local v229, "widgetsFragmentObj":Ljava/lang/Object;
    invoke-virtual/range {v229 .. v229}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidgetsPresenter"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v149

    .line 2709
    .local v149, "mWidgetsPresenter":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v149

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2710
    move-object/from16 v0, v149

    move-object/from16 v1, v229

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v230

    .line 2714
    .local v230, "widgetsPresenterObj":Ljava/lang/Object;
    invoke-virtual/range {v230 .. v230}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidgetItemList"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v127

    .line 2715
    .restart local v127    # "mItemList":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v127

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2716
    move-object/from16 v0, v127

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Ljava/util/List;

    .line 2717
    .local v89, "itemList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/16 v80, 0x0

    .restart local v80    # "i":I
    :goto_1a
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->size()I

    move-result v234

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_4

    .line 2719
    if-nez v35, :cond_2a

    .line 2721
    move-object/from16 v0, v89

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2723
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1b
    if-eqz v176, :cond_28

    .line 2724
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_29

    .line 2725
    move-object/from16 v35, v176

    .line 2717
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_28
    :goto_1c
    add-int/lit8 v80, v80, 0x1

    goto :goto_1a

    .line 2728
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_29
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_1b

    .line 2732
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2a
    const-string/jumbo v234, "getItemView"

    const/16 v235, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v70

    .line 2733
    .restart local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2734
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

    .line 2736
    .restart local v78    # "homeItem":Ljava/lang/Object;
    if-nez v36, :cond_2c

    .line 2738
    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2740
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1d
    if-eqz v176, :cond_28

    .line 2741
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_2b

    .line 2742
    move-object/from16 v36, v176

    .line 2743
    .restart local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1c

    .line 2745
    .end local v36    # "classNativeViewBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2b
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_1d

    .line 2749
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2c
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2750
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2752
    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_28

    .line 2753
    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2754
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

    .line 2766
    .end local v49    # "currentFragmentField":Ljava/lang/reflect/Field;
    .end local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v78    # "homeItem":Ljava/lang/Object;
    .end local v80    # "i":I
    .end local v89    # "itemList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v100    # "listObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v109    # "mCallBacks":Ljava/lang/reflect/Field;
    .end local v127    # "mItemList":Ljava/lang/reflect/Field;
    .end local v147    # "mVisibleFragmentId":I
    .end local v148    # "mWidgetsFragment":Ljava/lang/reflect/Field;
    .end local v149    # "mWidgetsPresenter":Ljava/lang/reflect/Field;
    .end local v168    # "object":Ljava/lang/Object;
    .end local v169    # "object$iterator":Ljava/util/Iterator;
    .end local v201    # "tempObject":Ljava/lang/Object;
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    .end local v229    # "widgetsFragmentObj":Ljava/lang/Object;
    .end local v230    # "widgetsPresenterObj":Ljava/lang/Object;
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

    .line 2769
    const/4 v9, 0x0

    .line 2772
    .local v9, "activeFolderTitleView":Ljava/lang/Object;
    :try_start_14
    const-string/jumbo v234, "mTitleView"

    move-object/from16 v0, v34

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v144

    .line 2773
    .local v144, "mTitleView":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v144

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2774
    move-object/from16 v0, v144

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v9

    .line 2780
    .end local v9    # "activeFolderTitleView":Ljava/lang/Object;
    .end local v144    # "mTitleView":Ljava/lang/reflect/Field;
    :goto_1e
    const/16 v24, 0x0

    .line 2782
    .local v24, "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_15
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2784
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1f
    if-eqz v176, :cond_2e

    .line 2785
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "FolderItem"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_30

    .line 2786
    move-object/from16 v24, v176

    .line 2792
    .end local v24    # "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2e
    if-eqz v24, :cond_2f

    .line 2793
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

    .line 2794
    .local v91, "items":Ljava/util/List;, "Ljava/util/List<*>;"
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

    .line 2796
    if-nez v35, :cond_32

    .line 2798
    const/16 v234, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v234

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2800
    :goto_20
    if-eqz v176, :cond_2f

    .line 2801
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "Item"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_31

    .line 2802
    move-object/from16 v35, v176

    .line 2857
    .end local v91    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2f
    if-eqz v36, :cond_1

    if-eqz v9, :cond_1

    .line 2858
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    .line 2860
    .local v39, "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2861
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2863
    move-object/from16 v0, v227

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_1

    .line 2864
    move-object/from16 v0, v195

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2865
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

    .line 2869
    .end local v39    # "classTextView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    :catch_6
    move-exception v61

    .line 2870
    .local v61, "ex":Ljava/lang/NoSuchFieldException;
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

    .line 2789
    .end local v61    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v24    # "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    :try_start_17
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_1f

    .line 2805
    .end local v24    # "classFolderItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v91    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_31
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_20

    .line 2809
    :cond_32
    const/16 v92, 0x0

    .restart local v92    # "j":I
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

    .line 2812
    const/16 v78, 0x0

    .line 2814
    .restart local v78    # "homeItem":Ljava/lang/Object;
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

    .line 2815
    .restart local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2816
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

    .line 2820
    .end local v70    # "getItemMtd":Ljava/lang/reflect/Method;
    .end local v78    # "homeItem":Ljava/lang/Object;
    :goto_22
    if-eqz v78, :cond_35

    .line 2821
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

    .line 2822
    if-nez v33, :cond_33

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "HomeItemView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_33

    .line 2823
    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    .line 2825
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

    .line 2826
    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    .line 2829
    :cond_34
    if-nez v36, :cond_37

    .line 2831
    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2833
    :goto_23
    if-eqz v176, :cond_35

    .line 2834
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "NativeViewBase"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_36

    .line 2835
    move-object/from16 v36, v176

    .line 2809
    :cond_35
    :goto_24
    add-int/lit8 v92, v92, 0x1

    goto/16 :goto_21

    .line 2817
    .restart local v78    # "homeItem":Ljava/lang/Object;
    :catch_7
    move-exception v62

    .line 2818
    .local v62, "ex":Ljava/lang/NoSuchMethodException;
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

    .line 2871
    .end local v62    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v78    # "homeItem":Ljava/lang/Object;
    .end local v91    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v92    # "j":I
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_8
    move-exception v60

    .line 2872
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 2838
    .end local v60    # "ex":Ljava/lang/Exception;
    .restart local v91    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v92    # "j":I
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    :try_start_1b
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_23

    .line 2844
    :cond_37
    const-string/jumbo v234, "mVisible"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v227

    .line 2845
    .restart local v227    # "visible":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v227

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2847
    move-object/from16 v0, v227

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    if-nez v234, :cond_35

    .line 2848
    move-object/from16 v0, v195

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
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

    .line 2874
    .end local v91    # "items":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v92    # "j":I
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v227    # "visible":Ljava/lang/reflect/Field;
    :cond_38
    if-eqz v33, :cond_39

    :try_start_1c
    move-object/from16 v0, v33

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_1

    .line 2876
    :cond_39
    if-eqz v32, :cond_3a

    move-object/from16 v0, v32

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_1

    .line 2878
    :cond_3a
    if-eqz v39, :cond_3b

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-nez v234, :cond_1

    .line 2880
    :cond_3b
    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    move/from16 v234, v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v234, :cond_5c

    .line 2882
    :try_start_1d
    move-object/from16 v0, v50

    check-cast v0, Landroid/view/View;

    move-object/from16 v234, v0

    invoke-virtual/range {v234 .. v234}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v202

    .line 2885
    .local v202, "tempResources":Landroid/content/res/Resources;
    const-class v234, Landroid/opengl/GLSurfaceView;

    const-string/jumbo v235, "mRenderer"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2886
    .local v64, "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2887
    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v200

    .line 2889
    .local v200, "tempObj":Ljava/lang/Object;
    const-string/jumbo v234, "TDK"

    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v235

    invoke-virtual/range {v235 .. v235}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v235

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
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

    .line 2893
    :cond_3c
    :try_start_1e
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mContentView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2894
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2895
    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-result-object v116

    .line 2899
    :goto_25
    if-eqz v116, :cond_3e

    .line 2900
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

    .line 2901
    move-object/from16 v0, v195

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2902
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

    .line 2904
    if-nez v26, :cond_1

    .line 2905
    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2906
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_26
    if-eqz v176, :cond_1

    .line 2907
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_3d

    .line 2908
    move-object/from16 v26, v176

    .line 2909
    .local v26, "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 2896
    .end local v26    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_9
    move-exception v52

    .line 2897
    .restart local v52    # "e":Ljava/lang/Exception;
    const/16 v116, 0x0

    .local v116, "mContentView":Ljava/lang/Object;
    goto/16 :goto_25

    .line 2911
    .end local v52    # "e":Ljava/lang/Exception;
    .end local v116    # "mContentView":Ljava/lang/Object;
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3d
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result-object v176

    goto :goto_26

    .line 2916
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3e
    :try_start_20
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mGLObjectZ"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2917
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2918
    const/16 v120, 0x1

    .line 2919
    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v201

    .line 2920
    .restart local v201    # "tempObject":Ljava/lang/Object;
    if-eqz v201, :cond_46

    .line 2921
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

    .line 2922
    move-object/from16 v0, v201

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v101, v0

    .line 2924
    .local v101, "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-interface/range {v101 .. v101}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v169

    .restart local v169    # "object$iterator":Ljava/util/Iterator;
    :cond_3f
    :goto_27
    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_41

    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v168

    .line 2925
    .restart local v168    # "object":Ljava/lang/Object;
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

    .line 2927
    if-nez v29, :cond_40

    .line 2928
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2929
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_28
    if-eqz v176, :cond_40

    .line 2930
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_45

    .line 2931
    move-object/from16 v29, v176

    .line 2938
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 2939
    move-object/from16 v0, v195

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
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

    .line 2946
    .end local v101    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v168    # "object":Ljava/lang/Object;
    .end local v169    # "object$iterator":Ljava/util/Iterator;
    .end local v201    # "tempObject":Ljava/lang/Object;
    :catch_a
    move-exception v53

    .line 2947
    .local v53, "e":Ljava/lang/NoSuchFieldException;
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

    .line 2952
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :cond_41
    :goto_29
    if-nez v120, :cond_1

    .line 2954
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mRootObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2955
    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v201

    .line 2957
    .restart local v201    # "tempObject":Ljava/lang/Object;
    if-eqz v201, :cond_1

    .line 2958
    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mChildCount"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2959
    move-object/from16 v0, v64

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v23

    .line 2961
    .local v23, "childcount":I
    invoke-virtual/range {v201 .. v201}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mChild"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2962
    move-object/from16 v0, v64

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, [Ljava/lang/Object;

    .line 2963
    .local v102, "listObjectZ":[Ljava/lang/Object;
    add-int/lit8 v80, v23, -0x1

    .restart local v80    # "i":I
    :goto_2a
    if-ltz v80, :cond_1

    .line 2964
    aget-object v168, v102, v80

    .line 2965
    .restart local v168    # "object":Ljava/lang/Object;
    if-eqz v168, :cond_44

    .line 2967
    if-nez v29, :cond_42

    .line 2968
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 2969
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2b
    if-eqz v176, :cond_42

    .line 2970
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_47

    .line 2971
    move-object/from16 v29, v176

    .line 2978
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_42
    const-string/jumbo v234, "mState"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2979
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v196

    .line 2982
    .local v196, "state":I
    const/16 v234, 0x1

    move/from16 v0, v196

    move/from16 v1, v234

    if-ne v0, v1, :cond_44

    .line 2983
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

    .line 2984
    move-object/from16 v0, v195

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2985
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

    .line 2986
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

    .line 2987
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

    .line 2988
    :cond_43
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v27

    .line 2989
    .local v27, "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 2990
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

    .line 2991
    .local v113, "mChildTextObj":Ljava/lang/Object;
    if-eqz v113, :cond_44

    .line 2992
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

    .line 2993
    move-object/from16 v0, v195

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2994
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

    .line 2963
    .end local v27    # "classGlBaseObjSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v113    # "mChildTextObj":Ljava/lang/Object;
    .end local v196    # "state":I
    :cond_44
    add-int/lit8 v80, v80, -0x1

    goto/16 :goto_2a

    .line 2934
    .end local v23    # "childcount":I
    .end local v80    # "i":I
    .end local v102    # "listObjectZ":[Ljava/lang/Object;
    .restart local v101    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v169    # "object$iterator":Ljava/util/Iterator;
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_45
    :try_start_22
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_28

    .line 2944
    .end local v101    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v168    # "object":Ljava/lang/Object;
    .end local v169    # "object$iterator":Ljava/util/Iterator;
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 2948
    .end local v201    # "tempObject":Ljava/lang/Object;
    :catch_b
    move-exception v55

    .line 2949
    .local v55, "e":Ljava/lang/SecurityException;
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

    .line 3203
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v200    # "tempObj":Ljava/lang/Object;
    .end local v202    # "tempResources":Landroid/content/res/Resources;
    :catch_c
    move-exception v52

    .line 3204
    .restart local v52    # "e":Ljava/lang/Exception;
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

    .line 2974
    .end local v52    # "e":Ljava/lang/Exception;
    .restart local v23    # "childcount":I
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v80    # "i":I
    .restart local v102    # "listObjectZ":[Ljava/lang/Object;
    .restart local v168    # "object":Ljava/lang/Object;
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v200    # "tempObj":Ljava/lang/Object;
    .restart local v201    # "tempObject":Ljava/lang/Object;
    .restart local v202    # "tempResources":Landroid/content/res/Resources;
    :cond_47
    :try_start_25
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_2b

    .line 2996
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v196    # "state":I
    :cond_48
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlComposeObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_44

    .line 2997
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mChild"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 2998
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, [Ljava/lang/Object;

    .line 3000
    .local v98, "listComposeObjChild":[Ljava/lang/Object;
    move-object/from16 v0, v98

    array-length v0, v0

    move/from16 v234, v0

    add-int/lit8 v93, v234, -0x1

    .local v93, "k":I
    :goto_2c
    if-ltz v93, :cond_44

    .line 3001
    aget-object v22, v98, v93

    .line 3002
    .local v22, "childObj":Ljava/lang/Object;
    if-eqz v22, :cond_4e

    .line 3003
    const-string/jumbo v234, "mState"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3004
    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v196

    .line 3006
    const/16 v234, 0x1

    move/from16 v0, v196

    move/from16 v1, v234

    if-ne v0, v1, :cond_4e

    .line 3007
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

    .line 3008
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GroupObject"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_4e

    .line 3009
    const-string/jumbo v234, "mChild"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3010
    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, [Ljava/lang/Object;

    .line 3011
    .local v103, "listThumbObj":[Ljava/lang/Object;
    move-object/from16 v0, v103

    array-length v0, v0

    move/from16 v234, v0

    add-int/lit8 v92, v234, -0x1

    .restart local v92    # "j":I
    :goto_2d
    if-ltz v92, :cond_4e

    .line 3012
    aget-object v210, v103, v92

    .line 3013
    .local v210, "thumbObj":Ljava/lang/Object;
    if-eqz v210, :cond_4d

    .line 3015
    const-string/jumbo v234, "mState"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3016
    move-object/from16 v0, v64

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v196

    .line 3018
    const/16 v234, 0x1

    move/from16 v0, v196

    move/from16 v1, v234

    if-ne v0, v1, :cond_4d

    .line 3019
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

    .line 3020
    move-object/from16 v0, v195

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3021
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

    .line 3023
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

    .line 3024
    const/16 v213, 0x0

    .line 3026
    .local v213, "titleObj":Ljava/lang/Object;
    if-eqz v85, :cond_4b

    .line 3027
    :try_start_26
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v65

    .line 3029
    .local v65, "fields":[Ljava/lang/reflect/Field;
    const/16 v228, 0x0

    .local v228, "vv":I
    :goto_2e
    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v228

    move/from16 v1, v234

    if-ge v0, v1, :cond_4a

    .line 3030
    aget-object v234, v65, v228

    const/16 v235, 0x1

    invoke-virtual/range {v234 .. v235}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3031
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

    .line 3029
    add-int/lit8 v228, v228, 0x1

    goto :goto_2e

    .line 3033
    :cond_4a
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v65

    .line 3034
    const/16 v228, 0x0

    :goto_2f
    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v228

    move/from16 v1, v234

    if-ge v0, v1, :cond_4b

    .line 3036
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

    .line 3034
    add-int/lit8 v228, v228, 0x1

    goto :goto_2f

    .line 3039
    .end local v65    # "fields":[Ljava/lang/reflect/Field;
    .end local v228    # "vv":I
    :cond_4b
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitleObj"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3040
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3041
    move-object/from16 v0, v64

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v213

    .line 3042
    if-eqz v213, :cond_4c

    .line 3043
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

    .line 3044
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

    .line 3045
    move-object/from16 v0, v195

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3046
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

    .line 3054
    .end local v213    # "titleObj":Ljava/lang/Object;
    :cond_4c
    :goto_30
    if-nez v213, :cond_4d

    .line 3057
    :try_start_27
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Checking for album title"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    invoke-virtual/range {v210 .. v210}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAlbumTitleObj"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3071
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3072
    move-object/from16 v0, v64

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v213

    .line 3073
    .restart local v213    # "titleObj":Ljava/lang/Object;
    if-eqz v213, :cond_4d

    .line 3074
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

    .line 3075
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

    .line 3077
    move-object/from16 v0, v195

    move-object/from16 v1, v213

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3078
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

    .line 3011
    .end local v213    # "titleObj":Ljava/lang/Object;
    :cond_4d
    :goto_31
    add-int/lit8 v92, v92, -0x1

    goto/16 :goto_2d

    .line 3050
    :catch_d
    move-exception v52

    .line 3051
    .restart local v52    # "e":Ljava/lang/Exception;
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

    .line 3085
    .end local v52    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v52

    .line 3086
    .restart local v52    # "e":Ljava/lang/Exception;
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

    .line 3083
    .end local v52    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v63

    .line 3084
    .local v63, "ex":Ljava/lang/SecurityException;
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

    .line 3081
    .end local v63    # "ex":Ljava/lang/SecurityException;
    :catch_10
    move-exception v61

    .line 3082
    .restart local v61    # "ex":Ljava/lang/NoSuchFieldException;
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

    .line 3000
    .end local v61    # "ex":Ljava/lang/NoSuchFieldException;
    .end local v92    # "j":I
    .end local v103    # "listThumbObj":[Ljava/lang/Object;
    .end local v210    # "thumbObj":Ljava/lang/Object;
    :cond_4e
    add-int/lit8 v93, v93, -0x1

    goto/16 :goto_2c

    .line 3107
    .end local v22    # "childObj":Ljava/lang/Object;
    .end local v23    # "childcount":I
    .end local v80    # "i":I
    .end local v93    # "k":I
    .end local v98    # "listComposeObjChild":[Ljava/lang/Object;
    .end local v102    # "listObjectZ":[Ljava/lang/Object;
    .end local v168    # "object":Ljava/lang/Object;
    .end local v196    # "state":I
    .end local v201    # "tempObject":Ljava/lang/Object;
    :cond_4f
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLContext"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_58

    .line 3109
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mRootView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3110
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3111
    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v135

    .line 3113
    .local v135, "mRootView":Ljava/lang/Object;
    invoke-virtual/range {v135 .. v135}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    .line 3114
    .local v46, "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_c
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    move-result-object v45

    .line 3117
    .local v45, "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_29
    const-string/jumbo v234, "mClipRect"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3118
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3119
    move-object/from16 v0, v64

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/graphics/Rect;

    .line 3120
    .local v114, "mClipRect":Landroid/graphics/Rect;
    if-eqz v114, :cond_50

    .line 3122
    if-nez v111, :cond_50

    .line 3123
    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v234, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v235, v0

    sub-int v111, v234, v235

    .line 3124
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

    .line 3133
    .end local v114    # "mClipRect":Landroid/graphics/Rect;
    :cond_50
    :goto_32
    :try_start_2a
    move-object/from16 v0, v195

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3134
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

    .line 3136
    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    add-int/lit8 v203, v234, -0x1

    .line 3138
    .local v203, "tempStackCutLine":I
    :cond_51
    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    move/from16 v0, v234

    move/from16 v1, v203

    if-le v0, v1, :cond_1

    .line 3139
    invoke-virtual/range {v195 .. v195}, Ljava/util/ArrayList;->size()I

    move-result v234

    add-int/lit8 v84, v234, -0x1

    .line 3140
    move-object/from16 v0, v195

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v50

    .line 3142
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

    .line 3143
    .local v96, "levelOfGL":I
    move-object/from16 v0, v222

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3145
    if-eqz v46, :cond_51

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_51

    .line 3146
    const-string/jumbo v234, "mGLViews"

    move-object/from16 v0, v46

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3147
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3148
    move-object/from16 v0, v64

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Ljava/util/List;

    .line 3149
    .local v99, "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->size()I

    move-result v234

    add-int/lit8 v80, v234, -0x1

    .restart local v80    # "i":I
    :goto_33
    if-ltz v80, :cond_51

    .line 3150
    move-object/from16 v0, v99

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v207

    .line 3151
    .local v207, "tempView":Ljava/lang/Object;
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

    .line 3154
    if-nez v40, :cond_52

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLButton"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v234

    if-eqz v234, :cond_52

    .line 3155
    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    .line 3157
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

    .line 3158
    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    .line 3160
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

    .line 3161
    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v41

    .line 3163
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

    .line 3164
    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    .line 3166
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

    .line 3167
    invoke-virtual/range {v207 .. v207}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    .line 3170
    :cond_56
    const-string/jumbo v234, "mVisibility"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3171
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3173
    move-object/from16 v0, v64

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v234

    and-int/lit8 v234, v234, 0xc

    if-nez v234, :cond_57

    .line 3174
    move-object/from16 v0, v195

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3175
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

    .line 3149
    :cond_57
    add-int/lit8 v80, v80, -0x1

    goto/16 :goto_33

    .line 3129
    .end local v80    # "i":I
    .end local v96    # "levelOfGL":I
    .end local v99    # "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v203    # "tempStackCutLine":I
    .end local v207    # "tempView":Ljava/lang/Object;
    :catch_11
    move-exception v63

    .line 3130
    .restart local v63    # "ex":Ljava/lang/SecurityException;
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

    .line 3127
    .end local v63    # "ex":Ljava/lang/SecurityException;
    :catch_12
    move-exception v61

    .line 3128
    .restart local v61    # "ex":Ljava/lang/NoSuchFieldException;
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

    .line 3180
    .end local v45    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v46    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v61    # "ex":Ljava/lang/NoSuchFieldException;
    .end local v135    # "mRootView":Ljava/lang/Object;
    :cond_58
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "com.sec.android.gallery3d.ui.GLRootView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_5b

    .line 3181
    invoke-virtual/range {v200 .. v200}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mContentView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3182
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3183
    move-object/from16 v0, v64

    move-object/from16 v1, v200

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v116

    .line 3184
    .restart local v116    # "mContentView":Ljava/lang/Object;
    if-eqz v116, :cond_59

    .line 3185
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, ">> In second test inside gallery 3D: "

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    move-object/from16 v0, v195

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3187
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

    .line 3190
    :cond_59
    if-nez v26, :cond_1

    if-eqz v116, :cond_1

    .line 3191
    invoke-virtual/range {v116 .. v116}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 3192
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_34
    if-eqz v176, :cond_1

    .line 3193
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GLView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_5a

    .line 3194
    move-object/from16 v26, v176

    .line 3195
    .restart local v26    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 3197
    .end local v26    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5a
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_34

    .line 3201
    .end local v116    # "mContentView":Ljava/lang/Object;
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 3206
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v200    # "tempObj":Ljava/lang/Object;
    .end local v202    # "tempResources":Landroid/content/res/Resources;
    :cond_5c
    :try_start_2b
    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/view/View;

    move/from16 v234, v0

    if-nez v234, :cond_1

    .line 3209
    if-eqz v29, :cond_60

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_60

    .line 3210
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

    .line 3211
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

    .line 3212
    .local v122, "mGlView":Ljava/lang/Object;
    if-eqz v122, :cond_5f

    .line 3213
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

    .line 3214
    move-object/from16 v0, v195

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3215
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

    .line 3217
    if-nez v31, :cond_5d

    .line 3218
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 3219
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_35
    if-eqz v176, :cond_5d

    .line 3220
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_5e

    .line 3221
    move-object/from16 v31, v176

    .line 3227
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 3224
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5e
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto :goto_35

    .line 3229
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5f
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "got GlView: mGlView is null"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3232
    .end local v122    # "mGlView":Ljava/lang/Object;
    :cond_60
    if-eqz v31, :cond_63

    move-object/from16 v0, v31

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_63

    .line 3233
    if-nez v30, :cond_61

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "GlTextView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_61

    .line 3234
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    .line 3235
    .local v30, "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 3237
    .end local v30    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 3238
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    .line 3239
    .local v28, "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 3242
    .end local v28    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 3243
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

    .line 3244
    .local v21, "childCount":I
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

    .line 3245
    add-int/lit8 v80, v21, -0x1

    .restart local v80    # "i":I
    :goto_36
    if-ltz v80, :cond_1

    .line 3246
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

    .line 3247
    .local v20, "child":Ljava/lang/Object;
    move-object/from16 v0, v195

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3248
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

    .line 3245
    add-int/lit8 v80, v80, -0x1

    goto :goto_36

    .line 3250
    .end local v20    # "child":Ljava/lang/Object;
    .end local v21    # "childCount":I
    .end local v80    # "i":I
    :cond_63
    if-eqz v26, :cond_6f

    move-object/from16 v0, v26

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_6f

    .line 3251
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

    .line 3253
    :try_start_2c
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mAlbumView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v106

    .line 3254
    .local v106, "mAlbumView":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v106

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3255
    move-object/from16 v0, v106

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 3256
    .local v11, "albumView":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 3257
    move-object/from16 v0, v195

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3258
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

    .line 3260
    .end local v11    # "albumView":Ljava/lang/Object;
    .end local v106    # "mAlbumView":Ljava/lang/reflect/Field;
    :catch_13
    move-exception v55

    .line 3261
    .restart local v55    # "e":Ljava/lang/SecurityException;
    :try_start_2d
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mAlbumView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3262
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_14
    move-exception v53

    .line 3263
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mAlbumView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3265
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
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

    .line 3270
    :cond_65
    if-nez v38, :cond_66

    .line 3271
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v176

    .line 3272
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_37
    if-eqz v176, :cond_66

    .line 3273
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v234

    const-string/jumbo v235, "SlotView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_68

    .line 3274
    move-object/from16 v38, v176

    .line 3281
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_66
    if-eqz v38, :cond_1

    .line 3285
    new-instance v212, Ljava/util/HashMap;

    invoke-direct/range {v212 .. v212}, Ljava/util/HashMap;-><init>()V

    .line 3287
    .local v212, "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v234, "mItems"

    move-object/from16 v0, v38

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v128

    .line 3288
    .local v128, "mItems":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v128

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3289
    move-object/from16 v0, v128

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Ljava/util/HashMap;

    .line 3291
    .local v90, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual/range {v90 .. v90}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v59

    .line 3292
    .local v59, "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface/range {v59 .. v59}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .line 3293
    .local v86, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_67
    :goto_38
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_6a

    .line 3294
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    .line 3295
    .local v87, "itemEnty":Ljava/lang/Object;
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v198

    .line 3296
    .local v198, "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 3297
    .local v209, "tfield":Ljava/lang/reflect/Field;
    const/16 v237, 0x1

    move-object/from16 v0, v209

    move/from16 v1, v237

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3298
    move-object/from16 v0, v209

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v214

    .line 3301
    .local v214, "tobject":Ljava/lang/Object;
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

    .line 3303
    :try_start_2e
    invoke-virtual/range {v214 .. v214}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitle"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v143

    .line 3304
    .local v143, "mTitle":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v143

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3305
    move-object/from16 v0, v143

    move-object/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Ljava/lang/String;

    .line 3307
    .local v211, "title":Ljava/lang/String;
    invoke-virtual/range {v214 .. v214}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mSlotIndex"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v139

    .line 3308
    .local v139, "mSlotIndex":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v139

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3309
    move-object/from16 v0, v139

    move-object/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v83

    .line 3311
    .local v83, "index":I
    invoke-virtual/range {v214 .. v214}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mCount"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v117

    .line 3312
    .local v117, "mCount":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v117

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3313
    move-object/from16 v0, v117

    move-object/from16 v1, v214

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    .line 3317
    .local v48, "count":Ljava/lang/String;
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

    .line 3318
    .end local v48    # "count":Ljava/lang/String;
    .end local v83    # "index":I
    .end local v117    # "mCount":Ljava/lang/reflect/Field;
    .end local v139    # "mSlotIndex":Ljava/lang/reflect/Field;
    .end local v143    # "mTitle":Ljava/lang/reflect/Field;
    .end local v211    # "title":Ljava/lang/String;
    :catch_15
    move-exception v55

    .line 3319
    .restart local v55    # "e":Ljava/lang/SecurityException;
    :try_start_2f
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mTitle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 3277
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v59    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v86    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v87    # "itemEnty":Ljava/lang/Object;
    .end local v90    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v128    # "mItems":Ljava/lang/reflect/Field;
    .end local v198    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v209    # "tfield":Ljava/lang/reflect/Field;
    .end local v212    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v214    # "tobject":Ljava/lang/Object;
    .restart local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_68
    invoke-virtual/range {v176 .. v176}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v176

    goto/16 :goto_37

    .line 3320
    .end local v176    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v59    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v86    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v87    # "itemEnty":Ljava/lang/Object;
    .restart local v90    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .restart local v128    # "mItems":Ljava/lang/reflect/Field;
    .restart local v198    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v209    # "tfield":Ljava/lang/reflect/Field;
    .restart local v212    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v214    # "tobject":Ljava/lang/Object;
    :catch_16
    move-exception v53

    .line 3321
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
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

    .line 3296
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :cond_69
    add-int/lit8 v234, v234, 0x1

    goto/16 :goto_39

    .line 3330
    .end local v87    # "itemEnty":Ljava/lang/Object;
    .end local v198    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v209    # "tfield":Ljava/lang/reflect/Field;
    .end local v214    # "tobject":Ljava/lang/Object;
    :cond_6a
    const/16 v191, 0x0

    .line 3331
    .local v191, "scrollX":I
    const/16 v192, 0x0

    .line 3334
    .local v192, "scrollY":I
    :try_start_30
    const-string/jumbo v234, "mScrollX"

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v137

    .line 3335
    .local v137, "mScrollX":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v137

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3336
    move-object/from16 v0, v137

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v191

    .line 3337
    const-string/jumbo v234, "mScrollY"

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v138

    .line 3338
    .local v138, "mScrollY":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v138

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3339
    move-object/from16 v0, v138

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_30} :catch_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_30 .. :try_end_30} :catch_17
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    move-result v192

    .line 3346
    .end local v137    # "mScrollX":Ljava/lang/reflect/Field;
    .end local v138    # "mScrollY":Ljava/lang/reflect/Field;
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

    .line 3350
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

    .line 3351
    .local v74, "getVisibleStart":Ljava/lang/reflect/Method;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "getVisibleEnd"

    const/16 v236, 0x0

    move/from16 v0, v236

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v236, v0

    invoke-virtual/range {v234 .. v236}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v73

    .line 3352
    .local v73, "getVisibleEnd":Ljava/lang/reflect/Method;
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

    .line 3354
    .local v71, "getSlotRect":Ljava/lang/reflect/Method;
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

    .line 3355
    .local v157, "nStart":I
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

    .line 3357
    .local v156, "nEnd":I
    add-int/lit8 v80, v156, -0x1

    .restart local v80    # "i":I
    :goto_3b
    move/from16 v0, v80

    move/from16 v1, v157

    if-lt v0, v1, :cond_1

    .line 3358
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

    .line 3359
    .local v186, "rect":Landroid/graphics/Rect;
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

    .line 3361
    new-instance v158, Ljava/lang/StringBuilder;

    invoke-direct/range {v158 .. v158}, Ljava/lang/StringBuilder;-><init>()V

    .line 3362
    .local v158, "newSlot":Ljava/lang/StringBuilder;
    const-string/jumbo v204, "Slot"

    .line 3363
    .local v204, "tempString":Ljava/lang/String;
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

    .line 3365
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v234

    add-int v234, v234, v80

    add-int/lit8 v234, v234, 0x1

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    .line 3366
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

    .line 3368
    const-string/jumbo v204, "true"

    .line 3369
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

    .line 3371
    const-string/jumbo v204, "true"

    .line 3372
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

    .line 3374
    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v232, v0

    .line 3375
    .local v232, "x":I
    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v233, v0

    .line 3376
    .local v233, "y":I
    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->width()I

    move-result v231

    .line 3377
    .local v231, "width":I
    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->height()I

    move-result v76

    .line 3379
    .local v76, "height":I
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

    .line 3380
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

    .line 3381
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

    .line 3382
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

    .line 3384
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v234

    move-object/from16 v0, v212

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_6b

    .line 3385
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v234

    move-object/from16 v0, v212

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v175

    check-cast v175, Landroid/util/Pair;

    .line 3387
    .local v175, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v175

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v234, v0

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    .line 3388
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

    .line 3390
    move-object/from16 v0, v175

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v234, v0

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    .line 3391
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

    .line 3394
    .end local v175    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6b
    const-string/jumbo v204, "true"

    .line 3395
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

    .line 3397
    const-string/jumbo v204, "true"

    .line 3398
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

    .line 3400
    invoke-virtual/range {v158 .. v158}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3402
    move-object/from16 v0, v195

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3403
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

    .line 3357
    add-int/lit8 v80, v80, -0x1

    goto/16 :goto_3b

    .line 3342
    .end local v71    # "getSlotRect":Ljava/lang/reflect/Method;
    .end local v73    # "getVisibleEnd":Ljava/lang/reflect/Method;
    .end local v74    # "getVisibleStart":Ljava/lang/reflect/Method;
    .end local v76    # "height":I
    .end local v80    # "i":I
    .end local v156    # "nEnd":I
    .end local v157    # "nStart":I
    .end local v158    # "newSlot":Ljava/lang/StringBuilder;
    .end local v186    # "rect":Landroid/graphics/Rect;
    .end local v204    # "tempString":Ljava/lang/String;
    .end local v231    # "width":I
    .end local v232    # "x":I
    .end local v233    # "y":I
    :catch_17
    move-exception v53

    .line 3343
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_33
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .line 3340
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_18
    move-exception v55

    .line 3341
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .line 3407
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_19
    move-exception v54

    .line 3408
    .local v54, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mAlbumView"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3405
    .end local v54    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1a
    move-exception v55

    .line 3406
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 3434
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v59    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v86    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v90    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v128    # "mItems":Ljava/lang/reflect/Field;
    .end local v191    # "scrollX":I
    .end local v192    # "scrollY":I
    .end local v212    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6c
    :try_start_34
    const-string/jumbo v234, "mComponents"

    move-object/from16 v0, v26

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v115

    .line 3435
    .local v115, "mComponents":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v115

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3436
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

    .line 3437
    .local v97, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v97, :cond_1

    .line 3439
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

    .line 3440
    .local v72, "getVisibility":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v72

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3442
    new-instance v188, Ljava/util/ArrayList;

    invoke-direct/range {v188 .. v188}, Ljava/util/ArrayList;-><init>()V

    .line 3443
    .local v188, "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface/range {v97 .. v97}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v161

    .local v161, "obj$iterator":Ljava/util/Iterator;
    :goto_3c
    invoke-interface/range {v161 .. v161}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_6d

    invoke-interface/range {v161 .. v161}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v160

    .line 3444
    .local v160, "obj":Ljava/lang/Object;
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

    .line 3454
    .end local v72    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v160    # "obj":Ljava/lang/Object;
    .end local v161    # "obj$iterator":Ljava/util/Iterator;
    .end local v188    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_1b
    move-exception v55

    .line 3455
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 3460
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v97    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v115    # "mComponents":Ljava/lang/reflect/Field;
    :catch_1c
    move-exception v55

    .line 3461
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 3447
    .end local v55    # "e":Ljava/lang/SecurityException;
    .restart local v72    # "getVisibility":Ljava/lang/reflect/Method;
    .restart local v97    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v115    # "mComponents":Ljava/lang/reflect/Field;
    .restart local v161    # "obj$iterator":Ljava/util/Iterator;
    .restart local v188    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
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

    .line 3448
    .restart local v160    # "obj":Ljava/lang/Object;
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

    .line 3449
    .local v226, "visibility":I
    if-nez v226, :cond_6e

    .line 3450
    move-object/from16 v0, v195

    move-object/from16 v1, v160

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3451
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

    .line 3456
    .end local v72    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v160    # "obj":Ljava/lang/Object;
    .end local v161    # "obj$iterator":Ljava/util/Iterator;
    .end local v188    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v226    # "visibility":I
    :catch_1d
    move-exception v54

    .line 3457
    .restart local v54    # "e":Ljava/lang/NoSuchMethodException;
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

    .line 3462
    .end local v54    # "e":Ljava/lang/NoSuchMethodException;
    .end local v97    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v115    # "mComponents":Ljava/lang/reflect/Field;
    :catch_1e
    move-exception v53

    .line 3463
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_3a
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No field: mComponents"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3466
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :cond_6f
    move-object/from16 v0, v50

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v234, v0

    if-nez v234, :cond_1

    .line 3469
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

    .line 3473
    .end local v84    # "indexToRemove":I
    .end local v94    # "level":I
    :cond_70
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, ">> Start traversing the viewList!"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    const/16 v216, 0x0

    .line 3482
    .local v216, "unknownObject":Z
    const/16 v180, -0x1

    .line 3483
    .local v180, "preLevel":I
    const/16 v181, -0x1

    .line 3485
    .local v181, "previousLevel":I
    invoke-interface/range {v222 .. v222}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v169

    .end local v173    # "packageName":Ljava/lang/String;
    .restart local v169    # "object$iterator":Ljava/util/Iterator;
    :cond_71
    :goto_3e
    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->hasNext()Z

    move-result v234

    if-eqz v234, :cond_c0

    invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v168

    .line 3486
    .restart local v168    # "object":Ljava/lang/Object;
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

    .line 3489
    .restart local v94    # "level":I
    if-eqz v216, :cond_72

    .line 3491
    const/16 v216, 0x0

    .line 3492
    move/from16 v0, v94

    move/from16 v1, v180

    if-le v0, v1, :cond_72

    .line 3494
    move/from16 v94, v180

    .line 3499
    :cond_72
    move/from16 v0, v94

    move/from16 v1, v181

    if-le v0, v1, :cond_73

    sub-int v234, v94, v181

    const/16 v235, 0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-le v0, v1, :cond_73

    .line 3500
    add-int/lit8 v94, v181, 0x1

    .line 3503
    :cond_73
    const/16 v80, 0x0

    .restart local v80    # "i":I
    :goto_3f
    move/from16 v0, v80

    move/from16 v1, v94

    if-ge v0, v1, :cond_74

    .line 3504
    const/16 v234, 0x20

    move-object/from16 v0, v172

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3503
    add-int/lit8 v80, v80, 0x1

    goto :goto_3f

    .line 3506
    :cond_74
    move/from16 v181, v94

    .line 3508
    if-nez v94, :cond_75

    .line 3509
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v219

    .line 3512
    .local v219, "viewContext":Landroid/content/Context;
    invoke-virtual/range {v219 .. v219}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v204

    .line 3513
    .restart local v204    # "tempString":Ljava/lang/String;
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

    .line 3516
    move-object/from16 v173, v204

    .line 3520
    .local v173, "packageName":Ljava/lang/String;
    invoke-virtual/range {v219 .. v219}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    .line 3521
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

    .line 3523
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

    .line 3524
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

    .line 3527
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v136

    .line 3530
    .end local v173    # "packageName":Ljava/lang/String;
    .end local v204    # "tempString":Ljava/lang/String;
    .end local v219    # "viewContext":Landroid/content/Context;
    :cond_75
    move-object/from16 v0, v168

    instance-of v0, v0, Landroid/view/View;

    move/from16 v234, v0

    if-eqz v234, :cond_98

    .line 3531
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

    .line 3533
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    .line 3534
    .restart local v204    # "tempString":Ljava/lang/String;
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

    .line 3536
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    .line 3537
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

    .line 3539
    move-object/from16 v0, v168

    check-cast v0, Landroid/view/View;

    move-object/from16 v218, v0

    .line 3541
    .local v218, "view":Landroid/view/View;
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getId()I

    move-result v81

    .line 3542
    .local v81, "id":I
    if-ltz v81, :cond_78

    .line 3543
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_2
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    move-result-object v202

    .line 3545
    .restart local v202    # "tempResources":Landroid/content/res/Resources;
    :try_start_3b
    move-object/from16 v0, v202

    move/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    .line 3546
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_77

    .line 3547
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

    .line 3548
    const/16 v234, 0xa

    const/16 v235, 0x3

    move-object/from16 v0, v204

    move/from16 v1, v234

    move/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v204

    goto :goto_40

    .line 3550
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

    .line 3552
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

    .line 3560
    .end local v202    # "tempResources":Landroid/content/res/Resources;
    :cond_78
    :goto_41
    const/16 v234, 0x2

    :try_start_3c
    move/from16 v0, v234

    new-array v0, v0, [I

    move-object/from16 v104, v0

    .line 3561
    .local v104, "location":[I
    move-object/from16 v0, v218

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3562
    const/16 v234, 0x0

    aget v234, v104, v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    .line 3563
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

    .line 3564
    const/16 v234, 0x1

    aget v234, v104, v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    .line 3565
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

    .line 3568
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

    .line 3569
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

    .line 3570
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

    .line 3571
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

    .line 3572
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

    .line 3586
    :goto_42
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v234

    if-eqz v234, :cond_7a

    .line 3587
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v234

    invoke-interface/range {v234 .. v234}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3588
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_79

    .line 3589
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 3590
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

    .line 3592
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

    .line 3596
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

    .line 3597
    :cond_7b
    const-string/jumbo v204, "true"

    .line 3598
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

    .line 3601
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

    .line 3602
    :cond_7d
    const-string/jumbo v204, "true"

    .line 3603
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

    .line 3609
    :cond_7e
    :goto_43
    :try_start_3e
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isEnabled()Z

    move-result v234

    if-eqz v234, :cond_8f

    .line 3610
    const-string/jumbo v204, "true"

    .line 3611
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

    .line 3617
    :goto_44
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isLongClickable()Z

    move-result v234

    if-eqz v234, :cond_7f

    .line 3618
    const-string/jumbo v204, "true"

    .line 3619
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

    .line 3622
    :cond_7f
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isClickable()Z

    move-result v234

    if-eqz v234, :cond_80

    .line 3623
    const-string/jumbo v204, "true"

    .line 3624
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

    .line 3627
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

    .line 3628
    :cond_81
    const-string/jumbo v204, "true"

    .line 3629
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

    .line 3632
    :cond_82
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isFocusable()Z

    move-result v234

    if-eqz v234, :cond_83

    .line 3633
    const-string/jumbo v204, "true"

    .line 3634
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

    .line 3637
    :cond_83
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->isSelected()Z

    move-result v234

    if-eqz v234, :cond_84

    .line 3638
    const-string/jumbo v204, "true"

    .line 3639
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

    .line 3643
    :cond_84
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/AdapterView;

    move/from16 v234, v0

    if-eqz v234, :cond_85

    .line 3644
    const-string/jumbo v204, "true"

    .line 3645
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

    .line 3653
    :cond_85
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v234, v0

    if-eqz v234, :cond_88

    .line 3654
    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v206, v0

    .line 3655
    .local v206, "tempView":Landroid/widget/TextView;
    invoke-virtual/range {v206 .. v206}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v234

    invoke-interface/range {v234 .. v234}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3656
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_86

    .line 3657
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 3658
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

    .line 3660
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

    .line 3661
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

    .line 3663
    invoke-virtual/range {v206 .. v206}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v234

    if-eqz v234, :cond_87

    .line 3664
    const-string/jumbo v204, "true"

    .line 3665
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

    .line 3668
    :cond_87
    invoke-virtual/range {v206 .. v206}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_2
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    move-result-object v234

    if-eqz v234, :cond_88

    .line 3670
    :try_start_3f
    const-class v234, Landroid/widget/TextView;

    const-string/jumbo v235, "mResource"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3671
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3672
    move-object/from16 v0, v64

    move-object/from16 v1, v206

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_3f} :catch_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3f .. :try_end_3f} :catch_22
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_2
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    move-result v187

    .line 3673
    .local v187, "resource":I
    if-eqz v187, :cond_90

    .line 3675
    :try_start_40
    invoke-virtual/range {v206 .. v206}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    .line 3676
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

    .line 3716
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v187    # "resource":I
    .end local v206    # "tempView":Landroid/widget/TextView;
    :cond_88
    :goto_45
    :try_start_41
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v234, v0

    if-eqz v234, :cond_89

    .line 3717
    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v19, v0

    .line 3718
    .local v19, "checkable":Landroid/widget/Checkable;
    invoke-interface/range {v19 .. v19}, Landroid/widget/Checkable;->isChecked()Z

    move-result v234

    if-eqz v234, :cond_93

    .line 3719
    const-string/jumbo v204, "true"

    .line 3723
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

    .line 3726
    .end local v19    # "checkable":Landroid/widget/Checkable;
    :cond_89
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v234, v0

    if-eqz v234, :cond_8a

    .line 3727
    const-string/jumbo v204, "true"

    .line 3728
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

    .line 3730
    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v183, v0

    .line 3731
    .local v183, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual/range {v183 .. v183}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v234

    if-nez v234, :cond_94

    .line 3732
    invoke-virtual/range {v183 .. v183}, Landroid/widget/ProgressBar;->getMax()I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_2
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    move-result v151

    .line 3733
    .local v151, "max":I
    if-eqz v151, :cond_8a

    .line 3738
    :try_start_42
    const-class v234, Landroid/widget/ProgressBar;

    const-string/jumbo v235, "mProgress"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3739
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3740
    move-object/from16 v0, v64

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v182

    .line 3741
    .local v182, "progress":I
    mul-int/lit8 v234, v182, 0x64

    div-int v234, v234, v151

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    .line 3742
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

    .line 3750
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v182    # "progress":I
    :goto_47
    :try_start_43
    const-class v234, Landroid/widget/ProgressBar;

    const-string/jumbo v235, "mSecondaryProgress"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3751
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3752
    move-object/from16 v0, v64

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v182

    .line 3753
    .restart local v182    # "progress":I
    mul-int/lit8 v234, v182, 0x64

    div-int v234, v234, v151

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    .line 3754
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

    .line 3767
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v151    # "max":I
    .end local v182    # "progress":I
    .end local v183    # "progressBar":Landroid/widget/ProgressBar;
    :cond_8a
    :goto_48
    :try_start_44
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v234, v0

    if-eqz v234, :cond_8b

    .line 3768
    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v82, v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_2
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    .line 3770
    .local v82, "imageView":Landroid/widget/ImageView;
    :try_start_45
    const-class v234, Landroid/widget/ImageView;

    const-string/jumbo v235, "mResource"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3771
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3772
    move-object/from16 v0, v64

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_45} :catch_28
    .catch Ljava/lang/NoSuchFieldException; {:try_start_45 .. :try_end_45} :catch_29
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_2
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    move-result v187

    .line 3773
    .restart local v187    # "resource":I
    if-eqz v187, :cond_95

    .line 3775
    :try_start_46
    invoke-virtual/range {v82 .. v82}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v234

    move-object/from16 v0, v234

    move/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    .line 3776
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

    .line 3815
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v82    # "imageView":Landroid/widget/ImageView;
    .end local v187    # "resource":I
    :cond_8b
    :goto_49
    :try_start_47
    move-object/from16 v0, v218

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v234, v0

    if-eqz v234, :cond_8d

    .line 3816
    move-object/from16 v0, v218

    check-cast v0, Landroid/widget/EditText;

    move-object/from16 v56, v0

    .line 3817
    .local v56, "editText":Landroid/widget/EditText;
    invoke-virtual/range {v56 .. v56}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v234

    if-eqz v234, :cond_8c

    .line 3818
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "editText: editText1"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    invoke-virtual/range {v56 .. v56}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v234

    invoke-interface/range {v234 .. v234}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3820
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

    .line 3822
    :cond_8c
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "editText: editText2"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4435
    .end local v56    # "editText":Landroid/widget/EditText;
    .end local v81    # "id":I
    .end local v104    # "location":[I
    .end local v168    # "object":Ljava/lang/Object;
    .end local v204    # "tempString":Ljava/lang/String;
    .end local v218    # "view":Landroid/view/View;
    :cond_8d
    :goto_4a
    const/16 v234, 0xa

    move-object/from16 v0, v172

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3e

    .line 3574
    .restart local v81    # "id":I
    .restart local v104    # "location":[I
    .restart local v168    # "object":Ljava/lang/Object;
    .restart local v204    # "tempString":Ljava/lang/String;
    .restart local v218    # "view":Landroid/view/View;
    :cond_8e
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getWidth()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    .line 3575
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

    .line 3577
    invoke-virtual/range {v218 .. v218}, Landroid/view/View;->getHeight()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v204

    .line 3578
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

    .line 3605
    :catch_1f
    move-exception v60

    .line 3606
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 3613
    .end local v60    # "ex":Ljava/lang/Exception;
    :cond_8f
    const-string/jumbo v204, "false"

    .line 3614
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

    .line 3677
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v187    # "resource":I
    .restart local v206    # "tempView":Landroid/widget/TextView;
    :catch_20
    move-exception v51

    .line 3678
    .local v51, "e":Landroid/content/res/Resources$NotFoundException;
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

    .line 3708
    .end local v51    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v187    # "resource":I
    :catch_21
    move-exception v55

    .line 3709
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 3681
    .end local v55    # "e":Ljava/lang/SecurityException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v187    # "resource":I
    :cond_90
    :try_start_4a
    const-class v234, Landroid/widget/ImageView;

    const-string/jumbo v235, "mUri"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3682
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3683
    move-object/from16 v0, v64

    move-object/from16 v1, v206

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v217

    check-cast v217, Landroid/net/Uri;

    .line 3684
    .local v217, "uri":Landroid/net/Uri;
    if-eqz v217, :cond_88

    .line 3685
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v189

    .line 3686
    .local v189, "scheme":Ljava/lang/String;
    const-string/jumbo v234, "android.resource"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_91

    .line 3692
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3693
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

    .line 3710
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v187    # "resource":I
    .end local v189    # "scheme":Ljava/lang/String;
    .end local v217    # "uri":Landroid/net/Uri;
    :catch_22
    move-exception v53

    .line 3711
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
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

    .line 3694
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v187    # "resource":I
    .restart local v189    # "scheme":Ljava/lang/String;
    .restart local v217    # "uri":Landroid/net/Uri;
    :cond_91
    :try_start_4c
    const-string/jumbo v234, "content"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_92

    .line 3700
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3701
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

    .line 3703
    :cond_92
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3704
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

    .line 3721
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v187    # "resource":I
    .end local v189    # "scheme":Ljava/lang/String;
    .end local v206    # "tempView":Landroid/widget/TextView;
    .end local v217    # "uri":Landroid/net/Uri;
    .restart local v19    # "checkable":Landroid/widget/Checkable;
    :cond_93
    :try_start_4d
    const-string/jumbo v204, "false"

    goto/16 :goto_46

    .line 3745
    .end local v19    # "checkable":Landroid/widget/Checkable;
    .restart local v151    # "max":I
    .restart local v183    # "progressBar":Landroid/widget/ProgressBar;
    :catch_23
    move-exception v53

    .line 3746
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    .line 3743
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_24
    move-exception v55

    .line 3744
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    .line 3757
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_25
    move-exception v53

    .line 3758
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    .line 3755
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_26
    move-exception v55

    .line 3756
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    .line 3762
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v151    # "max":I
    :cond_94
    const-string/jumbo v204, "true"

    .line 3763
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

    .line 3777
    .end local v183    # "progressBar":Landroid/widget/ProgressBar;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v82    # "imageView":Landroid/widget/ImageView;
    .restart local v187    # "resource":I
    :catch_27
    move-exception v51

    .line 3778
    .restart local v51    # "e":Landroid/content/res/Resources$NotFoundException;
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

    .line 3808
    .end local v51    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v187    # "resource":I
    :catch_28
    move-exception v55

    .line 3809
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 3781
    .end local v55    # "e":Ljava/lang/SecurityException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v187    # "resource":I
    :cond_95
    :try_start_50
    const-class v234, Landroid/widget/ImageView;

    const-string/jumbo v235, "mUri"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 3782
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3783
    move-object/from16 v0, v64

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v217

    check-cast v217, Landroid/net/Uri;

    .line 3784
    .restart local v217    # "uri":Landroid/net/Uri;
    if-eqz v217, :cond_8b

    .line 3785
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v189

    .line 3786
    .restart local v189    # "scheme":Ljava/lang/String;
    const-string/jumbo v234, "android.resource"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_96

    .line 3792
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3793
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

    .line 3810
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v187    # "resource":I
    .end local v189    # "scheme":Ljava/lang/String;
    .end local v217    # "uri":Landroid/net/Uri;
    :catch_29
    move-exception v53

    .line 3811
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
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

    .line 3794
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v187    # "resource":I
    .restart local v189    # "scheme":Ljava/lang/String;
    .restart local v217    # "uri":Landroid/net/Uri;
    :cond_96
    :try_start_52
    const-string/jumbo v234, "content"

    move-object/from16 v0, v234

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_97

    .line 3800
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3801
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

    .line 3803
    :cond_97
    invoke-virtual/range {v217 .. v217}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v204

    .line 3804
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

    .line 3824
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v81    # "id":I
    .end local v82    # "imageView":Landroid/widget/ImageView;
    .end local v104    # "location":[I
    .end local v187    # "resource":I
    .end local v189    # "scheme":Ljava/lang/String;
    .end local v204    # "tempString":Ljava/lang/String;
    .end local v217    # "uri":Landroid/net/Uri;
    .end local v218    # "view":Landroid/view/View;
    :cond_98
    if-eqz v36, :cond_a4

    :try_start_53
    move-object/from16 v0, v36

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_a4

    .line 3825
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

    .line 3827
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    .line 3828
    .restart local v204    # "tempString":Ljava/lang/String;
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

    .line 3830
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    .line 3831
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

    .line 3835
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

    .line 3838
    .restart local v186    # "rect":Landroid/graphics/Rect;
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

    .line 3839
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

    .line 3841
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

    .line 3842
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

    .line 3844
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

    .line 3845
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

    .line 3847
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

    .line 3848
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

    .line 3855
    .end local v186    # "rect":Landroid/graphics/Rect;
    :goto_4b
    const/16 v47, 0x0

    .line 3857
    .local v47, "clickable":Z
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

    .line 3858
    .local v47, "clickable":Z
    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v204

    .line 3859
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

    .line 3867
    .end local v47    # "clickable":Z
    :goto_4c
    const/16 v58, 0x0

    .line 3869
    .local v58, "enabled":Z
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

    .line 3870
    .local v58, "enabled":Z
    invoke-static/range {v58 .. v58}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v204

    .line 3871
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

    .line 3879
    .end local v58    # "enabled":Z
    :goto_4d
    const/16 v153, 0x0

    .line 3881
    .local v153, "mlongclickable":Z
    :try_start_57
    const-string/jumbo v234, "mLongClickable"

    move-object/from16 v0, v36

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v130

    .line 3882
    .local v130, "mLongClickable":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v130

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3883
    move-object/from16 v0, v130

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v153

    .line 3884
    .local v153, "mlongclickable":Z
    invoke-static/range {v153 .. v153}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v204

    .line 3885
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

    .line 3892
    .end local v130    # "mLongClickable":Ljava/lang/reflect/Field;
    .end local v153    # "mlongclickable":Z
    :goto_4e
    if-eqz v58, :cond_9a

    if-nez v47, :cond_99

    if-eqz v153, :cond_9a

    .line 3893
    :cond_99
    :try_start_58
    const-string/jumbo v204, "true"

    .line 3894
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

    .line 3898
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

    .line 3901
    :try_start_59
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitle"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v155

    .line 3902
    .local v155, "mtitle":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v155

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3903
    move-object/from16 v0, v155

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v208

    .line 3904
    .local v208, "textView":Ljava/lang/Object;
    if-eqz v85, :cond_9c

    .line 3905
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    .line 3906
    .local v152, "methods":[Ljava/lang/reflect/Method;
    const/16 v80, 0x0

    :goto_4f
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_9b

    .line 3907
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

    .line 3906
    add-int/lit8 v80, v80, 0x1

    goto :goto_4f

    .line 3850
    .end local v152    # "methods":[Ljava/lang/reflect/Method;
    .end local v155    # "mtitle":Ljava/lang/reflect/Field;
    .end local v208    # "textView":Ljava/lang/Object;
    :catch_2a
    move-exception v52

    .line 3851
    .restart local v52    # "e":Ljava/lang/Exception;
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

    .line 3862
    .end local v52    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v60

    .line 3863
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 3860
    .end local v60    # "ex":Ljava/lang/Exception;
    :catch_2c
    move-exception v62

    .line 3861
    .restart local v62    # "ex":Ljava/lang/NoSuchMethodException;
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

    .line 3874
    .end local v62    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2d
    move-exception v60

    .line 3875
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 3872
    .end local v60    # "ex":Ljava/lang/Exception;
    :catch_2e
    move-exception v62

    .line 3873
    .restart local v62    # "ex":Ljava/lang/NoSuchMethodException;
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

    .line 3888
    .end local v62    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2f
    move-exception v60

    .line 3889
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 3886
    .end local v60    # "ex":Ljava/lang/Exception;
    :catch_30
    move-exception v61

    .line 3887
    .restart local v61    # "ex":Ljava/lang/NoSuchFieldException;
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

    .line 3909
    .end local v61    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v152    # "methods":[Ljava/lang/reflect/Method;
    .restart local v155    # "mtitle":Ljava/lang/reflect/Field;
    .restart local v208    # "textView":Ljava/lang/Object;
    :cond_9b
    :try_start_5b
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    .line 3910
    const/16 v80, 0x0

    :goto_50
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_9c

    .line 3911
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

    .line 3910
    add-int/lit8 v80, v80, 0x1

    goto :goto_50

    .line 3915
    .end local v152    # "methods":[Ljava/lang/reflect/Method;
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

    .line 3916
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_9d

    .line 3917
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 3918
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

    .line 3921
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

    .line 3930
    .end local v155    # "mtitle":Ljava/lang/reflect/Field;
    .end local v208    # "textView":Ljava/lang/Object;
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

    .line 3934
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

    .line 3935
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

    .line 3936
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_9f

    .line 3937
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 3938
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

    .line 3940
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

    .line 3946
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

    .line 3949
    :try_start_5f
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTitleView"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v155

    .line 3950
    .restart local v155    # "mtitle":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v155

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3951
    move-object/from16 v0, v155

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v208

    .line 3952
    .restart local v208    # "textView":Ljava/lang/Object;
    if-eqz v85, :cond_a2

    .line 3953
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    .line 3954
    .restart local v152    # "methods":[Ljava/lang/reflect/Method;
    const/16 v80, 0x0

    :goto_53
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_a1

    .line 3955
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

    .line 3954
    add-int/lit8 v80, v80, 0x1

    goto :goto_53

    .line 3924
    .end local v152    # "methods":[Ljava/lang/reflect/Method;
    .end local v155    # "mtitle":Ljava/lang/reflect/Field;
    .end local v208    # "textView":Ljava/lang/Object;
    :catch_31
    move-exception v60

    .line 3925
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 3922
    .end local v60    # "ex":Ljava/lang/Exception;
    :catch_32
    move-exception v61

    .line 3923
    .restart local v61    # "ex":Ljava/lang/NoSuchFieldException;
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

    .line 3941
    .end local v61    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_33
    move-exception v52

    .line 3942
    .restart local v52    # "e":Ljava/lang/Exception;
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

    .line 3957
    .end local v52    # "e":Ljava/lang/Exception;
    .restart local v152    # "methods":[Ljava/lang/reflect/Method;
    .restart local v155    # "mtitle":Ljava/lang/reflect/Field;
    .restart local v208    # "textView":Ljava/lang/Object;
    :cond_a1
    :try_start_61
    invoke-virtual/range {v208 .. v208}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v152

    .line 3958
    const/16 v80, 0x0

    :goto_54
    move-object/from16 v0, v152

    array-length v0, v0

    move/from16 v234, v0

    move/from16 v0, v80

    move/from16 v1, v234

    if-ge v0, v1, :cond_a2

    .line 3959
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

    .line 3958
    add-int/lit8 v80, v80, 0x1

    goto :goto_54

    .line 3963
    .end local v152    # "methods":[Ljava/lang/reflect/Method;
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

    .line 3964
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_a3

    .line 3965
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 3966
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

    .line 3969
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

    .line 3970
    .end local v155    # "mtitle":Ljava/lang/reflect/Field;
    .end local v208    # "textView":Ljava/lang/Object;
    :catch_34
    move-exception v61

    .line 3971
    .restart local v61    # "ex":Ljava/lang/NoSuchFieldException;
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

    .line 3972
    .end local v61    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_35
    move-exception v60

    .line 3973
    .restart local v60    # "ex":Ljava/lang/Exception;
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

    .line 3976
    .end local v60    # "ex":Ljava/lang/Exception;
    .end local v204    # "tempString":Ljava/lang/String;
    :cond_a4
    if-eqz v45, :cond_b7

    move-object/from16 v0, v45

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_b7

    .line 3977
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

    .line 3979
    move-object/from16 v67, v168

    .line 3981
    .local v67, "gLView":Ljava/lang/Object;
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    .line 3982
    .restart local v204    # "tempString":Ljava/lang/String;
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

    .line 3984
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    .line 3985
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

    .line 3988
    const/16 v57, 0x0

    .line 3997
    .local v57, "enable":Z
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

    .line 4003
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    :goto_55
    const/16 v234, 0x1

    :try_start_64
    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4004
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    if-eqz v234, :cond_a5

    .line 4005
    const/16 v57, 0x1

    .line 4006
    const-string/jumbo v204, "true"

    .line 4007
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

    .line 4008
    const-string/jumbo v204, "false"

    .line 4009
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

    .line 4010
    const-string/jumbo v204, "true"

    .line 4011
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

    .line 4018
    .end local v64    # "field":Ljava/lang/reflect/Field;
    :cond_a5
    :goto_56
    if-eqz v57, :cond_ae

    :try_start_65
    const-string/jumbo v204, "true"

    .line 4019
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

    .line 4023
    :try_start_66
    const-string/jumbo v234, "mTitle"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4024
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4025
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    .line 4026
    if-eqz v204, :cond_a7

    .line 4027
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_a6

    .line 4028
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 4029
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

    .line 4031
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

    .line 4041
    .end local v64    # "field":Ljava/lang/reflect/Field;
    :cond_a7
    :goto_58
    :try_start_67
    const-string/jumbo v234, "mClipRect"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4042
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4043
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/graphics/Rect;

    .line 4044
    .restart local v114    # "mClipRect":Landroid/graphics/Rect;
    if-eqz v114, :cond_b0

    .line 4046
    if-eqz v111, :cond_af

    move/from16 v0, v111

    move/from16 v1, v136

    if-le v0, v1, :cond_af

    .line 4047
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

    .line 4048
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

    .line 4050
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

    .line 4051
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

    .line 4053
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

    .line 4054
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

    .line 4056
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

    .line 4057
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

    .line 4093
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v114    # "mClipRect":Landroid/graphics/Rect;
    :goto_59
    const/16 v64, 0x0

    .line 4094
    .local v64, "field":Ljava/lang/reflect/Field;
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

    .line 4096
    :try_start_69
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v40

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4097
    .local v64, "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_69} :catch_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_69 .. :try_end_69} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_2
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    .line 4115
    .end local v64    # "field":Ljava/lang/reflect/Field;
    :cond_a8
    :goto_5a
    if-eqz v64, :cond_b2

    if-eqz v44, :cond_b2

    .line 4116
    :try_start_6a
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_2
    .catchall {:try_start_6a .. :try_end_6a} :catchall_0

    move-result-object v141

    .line 4117
    .local v141, "mText":Ljava/lang/Object;
    if-eqz v141, :cond_aa

    .line 4119
    :try_start_6b
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v44

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4120
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4121
    move-object/from16 v0, v64

    move-object/from16 v1, v141

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    .line 4122
    if-eqz v204, :cond_aa

    .line 4123
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_a9

    .line 4124
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 4125
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

    .line 4127
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

    .line 4155
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v141    # "mText":Ljava/lang/Object;
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

    .line 4157
    :try_start_6d
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v44

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4158
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4159
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    .line 4160
    if-eqz v204, :cond_ac

    .line 4161
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_ab

    .line 4162
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 4163
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

    .line 4165
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

    .line 4175
    .end local v64    # "field":Ljava/lang/reflect/Field;
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

    .line 4177
    :try_start_6f
    const-string/jumbo v234, "mChecked"

    move-object/from16 v0, v42

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4178
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4179
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v112

    .line 4180
    .local v112, "mChecked":Z
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

    .line 4181
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

    .line 4190
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v112    # "mChecked":Z
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

    .line 4192
    :try_start_71
    const-string/jumbo v234, "mSwitchBallPosition"

    move-object/from16 v0, v43

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4193
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4194
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v140

    .line 4195
    .local v140, "mSwitchBallPosition":I
    if-nez v140, :cond_b6

    .line 4196
    const-string/jumbo v204, "Camera"

    .line 4200
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

    .line 4201
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v140    # "mSwitchBallPosition":I
    :catch_36
    move-exception v55

    .line 4202
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 3998
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_37
    move-exception v53

    .line 3999
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_73
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mOnClickListener for touch"

    invoke-static/range {v234 .. v235}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
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

    .restart local v64    # "field":Ljava/lang/reflect/Field;
    goto/16 :goto_55

    .line 4015
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    :catch_38
    move-exception v53

    .line 4016
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_74
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mClickListener for touch"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    .line 4013
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_39
    move-exception v55

    .line 4014
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mClickListener for touch"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    .line 4018
    .end local v55    # "e":Ljava/lang/SecurityException;
    :cond_ae
    const-string/jumbo v204, "false"

    goto/16 :goto_57

    .line 4035
    :catch_3a
    move-exception v53

    .line 4036
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mTile for ID"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58

    .line 4033
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3b
    move-exception v55

    .line 4034
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 4059
    .end local v55    # "e":Ljava/lang/SecurityException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v114    # "mClipRect":Landroid/graphics/Rect;
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

    .line 4060
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

    .line 4062
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

    .line 4063
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

    .line 4065
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

    .line 4066
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

    .line 4068
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

    .line 4069
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

    .line 4086
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v114    # "mClipRect":Landroid/graphics/Rect;
    :catch_3c
    move-exception v55

    .line 4087
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 4072
    .end local v55    # "e":Ljava/lang/SecurityException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v114    # "mClipRect":Landroid/graphics/Rect;
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

    .line 4074
    .local v118, "mCurrentArea":Landroid/graphics/RectF;
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

    .line 4075
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

    .line 4077
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

    .line 4078
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

    .line 4080
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

    .line 4081
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

    .line 4083
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

    .line 4084
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

    .line 4088
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v114    # "mClipRect":Landroid/graphics/Rect;
    .end local v118    # "mCurrentArea":Landroid/graphics/RectF;
    :catch_3d
    move-exception v53

    .line 4089
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_78
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a rectangle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59

    .line 4101
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3e
    move-exception v53

    .line 4102
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 4098
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3f
    move-exception v55

    .line 4099
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const/16 v64, 0x0

    .line 4100
    .local v64, "field":Ljava/lang/reflect/Field;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 4104
    .end local v55    # "e":Ljava/lang/SecurityException;
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

    .line 4106
    :try_start_79
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v41

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4107
    .local v64, "field":Ljava/lang/reflect/Field;
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

    .line 4108
    .end local v64    # "field":Ljava/lang/reflect/Field;
    :catch_40
    move-exception v55

    .line 4109
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const/16 v64, 0x0

    .line 4110
    .local v64, "field":Ljava/lang/reflect/Field;
    :try_start_7a
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 4111
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    :catch_41
    move-exception v53

    .line 4112
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText to get TwGLText"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 4131
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v141    # "mText":Ljava/lang/Object;
    :catch_42
    move-exception v53

    .line 4132
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 4129
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_43
    move-exception v55

    .line 4130
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 4135
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v141    # "mText":Ljava/lang/Object;
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

    .line 4137
    :cond_b4
    :try_start_7b
    const-string/jumbo v234, "mTitle"

    move-object/from16 v0, v45

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4138
    .local v64, "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4139
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v234

    move-object/from16 v0, v234

    check-cast v0, Ljava/lang/String;

    move-object/from16 v204, v0

    .line 4140
    if-eqz v204, :cond_aa

    .line 4141
    const/16 v234, 0xa

    move-object/from16 v0, v204

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v234

    const/16 v235, -0x1

    move/from16 v0, v234

    move/from16 v1, v235

    if-eq v0, v1, :cond_b5

    .line 4142
    const-string/jumbo v234, "(\n|\r\n)"

    const-string/jumbo v235, "\u0003"

    move-object/from16 v0, v204

    move-object/from16 v1, v234

    move-object/from16 v2, v235

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 4143
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

    .line 4145
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

    .line 4147
    .end local v64    # "field":Ljava/lang/reflect/Field;
    :catch_44
    move-exception v55

    .line 4148
    .restart local v55    # "e":Ljava/lang/SecurityException;
    :try_start_7c
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mTile for Text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 4149
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_45
    move-exception v53

    .line 4150
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mTile for Text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 4169
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_46
    move-exception v53

    .line 4170
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 4167
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_47
    move-exception v55

    .line 4168
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 4184
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_48
    move-exception v53

    .line 4185
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mChecked for check"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    .line 4182
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_49
    move-exception v55

    .line 4183
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 4198
    .end local v55    # "e":Ljava/lang/SecurityException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v140    # "mSwitchBallPosition":I
    :cond_b6
    :try_start_7d
    const-string/jumbo v204, "Camcorder"
    :try_end_7d
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_7d} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7d .. :try_end_7d} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_2
    .catchall {:try_start_7d .. :try_end_7d} :catchall_0

    goto/16 :goto_5e

    .line 4203
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v140    # "mSwitchBallPosition":I
    :catch_4a
    move-exception v53

    .line 4204
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_7e
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 4207
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    .end local v57    # "enable":Z
    .end local v67    # "gLView":Ljava/lang/Object;
    .end local v204    # "tempString":Ljava/lang/String;
    :cond_b7
    if-eqz v31, :cond_bb

    move-object/from16 v0, v31

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_bb

    .line 4208
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

    .line 4210
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    .line 4211
    .restart local v204    # "tempString":Ljava/lang/String;
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

    .line 4213
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    .line 4214
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

    .line 4216
    if-eqz v28, :cond_b8

    move-object/from16 v0, v28

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_2
    .catchall {:try_start_7e .. :try_end_7e} :catchall_0

    move-result v234

    if-eqz v234, :cond_b8

    .line 4218
    :try_start_7f
    const-string/jumbo v234, "mResourceID"

    move-object/from16 v0, v28

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4219
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4220
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_7f
    .catch Ljava/lang/SecurityException; {:try_start_7f .. :try_end_7f} :catch_4c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7f .. :try_end_7f} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_2
    .catchall {:try_start_7f .. :try_end_7f} :catchall_0

    move-result v134

    .line 4221
    .local v134, "mResourceID":I
    if-eqz v134, :cond_b8

    if-eqz v202, :cond_b8

    .line 4223
    :try_start_80
    move-object/from16 v0, v202

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v204

    .line 4224
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

    .line 4236
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v134    # "mResourceID":I
    :cond_b8
    :goto_5f
    const/16 v121, 0x0

    .line 4239
    .local v121, "mGlObject":Ljava/lang/Object;
    :try_start_81
    const-string/jumbo v234, "mRect"

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v133

    .line 4240
    .local v133, "mRect":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v133

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4241
    move-object/from16 v0, v133

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v75

    .line 4243
    .local v75, "glRect":Ljava/lang/Object;
    const-string/jumbo v234, "mGlObject"

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4244
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4245
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_81} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_81 .. :try_end_81} :catch_51
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_2
    .catchall {:try_start_81 .. :try_end_81} :catchall_0

    move-result-object v121

    .line 4249
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

    .line 4250
    .local v18, "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4251
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

    .line 4258
    .end local v18    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_60
    :try_start_83
    const-string/jumbo v234, "mXlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4259
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4260
    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v166

    .line 4261
    .local v166, "objX":F
    const-string/jumbo v234, "mYlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4262
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4263
    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v167

    .line 4265
    .local v167, "objY":F
    const-string/jumbo v234, "mXrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4266
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4267
    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    sub-float v165, v234, v166

    .line 4268
    .local v165, "objWidth":F
    const-string/jumbo v234, "mYrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4269
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4270
    move-object/from16 v0, v64

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    sub-float v163, v234, v167

    .line 4273
    .local v163, "objHeight":F
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

    .line 4274
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

    .line 4275
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

    .line 4276
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

    .line 4278
    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mLeft"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v129

    .line 4279
    .local v129, "mLeft":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v129

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4280
    move-object/from16 v0, v129

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v232

    .line 4281
    .restart local v232    # "x":I
    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mTop"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v145

    .line 4282
    .local v145, "mTop":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v145

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4283
    move-object/from16 v0, v145

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v233

    .line 4285
    .restart local v233    # "y":I
    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mWidth"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v150

    .line 4286
    .local v150, "mWidth":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v150

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4287
    move-object/from16 v0, v150

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v231

    .line 4288
    .restart local v231    # "width":I
    invoke-virtual/range {v75 .. v75}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    const-string/jumbo v235, "mHeight"

    invoke-virtual/range {v234 .. v235}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v123

    .line 4289
    .local v123, "mHeight":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v123

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4290
    move-object/from16 v0, v123

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v76

    .line 4295
    .restart local v76    # "height":I
    const-string/jumbo v234, "mParent"

    move-object/from16 v0, v31

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4296
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4297
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v132

    .line 4298
    .local v132, "mParent":Ljava/lang/Object;
    if-eqz v132, :cond_ba

    .line 4299
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

    .line 4300
    .local v178, "parentWidth":I
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

    .line 4301
    .local v177, "parentHeight":I
    move/from16 v0, v178

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v184, v165, v234

    .line 4302
    .local v184, "rateX":F
    move/from16 v0, v177

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v185, v163, v234

    .line 4308
    .end local v177    # "parentHeight":I
    .end local v178    # "parentWidth":I
    .local v185, "rateY":F
    :goto_61
    move/from16 v0, v232

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v184

    add-float v234, v234, v166

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v224, v0

    .line 4309
    .local v224, "viewX":I
    move/from16 v0, v233

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v185

    add-float v234, v234, v167

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v225, v0

    .line 4310
    .local v225, "viewY":I
    move/from16 v0, v231

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v184

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v223, v0

    .line 4311
    .local v223, "viewWidth":I
    move/from16 v0, v76

    int-to-float v0, v0

    move/from16 v234, v0

    mul-float v234, v234, v185

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v221, v0

    .line 4313
    .local v221, "viewHeight":I
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

    .line 4314
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

    .line 4315
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

    .line 4316
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

    .line 4324
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v75    # "glRect":Ljava/lang/Object;
    .end local v76    # "height":I
    .end local v121    # "mGlObject":Ljava/lang/Object;
    .end local v123    # "mHeight":Ljava/lang/reflect/Field;
    .end local v129    # "mLeft":Ljava/lang/reflect/Field;
    .end local v132    # "mParent":Ljava/lang/Object;
    .end local v133    # "mRect":Ljava/lang/reflect/Field;
    .end local v145    # "mTop":Ljava/lang/reflect/Field;
    .end local v150    # "mWidth":Ljava/lang/reflect/Field;
    .end local v163    # "objHeight":F
    .end local v165    # "objWidth":F
    .end local v166    # "objX":F
    .end local v167    # "objY":F
    .end local v184    # "rateX":F
    .end local v185    # "rateY":F
    .end local v221    # "viewHeight":I
    .end local v223    # "viewWidth":I
    .end local v224    # "viewX":I
    .end local v225    # "viewY":I
    .end local v231    # "width":I
    .end local v232    # "x":I
    .end local v233    # "y":I
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

    .line 4326
    :try_start_85
    const-string/jumbo v234, "mText"

    move-object/from16 v0, v30

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v64

    .line 4327
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4328
    move-object/from16 v0, v64

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Ljava/lang/String;

    .line 4329
    .local v142, "mText":Ljava/lang/String;
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

    .line 4337
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v142    # "mText":Ljava/lang/String;
    :cond_b9
    :goto_63
    const/16 v57, 0x1

    .line 4338
    .restart local v57    # "enable":Z
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

    .line 4339
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

    .line 4225
    .end local v57    # "enable":Z
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v134    # "mResourceID":I
    :catch_4b
    move-exception v51

    .line 4226
    .restart local v51    # "e":Landroid/content/res/Resources$NotFoundException;
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

    .line 4229
    .end local v51    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v134    # "mResourceID":I
    :catch_4c
    move-exception v55

    .line 4230
    .restart local v55    # "e":Ljava/lang/SecurityException;
    :try_start_88
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mResourceID for entry"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f

    .line 4231
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_4d
    move-exception v53

    .line 4232
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
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

    .line 4254
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v75    # "glRect":Ljava/lang/Object;
    .restart local v121    # "mGlObject":Ljava/lang/Object;
    .restart local v133    # "mRect":Ljava/lang/reflect/Field;
    :catch_4e
    move-exception v54

    .line 4255
    .restart local v54    # "e":Ljava/lang/NoSuchMethodException;
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

    .line 4318
    .end local v54    # "e":Ljava/lang/NoSuchMethodException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v75    # "glRect":Ljava/lang/Object;
    .end local v121    # "mGlObject":Ljava/lang/Object;
    .end local v133    # "mRect":Ljava/lang/reflect/Field;
    :catch_4f
    move-exception v55

    .line 4319
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 4252
    .end local v55    # "e":Ljava/lang/SecurityException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v75    # "glRect":Ljava/lang/Object;
    .restart local v121    # "mGlObject":Ljava/lang/Object;
    .restart local v133    # "mRect":Ljava/lang/reflect/Field;
    :catch_50
    move-exception v55

    .line 4253
    .restart local v55    # "e":Ljava/lang/SecurityException;
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

    .line 4320
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v75    # "glRect":Ljava/lang/Object;
    .end local v121    # "mGlObject":Ljava/lang/Object;
    .end local v133    # "mRect":Ljava/lang/reflect/Field;
    :catch_51
    move-exception v53

    .line 4321
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_8c
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a rectangle"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62

    .line 4304
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v64    # "field":Ljava/lang/reflect/Field;
    .restart local v75    # "glRect":Ljava/lang/Object;
    .restart local v76    # "height":I
    .restart local v121    # "mGlObject":Ljava/lang/Object;
    .restart local v123    # "mHeight":Ljava/lang/reflect/Field;
    .restart local v129    # "mLeft":Ljava/lang/reflect/Field;
    .restart local v132    # "mParent":Ljava/lang/Object;
    .restart local v133    # "mRect":Ljava/lang/reflect/Field;
    .restart local v145    # "mTop":Ljava/lang/reflect/Field;
    .restart local v150    # "mWidth":Ljava/lang/reflect/Field;
    .restart local v163    # "objHeight":F
    .restart local v165    # "objWidth":F
    .restart local v166    # "objX":F
    .restart local v167    # "objY":F
    .restart local v231    # "width":I
    .restart local v232    # "x":I
    .restart local v233    # "y":I
    :cond_ba
    move/from16 v0, v231

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v184, v165, v234

    .line 4305
    .restart local v184    # "rateX":F
    move/from16 v0, v76

    int-to-float v0, v0

    move/from16 v234, v0

    div-float v185, v163, v234

    .restart local v185    # "rateY":F
    goto/16 :goto_61

    .line 4332
    .end local v64    # "field":Ljava/lang/reflect/Field;
    .end local v75    # "glRect":Ljava/lang/Object;
    .end local v76    # "height":I
    .end local v121    # "mGlObject":Ljava/lang/Object;
    .end local v123    # "mHeight":Ljava/lang/reflect/Field;
    .end local v129    # "mLeft":Ljava/lang/reflect/Field;
    .end local v132    # "mParent":Ljava/lang/Object;
    .end local v133    # "mRect":Ljava/lang/reflect/Field;
    .end local v145    # "mTop":Ljava/lang/reflect/Field;
    .end local v150    # "mWidth":Ljava/lang/reflect/Field;
    .end local v163    # "objHeight":F
    .end local v165    # "objWidth":F
    .end local v166    # "objX":F
    .end local v167    # "objY":F
    .end local v184    # "rateX":F
    .end local v185    # "rateY":F
    .end local v231    # "width":I
    .end local v232    # "x":I
    .end local v233    # "y":I
    :catch_52
    move-exception v53

    .line 4333
    .restart local v53    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63

    .line 4330
    .end local v53    # "e":Ljava/lang/NoSuchFieldException;
    :catch_53
    move-exception v55

    .line 4331
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No mText for text"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63

    .line 4340
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v204    # "tempString":Ljava/lang/String;
    :cond_bb
    if-eqz v29, :cond_bc

    move-object/from16 v0, v29

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_bc

    .line 4341
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

    .line 4343
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    .line 4344
    .restart local v204    # "tempString":Ljava/lang/String;
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

    .line 4346
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    .line 4347
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

    .line 4349
    const-string/jumbo v204, "true"

    .line 4350
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

    .line 4354
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

    .line 4355
    .restart local v18    # "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4356
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

    .line 4363
    .end local v18    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_64
    :try_start_8e
    const-string/jumbo v234, "mXlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v129

    .line 4364
    .restart local v129    # "mLeft":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v129

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4365
    move-object/from16 v0, v129

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v232, v0

    .line 4366
    .restart local v232    # "x":I
    const-string/jumbo v234, "mYlt"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v145

    .line 4367
    .restart local v145    # "mTop":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v145

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4368
    move-object/from16 v0, v145

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v233, v0

    .line 4370
    .restart local v233    # "y":I
    const-string/jumbo v234, "mXrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v150

    .line 4371
    .restart local v150    # "mWidth":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v150

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4372
    move-object/from16 v0, v150

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v234, v0

    sub-int v231, v234, v232

    .line 4373
    .restart local v231    # "width":I
    const-string/jumbo v234, "mYrb"

    move-object/from16 v0, v29

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v123

    .line 4374
    .restart local v123    # "mHeight":Ljava/lang/reflect/Field;
    const/16 v234, 0x1

    move-object/from16 v0, v123

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4375
    move-object/from16 v0, v123

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v234

    move/from16 v0, v234

    float-to-int v0, v0

    move/from16 v234, v0

    sub-int v76, v234, v233

    .line 4377
    .restart local v76    # "height":I
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

    .line 4378
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

    .line 4379
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

    .line 4380
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

    .line 4359
    .end local v76    # "height":I
    .end local v123    # "mHeight":Ljava/lang/reflect/Field;
    .end local v129    # "mLeft":Ljava/lang/reflect/Field;
    .end local v145    # "mTop":Ljava/lang/reflect/Field;
    .end local v150    # "mWidth":Ljava/lang/reflect/Field;
    .end local v231    # "width":I
    .end local v232    # "x":I
    .end local v233    # "y":I
    :catch_54
    move-exception v54

    .line 4360
    .restart local v54    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: checkPosIn"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64

    .line 4357
    .end local v54    # "e":Ljava/lang/NoSuchMethodException;
    :catch_55
    move-exception v55

    .line 4358
    .restart local v55    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "No method: checkPosIn"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64

    .line 4382
    .end local v55    # "e":Ljava/lang/SecurityException;
    .end local v204    # "tempString":Ljava/lang/String;
    :cond_bc
    if-eqz v26, :cond_be

    move-object/from16 v0, v26

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v234

    if-eqz v234, :cond_be

    .line 4383
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

    .line 4385
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v234

    invoke-virtual/range {v234 .. v234}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v204

    .line 4386
    .restart local v204    # "tempString":Ljava/lang/String;
    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->isEmpty()Z

    move-result v234

    if-eqz v234, :cond_bd

    .line 4387
    const-string/jumbo v204, "$"

    .line 4389
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

    .line 4391
    invoke-virtual/range {v168 .. v168}, Ljava/lang/Object;->hashCode()I

    move-result v234

    invoke-static/range {v234 .. v234}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v204

    .line 4392
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

    .line 4394
    const-string/jumbo v204, "true"

    .line 4395
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

    .line 4398
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

    .line 4399
    .local v17, "bounds":Ljava/lang/reflect/Method;
    const/16 v234, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4401
    const/16 v234, 0x0

    nop

    nop

    move-object/from16 v0, v17

    move-object/from16 v1, v168

    move-object/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/graphics/Rect;

    .line 4402
    .restart local v186    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v232, v0

    .line 4403
    .restart local v232    # "x":I
    move-object/from16 v0, v186

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v233, v0

    .line 4404
    .restart local v233    # "y":I
    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->width()I

    move-result v231

    .line 4405
    .restart local v231    # "width":I
    invoke-virtual/range {v186 .. v186}, Landroid/graphics/Rect;->height()I

    move-result v76

    .line 4407
    .restart local v76    # "height":I
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

    .line 4408
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

    .line 4409
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

    .line 4410
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

    .line 4412
    const-string/jumbo v204, "true"

    .line 4413
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

    .line 4414
    .end local v17    # "bounds":Ljava/lang/reflect/Method;
    .end local v76    # "height":I
    .end local v186    # "rect":Landroid/graphics/Rect;
    .end local v231    # "width":I
    .end local v232    # "x":I
    .end local v233    # "y":I
    :catch_56
    move-exception v55

    .line 4415
    .restart local v55    # "e":Ljava/lang/SecurityException;
    :try_start_90
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a boundary"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 4416
    .end local v55    # "e":Ljava/lang/SecurityException;
    :catch_57
    move-exception v54

    .line 4417
    .restart local v54    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v234, "TDK"

    const-string/jumbo v235, "Failed to get a boundary"

    move-object/from16 v0, v234

    move-object/from16 v1, v235

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 4422
    .end local v54    # "e":Ljava/lang/NoSuchMethodException;
    .end local v204    # "tempString":Ljava/lang/String;
    :cond_be
    move-object/from16 v0, v168

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v234, v0

    if-eqz v234, :cond_bf

    .line 4423
    check-cast v168, Ljava/lang/String;

    .end local v168    # "object":Ljava/lang/Object;
    move-object/from16 v0, v172

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4a

    .line 4425
    .restart local v168    # "object":Ljava/lang/Object;
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

    .line 4427
    const/16 v216, 0x1

    .line 4428
    move/from16 v180, v94

    .line 4430
    const/16 v80, 0x0

    :goto_65
    move/from16 v0, v80

    move/from16 v1, v94

    if-ge v0, v1, :cond_71

    .line 4431
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StringBuilder;->length()I

    move-result v234

    add-int/lit8 v234, v234, -0x1

    move-object/from16 v0, v172

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4430
    add-int/lit8 v80, v80, 0x1

    goto :goto_65

    .line 4438
    .end local v80    # "i":I
    .end local v94    # "level":I
    .end local v168    # "object":Ljava/lang/Object;
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

    .line 4439
    .local v171, "out":Ljava/io/BufferedWriter;
    :try_start_91
    invoke-virtual/range {v172 .. v172}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .end local v170    # "out":Ljava/io/BufferedWriter;
    move-result-object v234

    move-object/from16 v0, v171

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4440
    const-string/jumbo v234, "DONE."

    move-object/from16 v0, v171

    move-object/from16 v1, v234

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4441
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_58
    .catchall {:try_start_91 .. :try_end_91} :catchall_1

    .line 4445
    if-eqz v171, :cond_c1

    .line 4446
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedWriter;->close()V

    :cond_c1
    move-object/from16 v170, v171

    .end local v171    # "out":Ljava/io/BufferedWriter;
    .local v170, "out":Ljava/io/BufferedWriter;
    goto/16 :goto_6

    .line 4444
    .end local v170    # "out":Ljava/io/BufferedWriter;
    .restart local v171    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v234

    move-object/from16 v170, v171

    .end local v171    # "out":Ljava/io/BufferedWriter;
    .restart local v170    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_c

    .line 4442
    .end local v170    # "out":Ljava/io/BufferedWriter;
    .restart local v171    # "out":Ljava/io/BufferedWriter;
    :catch_58
    move-exception v52

    .restart local v52    # "e":Ljava/lang/Exception;
    move-object/from16 v170, v171

    .end local v171    # "out":Ljava/io/BufferedWriter;
    .restart local v170    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_5

    .line 3553
    .end local v52    # "e":Ljava/lang/Exception;
    .restart local v80    # "i":I
    .restart local v81    # "id":I
    .restart local v94    # "level":I
    .restart local v168    # "object":Ljava/lang/Object;
    .local v170, "out":Ljava/io/BufferedWriter;
    .restart local v202    # "tempResources":Landroid/content/res/Resources;
    .restart local v204    # "tempString":Ljava/lang/String;
    .restart local v218    # "view":Landroid/view/View;
    :catch_59
    move-exception v51

    .restart local v51    # "e":Landroid/content/res/Resources$NotFoundException;
    goto/16 :goto_41

    .line 2775
    .end local v51    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v80    # "i":I
    .end local v81    # "id":I
    .end local v168    # "object":Ljava/lang/Object;
    .end local v169    # "object$iterator":Ljava/util/Iterator;
    .end local v180    # "preLevel":I
    .end local v181    # "previousLevel":I
    .end local v202    # "tempResources":Landroid/content/res/Resources;
    .end local v204    # "tempString":Ljava/lang/String;
    .end local v216    # "unknownObject":Z
    .end local v218    # "view":Landroid/view/View;
    .restart local v9    # "activeFolderTitleView":Ljava/lang/Object;
    .restart local v84    # "indexToRemove":I
    .local v173, "packageName":Ljava/lang/String;
    :catch_5a
    move-exception v52

    .restart local v52    # "e":Ljava/lang/Exception;
    goto/16 :goto_1e
.end method

.method public static dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 889
    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 890
    .local v0, "encoder":Landroid/view/ViewHierarchyEncoder;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 892
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/view/ViewDebug$7;

    invoke-direct {v2, p0, v0, v1}, Landroid/view/ViewDebug$7;-><init>(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 900
    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 901
    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 888
    return-void
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
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

    .prologue
    .line 1334
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v14

    .line 1336
    .local v14, "fields":[Ljava/lang/reflect/Field;
    array-length v10, v14

    .line 1337
    .local v10, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v10, :cond_10

    .line 1338
    aget-object v12, v14, v16

    .line 1342
    .local v12, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    .line 1343
    .local v13, "fieldValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    .line 1344
    .local v24, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1346
    .local v4, "property":Landroid/view/ViewDebug$ExportedProperty;
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

    .line 1348
    .local v9, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_b

    .line 1349
    :cond_0
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_5

    .line 1350
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    .line 1351
    .local v17, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v13

    .line 1415
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v17    # "id":I
    :cond_1
    :goto_2
    if-nez v13, :cond_2

    .line 1416
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1419
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

    .line 1337
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1346
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const-string/jumbo v9, ""

    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    goto :goto_1

    .line 1353
    :cond_5
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v15

    .line 1354
    .local v15, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v15

    if-lez v2, :cond_6

    .line 1355
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    .line 1357
    .local v18, "intValue":I
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

    .line 1358
    .local v6, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1361
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v18    # "intValue":I
    :cond_6
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v21

    .line 1362
    .local v21, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_8

    .line 1363
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    .line 1364
    .restart local v18    # "intValue":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    .line 1365
    .local v22, "mappingCount":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1366
    aget-object v20, v21, v19

    .line 1367
    .local v20, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    .line 1368
    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v13

    .line 1373
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_7
    if-nez v13, :cond_8

    .line 1374
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1378
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v22    # "mappingCount":I
    :cond_8
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1379
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1380
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_a

    .line 1381
    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1365
    .restart local v18    # "intValue":I
    .restart local v19    # "j":I
    .restart local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v22    # "mappingCount":I
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1382
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v22    # "mappingCount":I
    :cond_a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_1

    .line 1383
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

    .line 1387
    .end local v15    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v21    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_b
    const-class v2, [I

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_c

    .line 1388
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1389
    .local v5, "array":[I
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

    .line 1390
    .restart local v6    # "valuePrefix":Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 1392
    .local v23, "suffix":Ljava/lang/String;
    const-string/jumbo v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1420
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v5    # "array":[I
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v23    # "suffix":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_3

    .line 1395
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    const-class v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_f

    .line 1396
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 1397
    .local v8, "array":[Ljava/lang/String;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    .line 1398
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_5
    array-length v2, v8

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 1399
    aget-object v2, v8, v19

    if-eqz v2, :cond_d

    .line 1400
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

    .line 1401
    add-int/lit8 v2, v19, 0x1

    aget-object v2, v8, v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "null"

    .line 1400
    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v3, v7, v1, v2}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1398
    :cond_d
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    .line 1401
    :cond_e
    add-int/lit8 v2, v19, 0x1

    aget-object v2, v8, v2

    goto :goto_6

    .line 1407
    .end local v8    # "array":[Ljava/lang/String;
    .end local v19    # "j":I
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1408
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1409
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1410
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    .line 1409
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

    .line 1332
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
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

    .prologue
    .line 1251
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v26

    .line 1252
    .local v26, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v26

    array-length v11, v0

    .line 1253
    .local v11, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_c

    .line 1254
    aget-object v24, v26, v16

    .line 1257
    .local v24, "method":Ljava/lang/reflect/Method;
    :try_start_0
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 1258
    .local v25, "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v27

    .line 1259
    .local v27, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1261
    .local v5, "property":Landroid/view/ViewDebug$ExportedProperty;
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

    .line 1263
    .local v10, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_7

    .line 1264
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    .line 1265
    check-cast v25, Ljava/lang/Integer;

    .end local v25    # "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1266
    .local v17, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v25

    .line 1323
    .end local v17    # "id":I
    .restart local v25    # "methodValue":Ljava/lang/Object;
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

    .line 1253
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1261
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v25    # "methodValue":Ljava/lang/Object;
    .restart local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v10, ""

    .restart local v10    # "categoryPrefix":Ljava/lang/String;
    goto :goto_1

    .line 1268
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v15

    .line 1269
    .local v15, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v15

    if-lez v3, :cond_4

    .line 1270
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1272
    .local v18, "intValue":I
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

    .line 1273
    .local v7, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1276
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v18    # "intValue":I
    :cond_4
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v22

    .line 1277
    .local v22, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v22

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1278
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1279
    .restart local v18    # "intValue":I
    const/16 v20, 0x0

    .line 1280
    .local v20, "mapped":Z
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .line 1281
    .local v23, "mappingCount":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 1282
    aget-object v21, v22, v19

    .line 1283
    .local v21, "mapper":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    move/from16 v0, v18

    if-ne v3, v0, :cond_6

    .line 1284
    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v25

    .line 1285
    const/16 v20, 0x1

    .line 1290
    .end local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    :cond_5
    if-nez v20, :cond_0

    .line 1291
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto/16 :goto_2

    .line 1281
    .restart local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1295
    .end local v15    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v20    # "mapped":Z
    .end local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v22    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v23    # "mappingCount":I
    :cond_7
    const-class v3, [I

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_8

    .line 1296
    move-object/from16 v0, v25

    check-cast v0, [I

    move-object v6, v0

    .line 1297
    .local v6, "array":[I
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

    .line 1298
    .restart local v7    # "valuePrefix":Ljava/lang/String;
    const-string/jumbo v28, "()"

    .line 1300
    .local v28, "suffix":Ljava/lang/String;
    const-string/jumbo v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1324
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "array":[I
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "suffix":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_3

    .line 1303
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v10    # "categoryPrefix":Ljava/lang/String;
    .restart local v25    # "methodValue":Ljava/lang/Object;
    .restart local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const-class v3, [Ljava/lang/String;

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_b

    .line 1304
    move-object/from16 v0, v25

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 1305
    .local v9, "array":[Ljava/lang/String;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    .line 1306
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_5
    array-length v3, v9

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    .line 1307
    aget-object v3, v9, v19

    if-eqz v3, :cond_9

    .line 1308
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

    .line 1309
    add-int/lit8 v3, v19, 0x1

    aget-object v3, v9, v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "null"

    .line 1308
    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v4, v8, v1, v3}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1306
    :cond_9
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    .line 1309
    :cond_a
    add-int/lit8 v3, v19, 0x1

    aget-object v3, v9, v3

    goto :goto_6

    .line 1316
    .end local v9    # "array":[Ljava/lang/String;
    .end local v19    # "j":I
    :cond_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1317
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1318
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

    .line 1325
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v13

    .local v13, "e":Ljava/lang/reflect/InvocationTargetException;
    goto/16 :goto_3

    .line 1249
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v24    # "method":Ljava/lang/reflect/Method;
    :cond_c
    return-void

    .line 1326
    .restart local v24    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v14

    .local v14, "e":Ljava/util/concurrent/TimeoutException;
    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "property"    # Landroid/view/ViewDebug$ExportedProperty;
    .param p3, "array"    # [I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1457
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1458
    .local v5, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_3

    const/4 v3, 0x1

    .line 1460
    .local v3, "hasIndexMapping":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1461
    .local v10, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_4

    const/4 v4, 0x1

    .line 1463
    .local v4, "hasMapping":Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz p0, :cond_5

    const/4 v13, 0x1

    .line 1464
    .local v13, "resolveId":Z
    :goto_2
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1466
    .local v15, "valuesCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v15, :cond_9

    .line 1468
    const/4 v14, 0x0

    .line 1470
    .local v14, "value":Ljava/lang/String;
    aget v6, p3, v7

    .line 1472
    .local v6, "intValue":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1473
    .local v12, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1474
    array-length v11, v5

    .line 1475
    .local v11, "mappingCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_4
    if-ge v8, v11, :cond_0

    .line 1476
    aget-object v9, v5, v8

    .line 1477
    .local v9, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    .line 1478
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1484
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_0
    if-eqz v4, :cond_1

    .line 1485
    array-length v11, v10

    .line 1486
    .restart local v11    # "mappingCount":I
    const/4 v8, 0x0

    .restart local v8    # "k":I
    :goto_5
    if-ge v8, v11, :cond_1

    .line 1487
    aget-object v9, v10, v8

    .line 1488
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_7

    .line 1489
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1495
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v13, :cond_8

    .line 1496
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1501
    :cond_2
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1466
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1458
    .end local v3    # "hasIndexMapping":Z
    .end local v4    # "hasMapping":Z
    .end local v6    # "intValue":I
    .end local v7    # "j":I
    .end local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "resolveId":Z
    .end local v15    # "valuesCount":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "hasIndexMapping":Z
    goto :goto_0

    .line 1461
    .restart local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "hasMapping":Z
    goto :goto_1

    .line 1463
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "resolveId":Z
    goto :goto_2

    .line 1475
    .restart local v6    # "intValue":I
    .restart local v7    # "j":I
    .restart local v8    # "k":I
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v11    # "mappingCount":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "valuesCount":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1486
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1498
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "value":Ljava/lang/String;
    goto :goto_6

    .line 1455
    .end local v6    # "intValue":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 9
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1439
    array-length v0, p1

    .line 1440
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1441
    aget-object v1, p1, v3

    .line 1442
    .local v1, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1443
    .local v2, "ifTrue":Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1444
    .local v4, "maskResult":I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_2

    const/4 v6, 0x1

    .line 1445
    .local v6, "test":Z
    :goto_1
    if-eqz v6, :cond_0

    if-nez v2, :cond_3

    :cond_0
    if-nez v6, :cond_1

    if-eqz v2, :cond_3

    .line 1440
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1444
    .end local v6    # "test":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1446
    .restart local v6    # "test":Z
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1447
    .local v5, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1448
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1437
    .end local v1    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v2    # "ifTrue":Z
    .end local v4    # "maskResult":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "test":Z
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 512
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 513
    const-string/jumbo v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "ids":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v0, v3, v5

    .line 515
    .local v0, "className":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 517
    .local v1, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 518
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 519
    nop

    nop

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 523
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "hashCode":I
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 524
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 527
    .end local v2    # "id":I
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "hashCode":I
    .restart local v3    # "ids":[Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    return-object v8
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 6
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 968
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 969
    return-object p0

    .line 972
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 973
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 974
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 975
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 976
    nop

    nop

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 977
    .local v1, "found":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 978
    return-object v1

    .line 980
    .end local v1    # "found":Landroid/view/View;
    :cond_1
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 981
    return-object v3

    .line 983
    :cond_2
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_3

    .line 984
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v4, v4, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 986
    .restart local v1    # "found":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 987
    return-object v1

    .line 990
    .end local v1    # "found":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_4

    .line 991
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .end local v3    # "view":Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 993
    .restart local v1    # "found":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 994
    return-object v1

    .line 973
    .end local v1    # "found":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 998
    :cond_5
    return-object v5
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1245
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

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 1104
    sget-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 1105
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1107
    :cond_0
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 1108
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1111
    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1113
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Field;

    .line 1114
    .local v4, "fields":[Ljava/lang/reflect/Field;
    if-eqz v4, :cond_2

    .line 1115
    return-object v4

    .line 1119
    :cond_2
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1120
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v5, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v3, v1, v8

    .line 1123
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1124
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1125
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    sget-object v10, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 1129
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Ljava/lang/reflect/Field;

    move-object v4, v0

    .line 1130
    invoke-virtual {v6, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    return-object v4

    .line 1131
    .end local v1    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v5    # "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v2

    .line 1132
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
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

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 1139
    sget-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1140
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1142
    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1143
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1146
    :cond_1
    sget-object v2, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1148
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Method;

    .line 1149
    .local v4, "methods":[Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    .line 1150
    return-object v4

    .line 1153
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v3, v4, v6

    .line 1159
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 1160
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    .line 1166
    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    .line 1165
    if-eqz v5, :cond_3

    .line 1167
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/lang/Void;

    if-eq v5, v8, :cond_3

    .line 1168
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1169
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    :cond_3
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 1174
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    check-cast v4, [Ljava/lang/reflect/Method;

    .line 1175
    .restart local v4    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    return-object v4

    .line 1161
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_1
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v11, 0x1

    .line 944
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 945
    .local v6, "outValue":Landroid/util/TypedValue;
    const-string/jumbo v5, "null"

    .line 946
    .local v5, "nullString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 947
    .local v4, "i":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v1

    .line 948
    .local v1, "attributes":[I
    array-length v7, v1

    mul-int/lit8 v7, v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    .line 949
    .local v2, "data":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget v0, v1, v8

    .line 951
    .local v0, "attributeId":I
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 952
    add-int/lit8 v10, v4, 0x1

    const/4 v7, 0x1

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 953
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 952
    :goto_1
    aput-object v7, v2, v10

    .line 954
    add-int/lit8 v4, v4, 0x2

    .line 957
    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v11, :cond_0

    .line 958
    add-int/lit8 v7, v4, -0x1

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :cond_0
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_1
    move-object v7, v5

    .line 953
    goto :goto_1

    .line 964
    .end local v0    # "attributeId":I
    :cond_2
    return-object v2

    .line 960
    .restart local v0    # "attributeId":I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_2
.end method

.method public static getViewInstanceCount()J
    .locals 2

    .prologue
    .line 415
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    .prologue
    .line 426
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 532
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 530
    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1699
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1700
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1701
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1703
    .local v5, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Landroid/view/ViewDebug$9;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$9;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1719
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1725
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1720
    :catch_0
    move-exception v7

    .line 1721
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1728
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 1002
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1003
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "viewClassName":Ljava/lang/String;
    const-string/jumbo v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    const-string/jumbo v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1007
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1010
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 788
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 784
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 782
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 826
    if-eqz p0, :cond_0

    .line 827
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 828
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 830
    .local v0, "cache":[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v2, v0, p0, p1}, Landroid/view/ViewDebug$6;-><init>(Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;Landroid/view/View;Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 844
    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 845
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/lang/InterruptedException;
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

    .line 848
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 852
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    return-object v6
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 552
    .local v3, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 554
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    if-eqz v3, :cond_2

    .line 557
    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 562
    :goto_0
    const-string/jumbo v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 567
    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v1, v2

    .line 549
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 559
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    const-string/jumbo v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 565
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "View"

    const-string/jumbo v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    if-eqz v1, :cond_1

    .line 568
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 567
    :goto_3
    if-eqz v1, :cond_3

    .line 568
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 566
    :cond_3
    throw v4

    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v1, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 564
    .local v1, "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 575
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 583
    if-nez p2, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_3

    .line 584
    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v6

    .line 610
    .local v6, "durationMeasure":J
    :goto_0
    if-nez p2, :cond_1

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_4

    .line 611
    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4

    .line 624
    .local v4, "durationLayout":J
    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_5

    .line 625
    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2

    .line 654
    .local v2, "durationDraw":J
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    .line 656
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    .line 658
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 660
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v1, p0

    .line 661
    nop

    nop

    .line 662
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 663
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v0, :cond_6

    .line 664
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 663
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 608
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "durationDraw":J
    .end local v4    # "durationLayout":J
    .end local v6    # "durationMeasure":J
    .end local v8    # "i":I
    :cond_3
    const-wide/16 v6, 0x0

    .restart local v6    # "durationMeasure":J
    goto :goto_0

    .line 622
    :cond_4
    const-wide/16 v4, 0x0

    .restart local v4    # "durationLayout":J
    goto :goto_1

    .line 653
    :cond_5
    const-wide/16 v2, 0x0

    .restart local v2    # "durationDraw":J
    goto :goto_2

    .line 580
    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .param p0, "view"    # Landroid/view/View;
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

    .prologue
    .local p1, "operation":Landroid/view/ViewDebug$ViewOperation;, "Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    .line 676
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 677
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [J

    .line 679
    .local v0, "duration":[J
    new-instance v3, Landroid/view/ViewDebug$5;

    invoke-direct {v3, v2, p1, v0}, Landroid/view/ViewDebug$5;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/view/ViewDebug$ViewOperation;[J)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 696
    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 697
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

    .line 698
    return-wide v6

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Ljava/lang/InterruptedException;
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

    .line 702
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 703
    return-wide v6

    .line 706
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    return-wide v4
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 539
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 540
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 537
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1507
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1508
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1510
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

    .line 1511
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 1510
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1518
    .local v1, "fieldValue":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1512
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1513
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
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

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0

    .line 1516
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1736
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1737
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1738
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    .line 1739
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1740
    const-string/jumbo v4, " is of type "

    .line 1739
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1740
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1739
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1743
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1745
    new-instance v2, Landroid/view/ViewDebug$10;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$10;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1735
    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1428
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1431
    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1432
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1433
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1426
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    if-eqz p1, :cond_0

    .line 1523
    const-string/jumbo v0, "[EXCEPTION]"

    .line 1525
    .local v0, "output":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1527
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1528
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1521
    .end local v0    # "output":Ljava/lang/String;
    :goto_0
    return-void

    .line 1526
    .restart local v0    # "output":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1527
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1528
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1526
    throw v1

    .line 1532
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
