.class Lcom/samsung/android/app/CustomBootMsgDialog$2$1;
.super Ljava/lang/Object;
.source "CustomBootMsgDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/CustomBootMsgDialog$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/CustomBootMsgDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v0, v0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/CustomBootMsgDialog;->-set1(Lcom/samsung/android/app/CustomBootMsgDialog;J)J

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v0, v0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/CustomBootMsgDialog;->-set0(Lcom/samsung/android/app/CustomBootMsgDialog;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v0, v0, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-static {v0}, Lcom/samsung/android/app/CustomBootMsgDialog;->-get2(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog$2$1;->this$1:Lcom/samsung/android/app/CustomBootMsgDialog$2;

    iget-object v1, v1, Lcom/samsung/android/app/CustomBootMsgDialog$2;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-static {v1}, Lcom/samsung/android/app/CustomBootMsgDialog;->-get0(Lcom/samsung/android/app/CustomBootMsgDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
