.class Lcom/samsung/android/directpeninput/SemDirectPenInput$5$2;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/directpeninput/SemDirectPenInput$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$2;->this$1:Lcom/samsung/android/directpeninput/SemDirectPenInput$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$2;->this$1:Lcom/samsung/android/directpeninput/SemDirectPenInput$5;

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    return-void
.end method
