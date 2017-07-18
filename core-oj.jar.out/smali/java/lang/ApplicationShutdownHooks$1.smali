.class final Ljava/lang/ApplicationShutdownHooks$1;
.super Ljava/lang/Object;
.source "ApplicationShutdownHooks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ApplicationShutdownHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Ljava/lang/ApplicationShutdownHooks;->runHooks()V

    return-void
.end method
