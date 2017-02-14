.class public Lmf/org/apache/xerces/dom/events/EventImpl;
.super Ljava/lang/Object;
.source "EventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/Event;


# instance fields
.field public bubbles:Z

.field public cancelable:Z

.field public currentTarget:Lmf/org/w3c/dom/events/EventTarget;

.field public eventPhase:S

.field public initialized:Z

.field public preventDefault:Z

.field public stopPropagation:Z

.field public target:Lmf/org/w3c/dom/events/EventTarget;

.field protected timeStamp:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->initialized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->bubbles:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->cancelable:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->timeStamp:J

    return-void
.end method


# virtual methods
.method public getBubbles()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->bubbles:Z

    return v0
.end method

.method public getCancelable()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->cancelable:Z

    return v0
.end method

.method public getCurrentTarget()Lmf/org/w3c/dom/events/EventTarget;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->currentTarget:Lmf/org/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getEventPhase()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->eventPhase:S

    return v0
.end method

.method public getTarget()Lmf/org/w3c/dom/events/EventTarget;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->target:Lmf/org/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->timeStamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public initEvent(Ljava/lang/String;ZZ)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    iput-boolean p2, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->bubbles:Z

    iput-boolean p3, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->cancelable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->initialized:Z

    return-void
.end method

.method public preventDefault()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    return-void
.end method

.method public stopPropagation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    return-void
.end method
