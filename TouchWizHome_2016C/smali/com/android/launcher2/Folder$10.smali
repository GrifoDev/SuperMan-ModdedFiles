.class Lcom/android/launcher2/Folder$10;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110045

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
