.class public final Lcom/google/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;

.field protected static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneUnknownFieldData(Lcom/google/protobuf/nano/ExtendableMessageNano;Lcom/google/protobuf/nano/ExtendableMessageNano;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    iput-object v0, p1, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    :cond_0
    return-void
.end method
