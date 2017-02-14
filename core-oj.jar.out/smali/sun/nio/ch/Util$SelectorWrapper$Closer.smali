.class Lsun/nio/ch/Util$SelectorWrapper$Closer;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util$SelectorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Closer"
.end annotation


# instance fields
.field private sel:Ljava/nio/channels/Selector;


# direct methods
.method private constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/ch/Util$SelectorWrapper$Closer;->sel:Ljava/nio/channels/Selector;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/channels/Selector;Lsun/nio/ch/Util$SelectorWrapper$Closer;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/nio/ch/Util$SelectorWrapper$Closer;-><init>(Ljava/nio/channels/Selector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/Util$SelectorWrapper$Closer;->sel:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
