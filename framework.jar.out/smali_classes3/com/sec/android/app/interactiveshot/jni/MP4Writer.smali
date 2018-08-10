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

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .locals 1

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    invoke-direct {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;-><init>()V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

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
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0xf

    const/16 v6, 0xf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMP4Engine(IILjava/lang/String;IIIII)I

    move-result v10

    return v10
.end method
