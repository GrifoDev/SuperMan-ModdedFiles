.class public final Landroid/os/SemUEventObserver$SemUEvent;
.super Ljava/lang/Object;
.source "SemUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SemUEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SemUEvent"
.end annotation


# instance fields
.field private mEvent:Landroid/os/UEventObserver$UEvent;

.field final synthetic this$0:Landroid/os/SemUEventObserver;


# direct methods
.method public constructor <init>(Landroid/os/SemUEventObserver;Landroid/os/UEventObserver$UEvent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SemUEventObserver;
    .param p2, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 107
    iput-object p1, p0, Landroid/os/SemUEventObserver$SemUEvent;->this$0:Landroid/os/SemUEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Landroid/os/SemUEventObserver$SemUEvent;->mEvent:Landroid/os/UEventObserver$UEvent;

    .line 107
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/os/SemUEventObserver$SemUEvent;->mEvent:Landroid/os/UEventObserver$UEvent;

    invoke-virtual {v0, p1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/os/SemUEventObserver$SemUEvent;->mEvent:Landroid/os/UEventObserver$UEvent;

    invoke-virtual {v0, p1, p2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/os/SemUEventObserver$SemUEvent;->mEvent:Landroid/os/UEventObserver$UEvent;

    invoke-virtual {v0}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
