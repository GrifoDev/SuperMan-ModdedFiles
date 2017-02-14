.class public final enum Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
.super Ljava/lang/Enum;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VmVideoQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

.field public static final enum VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

.field public static final enum VM_QUALITY_LOW:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

.field public static final enum VM_QUALITY_MEDIUM:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;


# instance fields
.field private final mQualityValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const-string/jumbo v1, "VM_QUALITY_HIGH"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const-string/jumbo v1, "VM_QUALITY_MEDIUM"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_MEDIUM:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const-string/jumbo v1, "VM_QUALITY_LOW"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_LOW:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_MEDIUM:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_LOW:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->mQualityValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
    .locals 1

    const-class v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->mQualityValue:I

    return v0
.end method
