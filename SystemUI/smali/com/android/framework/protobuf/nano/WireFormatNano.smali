.class public final Lcom/android/framework/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static makeTag(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
