.class final Lcom/whitepages/nameid/NameIDHelper$3;
.super Ljava/lang/Object;
.source "NameIDHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/NameIDHelper;->tryReconnect(J)V
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
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    # invokes: Lcom/whitepages/nameid/NameIDHelper;->tryReconnectUntil(J)V
    invoke-static {v0, v1}, Lcom/whitepages/nameid/NameIDHelper;->access$400(J)V

    return-void
.end method
