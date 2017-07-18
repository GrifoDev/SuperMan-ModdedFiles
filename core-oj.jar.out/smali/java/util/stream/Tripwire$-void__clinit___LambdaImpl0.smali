.class final synthetic Ljava/util/stream/Tripwire$-void__clinit___LambdaImpl0;
.super Ljava/lang/Object;
.source "Tripwire.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Tripwire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__clinit___LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/stream/Tripwire;->-java_util_stream_Tripwire_lambda$1()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
