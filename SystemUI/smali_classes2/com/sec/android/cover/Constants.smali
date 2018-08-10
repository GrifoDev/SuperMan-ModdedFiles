.class public Lcom/sec/android/cover/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CALL_VOLUME_6:[I

.field public static final CALL_VOLUME_8:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/cover/Constants;->CALL_VOLUME_6:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/cover/Constants;->CALL_VOLUME_8:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x8
        0xb
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x5
        0x7
        0x9
        0xb
        0xe
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
