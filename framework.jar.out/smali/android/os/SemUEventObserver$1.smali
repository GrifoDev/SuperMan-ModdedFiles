.class Landroid/os/SemUEventObserver$1;
.super Landroid/os/UEventObserver;
.source "SemUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SemUEventObserver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/SemUEventObserver;


# direct methods
.method constructor <init>(Landroid/os/SemUEventObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/os/SemUEventObserver$1;->this$0:Landroid/os/SemUEventObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    iget-object v0, p0, Landroid/os/SemUEventObserver$1;->this$0:Landroid/os/SemUEventObserver;

    new-instance v1, Landroid/os/SemUEventObserver$SemUEvent;

    iget-object v2, p0, Landroid/os/SemUEventObserver$1;->this$0:Landroid/os/SemUEventObserver;

    invoke-direct {v1, v2, p1}, Landroid/os/SemUEventObserver$SemUEvent;-><init>(Landroid/os/SemUEventObserver;Landroid/os/UEventObserver$UEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/SemUEventObserver;->onSemUEvent(Landroid/os/SemUEventObserver$SemUEvent;)V

    return-void
.end method
