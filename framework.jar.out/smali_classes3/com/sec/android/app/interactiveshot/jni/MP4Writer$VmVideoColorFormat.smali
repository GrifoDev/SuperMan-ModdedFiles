.class public final enum Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;
.super Ljava/lang/Enum;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VmVideoColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_ARGB:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_NV21:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_RGBA:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_UNSUPPORTED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_YUV420SP_TILED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_YUV420_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_YUV420_SEMI_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;


# instance fields
.field private final mColorFormatValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_UNSUPPORTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_UNSUPPORTED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_YUV420_PLANAR"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_YUV420_SEMI_PLANAR"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420_SEMI_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_YUV420SP_TILED"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420SP_TILED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_ARGB"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_ARGB:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_RGBA"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGBA:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_RGB565"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string/jumbo v1, "VM_COLOR_FORMAT_NV21"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_NV21:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_UNSUPPORTED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420_SEMI_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420SP_TILED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_ARGB:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGBA:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_NV21:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->mColorFormatValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;
    .locals 1

    const-class v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->mColorFormatValue:I

    return v0
.end method
