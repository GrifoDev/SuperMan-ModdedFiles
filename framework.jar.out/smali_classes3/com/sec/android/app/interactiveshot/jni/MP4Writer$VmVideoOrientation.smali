.class public final enum Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;
.super Ljava/lang/Enum;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VmVideoOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_REVERSE_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_REVERSE_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;


# instance fields
.field private final mOrientationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const-string/jumbo v1, "VM_ORIENTATION_LANDSCAPE"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const-string/jumbo v1, "VM_ORIENTATION_PORTRAIT"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const-string/jumbo v1, "VM_ORIENTATION_REVERSE_LANDSCAPE"

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const-string/jumbo v1, "VM_ORIENTATION_REVERSE_PORTRAIT"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->mOrientationValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;
    .locals 1

    const-class v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->mOrientationValue:I

    return v0
.end method
