.class public Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferNanoException.java"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static invalidEndTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string/jumbo v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
