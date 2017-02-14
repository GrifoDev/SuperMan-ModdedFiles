.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;
.super Ljava/lang/Object;
.source "LedCoverCallerIDList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->-wrap1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
