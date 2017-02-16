.class public Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.super Ljava/lang/Object;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;,
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;,
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    invoke-direct {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;-><init>()V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    .line 84
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-object v0
.end method


# virtual methods
.method public native DeInitMP4Engine()I
.end method

.method public native EncodeFrame([B)I
.end method

.method public native InitMP4Engine(IILjava/lang/String;IIIII)I
.end method

.method public InitMp4EngineJava(IILjava/lang/String;IIII)I
    .locals 9

    .prologue
    const/16 v6, 0xf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 95
    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMP4Engine(IILjava/lang/String;IIIII)I

    move-result v0

    .line 96
    return v0
.end method
