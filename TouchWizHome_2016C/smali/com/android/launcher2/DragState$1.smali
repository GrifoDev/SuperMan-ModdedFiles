.class Lcom/android/launcher2/DragState$1;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragState;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DragState$1;->this$0:Lcom/android/launcher2/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void
.end method
