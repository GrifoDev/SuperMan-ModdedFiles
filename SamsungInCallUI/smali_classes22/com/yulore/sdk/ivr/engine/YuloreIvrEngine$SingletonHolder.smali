.class Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$SingletonHolder;
.super Ljava/lang/Object;
.source "YuloreIvrEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;-><init>(Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$1;)V

    sput-object v0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$SingletonHolder;->instance:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    .locals 1

    sget-object v0, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine$SingletonHolder;->instance:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    return-object v0
.end method
