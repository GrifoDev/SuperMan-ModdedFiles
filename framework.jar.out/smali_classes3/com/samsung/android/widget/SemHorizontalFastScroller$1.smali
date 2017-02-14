.class Lcom/samsung/android/widget/SemHorizontalFastScroller$1;
.super Ljava/lang/Object;
.source "SemHorizontalFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemHorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;->this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;->this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->-wrap0(Lcom/samsung/android/widget/SemHorizontalFastScroller;I)V

    return-void
.end method
