.class public Lcom/sec/ims/volte2/data/ImsCallInfo$BearerState;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/ImsCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BearerState"
.end annotation


# static fields
.field public static final BEARER_STATE_CLOSED:I = 0x3

.field public static final BEARER_STATE_ESTABLISHED:I = 0x1

.field public static final BEARER_STATE_MODIFIED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
