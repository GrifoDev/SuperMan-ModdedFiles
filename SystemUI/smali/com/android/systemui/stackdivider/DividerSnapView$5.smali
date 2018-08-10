.class Lcom/android/systemui/stackdivider/DividerSnapView$5;
.super Landroid/database/ContentObserver;
.source "DividerSnapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerSnapView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerSnapView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$5;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView$5;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView$5;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get5(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-wrap3(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView$5;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-wrap1(Lcom/android/systemui/stackdivider/DividerSnapView;Z)V

    return-void
.end method
