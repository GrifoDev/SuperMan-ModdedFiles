.class Landroid/widget/TextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/widget/TextClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-get1(Landroid/widget/TextClock;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-wrap0(Landroid/widget/TextClock;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-wrap2(Landroid/widget/TextClock;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-get0(Landroid/widget/TextClock;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TextClock;->-set0(Landroid/widget/TextClock;Z)Z

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-get1(Landroid/widget/TextClock;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-wrap0(Landroid/widget/TextClock;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-wrap2(Landroid/widget/TextClock;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-get0(Landroid/widget/TextClock;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TextClock;->-set0(Landroid/widget/TextClock;Z)Z

    goto :goto_0
.end method
