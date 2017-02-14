.class Ljava/nio/channels/spi/AbstractSelector$1;
.super Ljava/lang/Object;
.source "AbstractSelector.java"

# interfaces
.implements Lsun/nio/ch/Interruptible;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/AbstractSelector;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractSelector;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractSelector;)V
    .locals 0

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt(Ljava/lang/Thread;)V
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
