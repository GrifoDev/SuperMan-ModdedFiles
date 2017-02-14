.class public final Ljava/nio/ByteOrder;
.super Ljava/lang/Object;
.source "ByteOrder.java"


# static fields
.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/nio/ByteOrder;

    const-string/jumbo v1, "BIG_ENDIAN"

    invoke-direct {v0, v1}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    new-instance v0, Ljava/nio/ByteOrder;

    const-string/jumbo v1, "LITTLE_ENDIAN"

    invoke-direct {v0, v1}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    return-void
.end method

.method public static nativeOrder()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/Bits;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    return-object v0
.end method
