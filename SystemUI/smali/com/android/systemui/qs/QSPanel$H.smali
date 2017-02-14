.class Lcom/android/systemui/qs/QSPanel$H;
.super Landroid/os/Handler;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Record;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->handleUpdateDetail(Lcom/android/systemui/qs/QSPanel$Record;)V

    goto :goto_1
.end method
