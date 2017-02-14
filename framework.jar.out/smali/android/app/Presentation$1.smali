.class Landroid/app/Presentation$1;
.super Ljava/lang/Object;
.source "Presentation.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Presentation;


# direct methods
.method constructor <init>(Landroid/app/Presentation;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-get0(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-wrap0(Landroid/app/Presentation;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-get0(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-wrap1(Landroid/app/Presentation;)V

    :cond_0
    return-void
.end method
