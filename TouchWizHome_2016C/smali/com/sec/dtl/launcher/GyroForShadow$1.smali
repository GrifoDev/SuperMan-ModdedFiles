.class final Lcom/sec/dtl/launcher/GyroForShadow$1;
.super Ljava/lang/Thread;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/dtl/launcher/GyroForShadow;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->changeTiltXYRange()V

    return-void
.end method
