.class public Landroid/hardware/SecExternalDisplayJNIInterface;
.super Ljava/lang/Object;
.source "SecExternalDisplayJNIInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecExternalDisplay_Java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SecExternalDisplay_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SecExternalDisplay_Java"

    const-string/jumbo v1, "SecExternalDisplayJNIInterface +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_native_setup()V

    return-void
.end method

.method private native _SecExternalDisplayBlankDisplay(I)Z
.end method

.method private native _SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
.end method

.method private native _SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
.end method

.method private native _SecExternalDisplayGet3DMode()I
.end method

.method private native _SecExternalDisplayGetResolution()I
.end method

.method private native _SecExternalDisplayGetStatus(I)Z
.end method

.method private native _SecExternalDisplayRegisterEVF(Z)I
.end method

.method private native _SecExternalDisplaySet3DMode(I)I
.end method

.method private native _SecExternalDisplaySetExternalUITransform(I)Z
.end method

.method private native _SecExternalDisplaySetForceMirrorMode(Z)Z
.end method

.method private native _SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
.end method

.method private native _SecExternalDisplaySetOutputMode(I)Z
.end method

.method private native _SecExternalDisplaySetPause(Z)Z
.end method

.method private native _SecExternalDisplaySetResolution(I)Z
.end method

.method private native _SecExternalDisplaySetStatus(IZ)Z
.end method

.method private native _SecExternalDisplayStartStopVFBThread(IIZ)Z
.end method

.method private native _SecExternalDisplayType(Z)Z
.end method

.method private final native _native_setup()V
.end method

.method private final native _release()V
.end method


# virtual methods
.method public SecExternalDisplayBlankDisplay(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayBlankDisplay(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGet3DMode()I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayGet3DMode()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetResolution()I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayGetResolution()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetResolution(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayStartStopVFBThread(IIZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayStartStopVFBThread(IIZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayType(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayType(Z)Z

    move-result v0

    return v0
.end method
