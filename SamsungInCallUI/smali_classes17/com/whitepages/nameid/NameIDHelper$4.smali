.class final Lcom/whitepages/nameid/NameIDHelper$4;
.super Ljava/lang/Object;
.source "NameIDHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/NameIDHelper;->tryReconnectUntil(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$untilMillis:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    iput-wide p1, p0, Lcom/whitepages/nameid/NameIDHelper$4;->val$untilMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-wide v0, p0, Lcom/whitepages/nameid/NameIDHelper$4;->val$untilMillis:J

    # invokes: Lcom/whitepages/nameid/NameIDHelper;->tryReconnectUntil(J)V
    invoke-static {v0, v1}, Lcom/whitepages/nameid/NameIDHelper;->access$400(J)V

    return-void
.end method
