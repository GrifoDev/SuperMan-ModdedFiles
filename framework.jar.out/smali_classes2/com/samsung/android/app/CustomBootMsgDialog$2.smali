.class Lcom/samsung/android/app/CustomBootMsgDialog$2;
.super Ljava/lang/Object;
.source "CustomBootMsgDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/CustomBootMsgDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/CustomBootMsgDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-static {v0}, Lcom/samsung/android/app/CustomBootMsgDialog;->-get2(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-static {v0}, Lcom/samsung/android/app/CustomBootMsgDialog;->-get3(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method
