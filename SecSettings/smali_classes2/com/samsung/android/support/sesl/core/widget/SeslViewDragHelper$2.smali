.class Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$2;
.super Ljava/lang/Object;
.source "SeslViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    return-void
.end method
