.class Lcom/yulore/android/common/pool/ThreadManager$SingtonProxyClass;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/android/common/pool/ThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingtonProxyClass"
.end annotation


# static fields
.field public static instance:Lcom/yulore/android/common/pool/ThreadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yulore/android/common/pool/ThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yulore/android/common/pool/ThreadManager;-><init>(Lcom/yulore/android/common/pool/ThreadManager$1;)V

    sput-object v0, Lcom/yulore/android/common/pool/ThreadManager$SingtonProxyClass;->instance:Lcom/yulore/android/common/pool/ThreadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
